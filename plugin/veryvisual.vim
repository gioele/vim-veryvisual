" Use GVim instead of Vim, if that is possible
" Maintainer: Gioele Barabucci
" License:    This is free software released into the public domain (CC0 license).

" FIXME: what about vim over SSH? $DISPLAY retained?
let x11_is_running = !empty($DISPLAY)
let is_text_vim = !has('gui_running')

if x11_is_running && is_text_vim
	" FIXME: find a better way to remove newline/zero chars
	let ppid = system('ps -p ' . getpid() . ' -o ppid=')[:-2]
	let parent = system('ps -p ' . ppid . ' -o comm=')[:-2]

	" opts will be used for the extra options we want to pass
	let opts = ''

	" do not fork if we have not been called in an interactive shell
	let is_interactive = (parent == 'bash')
	if !is_interactive
		let opts = '--nofork'
	end

	" call gvim instead of vim, using the original options plus ours
	let args = join(map(range(0, argc()-1), 'shellescape(argv(v:val))'), ' ')
	call system('gvim ' . args . ' ' . opts)

	" let this instance die
	qall
endif
