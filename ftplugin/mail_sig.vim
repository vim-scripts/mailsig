" Signature insertion plugin
" When editing a mail message, :Sign provides you with a list of signatures.
" It then allows you to select a signature to place at the bottom of your
" e-mail

" TODO: more documentation
" 	test in GVim, on Windows, etc.

com! Sign call SignMessage()

func! SignMessage()
	normal G
	let s:tempt = @t
	let @t = "\n-- \n"
	put t
	normal G
	echo system("getsig -h")
	let signum = input("Which signature? ")
	let sig = system("getsig -s " . signum)
	put =sig
	exe "normal ?^-- $\<CR>jgq$"
endf
