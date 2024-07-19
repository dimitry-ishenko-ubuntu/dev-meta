:command -nargs=* CMake set makeprg=cmake|make <args>|set makeprg&
Alias cmake CMake

nnoremap <leader>mb :CMake --build build
nnoremap <leader>md :CMake -B build -DCMAKE_BUILD_TYPE=Debug
nnoremap <leader>mg :CMake -B build
nnoremap <leader>mr :CMake -B build -DCMAKE_BUILD_TYPE=Release
nnoremap <leader>mx :CMake -E rm -rf build

packadd termdebug
Alias gdb Termdebug

highlight debugBreakpoint ctermbg=NONE ctermfg=red

" <f4> <s-f4> <c-f4>
nnoremap <f4>  :Gdb<cr>
nnoremap <f16> :Source<cr>
nnoremap <f28> :Program<cr>

" <f5> <s-f5> <c-f5>
nnoremap <f5>  :Run<cr>
nnoremap <f17> :Stop<cr>
nnoremap <f29> :Cont<cr>

nnoremap <silent><f6> :Termdebug<cr><esc><esc>:Source<cr>:wincmd L<cr>:Gdb<cr>

" <f9> <s-f9>
nnoremap <f9>  :Break<cr>
nnoremap <f21> :Clear<cr>

" <f10> <c-f10>
nnoremap <f10> :Over<cr>
nnoremap <f34> :Until<cr>

" <f11> <s-f11>
nnoremap <f11> :Step<cr>
nnoremap <f23> :Finish<cr>
