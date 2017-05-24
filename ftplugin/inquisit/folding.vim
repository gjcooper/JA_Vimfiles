function! InquisitLevel(elements)
    " elements: 0 or 1
    if getline(v:lnum) =~ '^# .*$'
        return ">1"
    endif
    if a:elements && getline(v:lnum) =~ '^<[a-zA-Z].*$'
        return ">2"
    endif
    return "=" 
endfunction                  
setlocal foldexpr=InquisitLevel(1)
setlocal foldmethod=expr
