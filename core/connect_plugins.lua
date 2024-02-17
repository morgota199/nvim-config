local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	{
    		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v3.x",
    		dependencies = {
      			"nvim-lua/plenary.nvim",
      			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker"
      			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    		}
	},
	{"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
	{"williamboman/mason.nvim", build = ":MasonUpdate"},
	{
  		"okuuva/auto-save.nvim",
  		cmd = "ASToggle", -- optional for lazy loading on command
  		event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  		opts = {
    			-- your config goes here
    			-- or just leave it empty :)
  		},
	},
})
