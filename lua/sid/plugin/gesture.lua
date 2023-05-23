vim.opt.mouse = "a"

vim.keymap.set("n", "<LeftMouse>", [[<Nop>]])
vim.keymap.set("n", "<LeftDrag>", [[<Cmd>lua require("gesture").draw()<CR>]], { silent = true })
vim.keymap.set("n", "<LeftRelease>", [[<Cmd>lua require("gesture").finish()<CR>]], { silent = true })

local gesture = require("gesture")
gesture.register({
	name = "scroll to bottom",
	inputs = { gesture.up(), gesture.down() },
	action = "normal! G",
})

gesture.register({
	name = "next buffer",
	inputs = { gesture.right() },
	action = "bnext"
})
gesture.register({
	name = "previous buffer",
	inputs = { gesture.left() },
	action = "bprevious"
})

gesture.register({
	name = "split",
	inputs = { gesture.up(), gesture.down() },
	action = "split"
})

gesture.register({
	name = "vsplit",
	inputs = { gesture.right(), gesture.left() },
	action = "vsplit"
})
