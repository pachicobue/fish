set ALGOLIB_PATH $HOME/programming/contest/algolib
set ACL_PATH     $HOME/programming/contest/ac-library

function dg++
    set library_paths $ALGOLIB_PATH/src $ACL_PATH
    set source_name $argv[1]
    set binary_name (string replace -r '(.*)\.cpp' '$1.exe' $source_name)
    command g++ -Wall -Wextra -Wno-stringop-overflow -O0 -g3 -std=c++17 -fsanitize=undefined -D_GLIBCXX_DEBUG -DHOGEPACHI -I$library_paths[1] -I$library_paths[2] $source_name -o $binary_name
end

function fg++
    set library_paths $ALGOLIB_PATH/src $ACL_PATH
    set source_name $argv[1]
    set binary_name (string replace -r '(.*)\.cpp' '$1.exe' $source_name)
    command g++ -Wall -Wextra -Wno-stringop-overflow -Ofast -std=c++17 -DHOGEPACHI -I$library_paths[1] -I$library_paths[2] $source_name -o $binary_name
end

function dgch
    set library_paths $ALGOLIB_PATH/src $ACL_PATH
    set source_name $argv[1]
    set binary_name $source_name.dg++.gch
    command g++ -Wall -Wextra -Wno-stringop-overflow -O0 -g3 -std=c++17 -fsanitize=undefined -D_GLIBCXX_DEBUG -DHOGEPACHI -I$library_paths[1] -I$library_paths[2] $source_name -o $binary_name
end

function fgch
    set library_paths $ALGOLIB_PATH/src $ACL_PATH
    set source_name $argv[1]
    set binary_name $source_name.fg++.gch
    command g++ -Wall -Wextra -Wno-stringop-overflow -Ofast -std=c++17 -DHOGEPACHI -I$library_paths[1] -I$library_paths[2] $source_name -o $binary_name
end
