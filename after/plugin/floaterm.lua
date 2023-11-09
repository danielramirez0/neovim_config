-- Open Floaterm Bottom
vim.keymap.set("n", "<leader>fb", ":FloatermNew --position=bottom --height=0.4 --width=1.0 --name=tb1 --title=tb1 --autoclose=0 --wintype=float bash -l<CR>")
-- Toggle last Floaterm (if no existing, will open with no profile).
vim.keymap.set("n", "<leader>ft", ":FloatermToggle<CR>")
-- More things here

