hugo convert toJSON -o ./temp

$posts = Get-ChildItem -Path ./temp/content/posts/* -Recurse -Include *.md -Exclude _index.md,search.md

foreach ($post in $posts) {
    $content = Get-Content -Path $post.FullName

    # Read json from beginning of file
    $index = 0
    $json = ""
    while ($index -lt $content.Length) {
        $line = $content[$index]
        $json += $line
        $index++

        if ($line -eq "}") {
            break
        }
    }

    $body = $content[$index..($content.Length - 1)]

    $metadata = $json | ConvertFrom-Json

    # Remove properties no longer used
    $metadata.PSObject.Properties.Remove("hero")
    $metadata.PSObject.Properties.Remove("image")

    # Rebuild menu item
    $metadata.PSObject.Properties.Remove("menu")

    $menu = @{
        sidebar = @{
            name       = $metadata.title
            identifier = $metadata.slug
            parent     = $metadata.date.ToString('yyyy/MM')
            weight     = [int]$metadata.date.ToString('yyyyMM')
        }
    }
    $metadata | Add-Member -Name 'menu' -Type NoteProperty -Value $menu

    $path = "./content/posts/$($metadata.date.ToString('yyyy/MM'))"
    $imagesPath = Join-Path $path $metadata.slug "images"
    $mdPath = Join-Path $path $metadata.slug "index.md"

    # Make sure the directory exists
    if (-not (Test-Path $imagesPath -PathType Container)) {
        New-Item -Path $imagesPath -ItemType Directory
    }

    # Delete left over index and images directory
    if (Test-Path (Join-Path $path index) -PathType Container) {
        Remove-Item -Recurse -Force (Join-Path $path index)
    }
    if (Test-Path (Join-Path $path images) -PathType Container) {
        Remove-Item -Recurse -Force (Join-Path $path images)
    }

    # Generate menu item for year
    @{
        menu = @{
            sidebar = @{
                name       = $metadata.date.ToString('yyyy')
                identifier = $metadata.date.ToString('yyyy')
                weight     = 1000 - [int]$metadata.date.ToString('yyyy')
            }
        }
    } | ConvertTo-Json | Out-File "./content/posts/$($metadata.date.ToString('yyyy'))/_index.md"

    # Generate menu item for month
    @{
        menu = @{
            sidebar = @{
                name       = $metadata.date.ToString('MMMM')
                identifier = $metadata.date.ToString('yyyy/MM')
                parent     = $metadata.date.ToString('yyyy')
                weight     = 12 - [int]$metadata.date.ToString('MM')
            }
        }
    } | ConvertTo-Json | Out-File "./content/posts/$($metadata.date.ToString('yyyy/MM'))/_index.md"

    # Process images
    $imagePattern = [Regex]::new('(?i)(?<image>/images/.*?(\.png|\.jpg|\.gif))')
    for ($lineNumber = 0; $lineNumber -lt $body.Length; ++$lineNumber) {
        $match = $imagePattern.Matches($body[$lineNumber])
        foreach ($m in $match) {
            $path = $m.Groups['image'].Value
            $sourcePath = Join-Path "./static" $path

            if (Test-Path $sourcePath) {
                # Copy the image to the new location
                $image = Get-Item -Path $sourcePath
                $destinationPath = Join-Path $imagesPath $image.Name
                Copy-Item -Path $image.FullName -Destination $destinationPath

                # Change the path
                $body[$lineNumber] = $body[$lineNumber].Replace($path, "images/$($image.Name)")
            }
        }
    }

    $metadata | ConvertTo-Json | Out-File $mdPath -Force
    $body | Add-Content -Path $mdPath
}

Remove-Item -Recurse -Force ./temp