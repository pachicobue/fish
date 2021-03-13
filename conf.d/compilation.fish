set ALGOLIB_PATH '/home/sho/programming/algolib'

function dg++
    set library_path $ALGOLIB_PATH
    set source_path '${library_path}/src'
    set source_name $argv[1]
    set binary_name (string replace -r '(.*)\.cpp' '$1.exe' $source_name)
    command g++ -O0 -g3 -std=c++17 -fsanitize=undefined -D_GLIBCXX_DEBUG -DHOGEPACHI -lpthread -I$source_path $source_name -o $binary_name
end

function fg++
    set library_path $ALGOLIB_PATH
    set source_path '${library_path}/src'
    set source_name $argv[1]
    set binary_name (string replace -r '(.*)\.cpp' '$1.exe' $source_name)
    command g++ -Ofast -std=c++17 -DHOGEPACHI -lpthread -I$source_path $source_name -o $binary_name
end
