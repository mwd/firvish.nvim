if exists("b:firvish_history")
  finish
endif

nmap <buffer> <silent> <enter> :lua require'firvish.history'.open_file()<CR>
nmap <buffer> <silent> gq :lua require'firvish.history'.close_history()<CR>
nmap <buffer> <silent> <s-R> :lua require'firvish.history'.refresh_history()<CR>

nmap <buffer> <silent> a <cmd>call firvish#open_file_under_cursor("", v:true, v:false, v:true)<CR>
nmap <buffer> <silent> o <cmd>call firvish#open_file_under_cursor("", v:true, v:false, v:false)<CR>

nmap <buffer> <silent> <C-N> <cmd>call firvish#open_file_under_cursor("down", v:true, v:true, v:true)<CR>
nmap <buffer> <silent> <C-P> <cmd>call firvish#open_file_under_cursor("up", v:true, v:true, v:true)<CR>

let b:firvish_history = 1
