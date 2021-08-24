" let g:autoformat_autoindent = 0
" let g:autoformat_retab = 0
" let g:autoformat_remove_trailing_spaces = 0
"
" https://github.com/Chiel92/vim-autoformat/issues/236
" This is for umbrella applications.
" Try to find the closest '.formatter.exs' to the file currently being edited.
" If we find one, then pass that as context to the `mix format` command.
" Withouth this the `mix format -` has no context for the formatting so and
" cannot apply local project rules.
function! g:BuildMixFormatLocalCmd()
  let l:format_file = findfile('.formatter.exs', '.;')
  if format_file != ''
    return 'mix format --dot-formatter ' . format_file . ' -'
  else
    return 'mix format -'
  endif
endfunction
let g:formatdef_mix_format = "g:BuildMixFormatLocalCmd()"
