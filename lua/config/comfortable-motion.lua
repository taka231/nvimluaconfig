vim.g.comfortable_motion_interval = 2400.0 / 60
vim.g.comfortable_motion_friction = 100.0
vim.g.comfortable_motion_air_drag = 3.0
vim.g.comfortable_motion_impulse_multiplier = 1
vim.keymap.set("n", "<C-d>", ":call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", ":call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-f>", ":call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-b>", ":call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>", { noremap = true, silent = true })
