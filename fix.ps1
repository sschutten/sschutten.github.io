hugo convert toJSON -o ./temp

$posts = Get-ChildItem -Path ./temp/content/posts/* -Include *.md -Exclude _index.md

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

    $path = "./content/posts/$($metadata.date.ToString('yyyy/MM'))"
    $imagesPath = Join-Path $path $post.BaseName "images"
    $mdPath = Join-Path $path $post.BaseName "index.md"

    # Make sure the directory exists
    if (-not (Test-Path $imagesPath -PathType Container)) {
        New-Item -Path $imagesPath -ItemType Directory
    }

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