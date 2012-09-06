" Name: FixCSS.vim
" Maintainer: Daniel Bolton <https://github.com/dbb>
" Version: 0.1
" Last Change: 18 Aug 2011
" Modified: allenm <https://github.com/allenm>
function! FixCSS()
    let pos = line( "." )
    silent :%s/{/{\r    /g
    silent :%s/;\s*\n*\s*/;\r    /g
    silent :%s/\s*}/}\r/g
    exe pos
endfunction
command! Fixcss call FixCSS()

