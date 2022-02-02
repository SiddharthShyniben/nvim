-- TODO convert to lua

vim.api.nvim_exec([[
	function! Prose()
		echom 'Prose'
		call pencil#init()
		call lexical#init()
		call litecorrect#init()
		call textobj#quote#init()
		call textobj#sentence#init()
		execute DittoOn

		" manual reformatting shortcuts
		nnoremap <buffer> <silent> Q gqap
		xnoremap <buffer> <silent> Q gq
		nnoremap <buffer> <silent> <leader>Q vapJgqap

		" force top correction on most recent misspelling
		nnoremap <buffer> <c-s> [s1z=<c-o>
		inoremap <buffer> <c-s> <c-g>u<Esc>[s1z=`]A<c-g>u

		" replace common punctuation
		iabbrev <buffer> -- –
		iabbrev <buffer> --- —
		iabbrev <buffer> << «
		iabbrev <buffer> >> »

		" open most folds
		setlocal foldlevel=6

		" replace typographical quotes (reedes/vim-textobj-quote)
		map <silent> <buffer> <leader>qc <Plug>ReplaceWithCurly
		map <silent> <buffer> <leader>qs <Plug>ReplaceWithStraight

		" highlight words (reedes/vim-wordy)
		noremap <silent> <buffer> <leader>w :<C-u>NextWordy<cr>
		xnoremap <silent> <buffer> <leader>w :<C-u>NextWordy<cr>
		inoremap <silent> <buffer> <leader>w <C-o>:NextWordy<cr>
	endfunction

	" automatically initialize buffer by file type
	autocmd FileType markdown,mkd,text call Prose()

	" invoke manually by command for other file types
	command! -nargs=0 Prose call Prose()
]], true)
