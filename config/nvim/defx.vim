call defx#custom#option('_', {
  \ 'winwidth': 30,
  \ 'split': 'vertical',
  \ 'show_ignored_files': 0,
  \ 'buffer_name': 'defxplorer',
  \ 'toggle': 1,
  \ 'resume': 1,
  \ 'direction': 'botright'
  \})


autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  " open file
  nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
  " tree
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_or_close_tree')
  " toggle hide file
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  " redraw
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('redraw')
  " hjkl
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open')
endfunction
