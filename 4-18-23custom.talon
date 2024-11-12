-
click: mouse_click(0)
stop: 
	user.mouse_drag_end()
	key(escape)
junk: key(backspace)

#mouse guide
yoke: user.mouse_cardinal_move_1d('up', 10)
sink: user.mouse_cardinal_move_1d('down', 10)
lop: user.mouse_cardinal_move_1d('left', 10)
jig: user.mouse_cardinal_move_1d('right', 10)

nip: user.mouse_scroll_down()
flip: user.mouse_scroll_up()

#kj grid customizations
shock: 
	mouse_click(0)
	user.grid_close()
	user.full_grid_close()
sling: 
	mouse_click(0)
	user.grid_reset()
reset: user.grid_reset()

#hover
hover seven: mouse_move(240,150)

hover eight: mouse_move(720,150)

hover nine: mouse_move(1200,150)

hover for | hover four: mouse_move(240,450)

hover five: mouse_move(720,450)

hover six: mouse_move(1200,450)

hover one: mouse_move(240,750)

hover to | hover two: mouse_move(720,750)

hover three: mouse_move(1200,750)

center: 
	mouse_move(720,450)
	mouse_click(0)
	
key(f5): speech.enable()
key(f7): speech.disable()

strum: 
	edit.page_down()
	sleep(500ms)
	user.mouse_scroll_up()
	user.mouse_scroll_up()

scar: key(capslock)

shake: key(command-tab)

hang: key(f8)

fire:
	#user.full_grid_close()
    user.full_grid_select_screen(1)
	
drop: user.full_grid_close()

insert gmail: insert("ethanwolin340@gmail.com")

sleeper: speech.disable()

scroll: user.mouse_scroll_down()
rise: user.mouse_scroll_up()

mid click: 
	mouse_click(2)
    # close the mouse grid
    user.grid_close()
	sleep(100ms)
	key(ctrl-tab)

