vim.opt.mouse = "a"

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
	name = "go back",
	inputs = { gesture.right(), gesture.left() },
	-- map to `<C-o>` keycode
	action = function()
		vim.api.nvim_feedkeys(vim.keycode("<C-o>"), "n", true)
	end,
})

