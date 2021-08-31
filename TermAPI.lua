local term = {}
do
	term.cursor = {}
	function term.cursor.up(num)
		io.write(('\x1b[%dA'):format(num))
	end
	function term.cursor.down(num)
		io.write(('\x1b[%dB'):format(num))
	end
	function term.cursor.forward(num)
		io.write(('\x1b[%dC'):format(num))
	end
	function term.cursor.back(num)
		io.write(('\x1b[%dD'):format(num))
	end
	function term.cursor.cols(num)
		io.write(('\x1b[%dG'):format(num))
	end
	function term.cursor.lines(num)
		io.write(('\x1b[%dd'):format(num))
	end
	function term.cursor.pos(num,nu2)
		io.write(('\x1b[%d;%dH'):format(num,nu2))
	end
	function term.cursor.save()
		io.write(('\x1b[s'):format())
	end
	function term.cursor.load()
		io.write(('\x1b[u'):format())
	end
	function term.cursor.blink(num)
		io.write(('\x1b[?12%s'):format(num and 'h' or 'l'))
	end
	function term.cursor.seen(num)
		io.write(('\x1b[?25%s'):format(num and 'h' or 'l'))
	end
end
do
	term.scroll = {}
	function term.scroll.up(num)
		io.write(('\x1b[%dS'):format(num))
	end
	function term.scroll.down(num)
		io.write(('\x1b[%dT'):format(num))
	end
	function term.scroll.screen(num,nu2)
		io.write(('\x1b[%d;%dr'):format(num,nu2))		
	end
end
do
	term.text = {}
	function term.text.ins_space(num)
		io.write(('\x1b[%d@'):format(num))
	end
	function term.text.del_space(num)
		io.write(('\x1b[%dP'):format(num))
	end
	function term.text.ers_space(num)
		io.write(('\x1b[%dX'):format(num))
	end
	function term.text.ins_lines(num)
		io.write(('\x1b[%dL'):format(num))
	end
	function term.text.del_lines(num)
		io.write(('\x1b[%dM'):format(num))
	end
	function term.text.fore_color(num,nu2,nu3)
		io.write(('\x1b[38;2;%d;%d;%dm'):format(num,nu2,nu3))
	end
	function term.text.back_color(num,nu2,nu3)
		io.write(('\x1b[48;2;%d;%d;%dm'):format(num,nu2,nu3))
	end
	function term.text.underline(num)
		io.write(('\x1b[%dm'):format(num and 4 or 24))
	end
end
do
	term.tab = {}
	function term.tab.set()
		io.write(('\x1bH'):format())
	end
	function term.tab.reset()
		io.write(('\x1b[0g'):format())
	end
	function term.tab.clear()
		io.write(('\x1b[3g'):format())
	end
	function term.tab.forward(num)
		io.write(('\x1b[%dI'):format(num))
	end
	function term.tab.back(num)
		io.write(('\x1b[%dZ'):format(num))
	end
end
return term