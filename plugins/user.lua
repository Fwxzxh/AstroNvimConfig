return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
    {
      "catppuccin/nvim",
      name = "catppuccin",
      config = function()
        require("catppuccin").setup {
          flavor = "Mocha",
          styles = { 
            functions = { "bold" }
          },
          color_overrides = { 
          },
          integrations = {
            treesitter = true,
            semantic_tokens = true,
          },
          custom_highlights = function(colors)
            return {
              ["@variable"] = { fg = colors.flamingo },
              ["@module"] = { fg = "#F28773" },
            }
          end,
      }
      end,
    },
    {
      "navarasu/onedark.nvim",
      name = "onedark",
      config = function()
        require("onedark").setup {
        style = "darker",
        colros = { 
          salmon = "#F28773",
        },
        highlights = { 
          ["@variable"] = { fg = "#F28790" }
        },
      }
      end,
    },
}
