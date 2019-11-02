@echo off
function calculate_area_of_triangles{
    
    Write-Host "The area for a triangle with base: $i and height: $j is: " $(($i*$j/2))
}

    #using for loops to repeat the function for each base and each height in powershell
    for ( $i = 1; $i -lt 101; $i++ ) {
        for ( $j = 1; $j -lt 10; $j++) {
            calculate_area_of_triangles -i $i -j $j
        }
    }