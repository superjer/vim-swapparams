" vim-swapparams - Swap parameters forward or back
" Maintainer:   Jer Wilson <superjer@superjer.com>
" URL:          https://github.com/superjer/vim-swapparams
" Version:      0.1
"
" License:
" Copyright Jer Wilson. Distributed under the same terms as Vim itself.
" See :help license
"
" Installation:
" Put this file in your ~/.vim/plugin dir or, if you use a bundler, clone
" https://github.com/superjer/vim-swapparams to your bundles dir.
"
" Description:

if exists("g:loaded_swapparams")
  finish
endif
let g:loaded_swapparams = 1

function! SwapParams(direction)
  let origsearch = @/
  let line = line('.')
  let col = col('.')
  if a:direction == 'left'
    s/\v(^|[[(,])(\s*)([^][(),]+),(\s*)([^]),]*%#[^]),]*)/\1\2\5,\4\3/e
  else
    s/\v(^|[[(,])(\s*)([^][(),]*%#[^][(),]*),(\s*)([^]),]+)/\1\2\5,\4\3/e
  endif
  cal cursor(line,col)
  let @/ = origsearch
endfunction

nnoremap gs :cal SwapParams('right')<CR>
nnoremap gb :cal SwapParams('left')<CR>

