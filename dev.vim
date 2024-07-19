:command -nargs=* CMake set makeprg=cmake|make <args>|set makeprg&
Alias cmake CMake

nmap <leader>mb :CMake --build build
nmap <leader>md :CMake -B build -DCMAKE_BUILD_TYPE=Debug
nmap <leader>mg :CMake -B build
nmap <leader>mr :CMake -B build -DCMAKE_BUILD_TYPE=Release
nmap <leader>mx :CMake -E rm -rf build

packadd termdebug
Alias gdb Termdebug

highlight debugBreakpoint ctermbg=NONE ctermfg=red

" f4 <s>f4 <c>f4
nmap <f4>  :Gdb<cr>
nmap <f16> :Source<cr>
nmap <f28> :Program<cr>

" f5 <s>f5 <c>f5
nmap <f5>  :Run<cr>
nmap <f17> :Stop<cr>
nmap <f29> :Cont<cr>

nmap <silent><f6> :Termdebug<cr><esc><esc>:Source<cr>:wincmd L<cr>:Gdb<cr>

" f9 <s>f9
nmap <f9>  :Break<cr>
nmap <f21> :Clear<cr>

" f10 <c>f10
nmap <f10> :Over<cr>
nmap <f34> :Until<cr>

" f11 <s>f11
nmap <f11> :Step<cr>
nmap <f23> :Finish<cr>
