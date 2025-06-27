local foldIcon = ""
local hlgroup = "NonText"
local function foldTextFormatter(virtText, lnum, endLnum, width, truncate)
	local newVirtText = {}
	local suffix = "  " .. foldIcon .. "  " .. tostring(endLnum - lnum)
	local sufWidth = vim.fn.strdisplaywidth(suffix)
	local targetWidth = width - sufWidth
	local curWidth = 0
	for _, chunk in ipairs(virtText) do
		local chunkText = chunk[1]
		local chunkWidth = vim.fn.strdisplaywidth(chunkText)
		if targetWidth > curWidth + chunkWidth then
			table.insert(newVirtText, chunk)
		else
			chunkText = truncate(chunkText, targetWidth - curWidth)
			local hlGroup = chunk[2]
			table.insert(newVirtText, { chunkText, hlGroup })
			chunkWidth = vim.fn.strdisplaywidth(chunkText)
			if curWidth + chunkWidth < targetWidth then
				suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
			end
			break
		end
		curWidth = curWidth + chunkWidth
	end
	table.insert(newVirtText, { suffix, hlgroup })
	return newVirtText
end

return {
  {
		"chrisgrieser/nvim-origami",
		event = "BufReadPost", -- later will not save folds
    opts = {
      keepFoldsAcrossSessions = true,
      pauseFoldsOnSearch = false,
      setupFoldKeymaps = true,
    }
	},
  -- {
  --   "kevinhwang91/nvim-ufo",
  --   dependencies = {
  --     "kevinhwang91/promise-async",
  --   },
  --   event = "BufReadPost",
  --   init = function()
  --     vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
  --     vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
  --     vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds)
  --     vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
  --     vim.keymap.set('n', '<leader>k', require('ufo').peekFoldedLinesUnderCursor)
  --   end,
  --   opts = {
  --     provider_selector = function(_, ft, _)
  --       -- INFO some filetypes only allow indent, some only LSP, some only
  --       -- treesitter. However, ufo only accepts two kinds as priority,
  --       -- therefore making this function necessary :/
  --       local lspWithOutFolding = { "markdown", "sh", "css", "html", "python" }
  --       if vim.tbl_contains(lspWithOutFolding, ft) then return { "treesitter", "indent" } end
  --       return { "lsp", "indent" }
  --     end,
  --     -- open opening the buffer, close these fold kinds
  --     -- use `:UfoInspect` to get available fold kinds from the LSP
  --     -- close_fold_kinds = { "imports", "comment" },
  --     open_fold_hl_timeout = 150,
  --     preview = {
  --       win_config = {
  --           border = {'', '─', '', '', '', '─', '', ''},
  --           winhighlight = 'Normal:Folded',
  --           winblend = 0
  --       },
  --       mappings = {
  --           scrollU = '<C-u>',
  --           scrollD = '<C-d>',
  --           jumpTop = '[',
  --           jumpBot = ']'
  --       }
  --     },
  --     fold_virt_text_handler = foldTextFormatter,
  --   },
  -- }
}
