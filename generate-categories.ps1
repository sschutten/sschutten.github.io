$years = Get-ChildItem -Path ./content/posts -Directory

foreach ($year in $years) {
    # Generate menu item for year
    @{
        menu = @{
            sidebar = @{
                name       = $year.BaseName
                identifier = $year.BaseName
                weight     = 10000 - [int]$year.BaseName
            }
        }
    } | ConvertTo-Json | Out-File "$($year.FullName)/_index.md"

    $months = Get-ChildItem -Path $year.FullName -Directory

    foreach ($month in $months) {
        $date = Get-Date -Year ([int]$year.BaseName) -Month ([int]$month.BaseName) -Day 1

        # Generate menu item for month
        @{
            menu = @{
                sidebar = @{
                    name       = $date.ToString('MMMM')
                    identifier = $date.ToString('yyyy/MM')
                    parent     = $date.ToString('yyyy')
                    weight     = 12 - $date.Month
                }
            }
        } | ConvertTo-Json | Out-File "$($month.FullName)/_index.md"
    }
}