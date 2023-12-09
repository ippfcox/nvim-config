# nvim-config

self-using nvim-config

learning!

## keybindings

`+` means combination keys, `-` means sequese keys

Common

- Normal <Space>-w (:w-<CR>) Write File
- Normal <Space>-q (:q-<CR>) Quit a Window

Terminal

- Terminal <Esc> (<Ctrl>+\-<Ctrl+n>) Terminal to Normal
- Normal <Space>-`-` (:ToggleTerm direction=horizontal-<CR>) Toggle a Horizontal Terminal
- Normal <Space>-<Esc>-<Esc> (:ToggleTerm direction=horizontal-<CR>) Toggle a Horizontal Terminal
- Normal <Space>-`-f (:ToggleTerm direction=float-<CR>) Toggle a Float Terminal
- Normal <Space>-<Esc>-f (:ToggleTerm direction=float-<CR>) Toggle a Float Terminal

Window

- Normal <Alt>+h (<Ctrl>+w-h) Go to Left Window
- Normal <Alt>+j (<Ctrl>+w-j) Go to Lower Window
- Normal <Alt>+k (<Ctrl>+w-k) Go to Upper Window
- Normal <Alt>+l (<Ctrl>+w-l) Go to Right Window
- Normal <Alt>+q (<Ctrl>+w-q) Go to Quit a Window
- Normal <Alt>+s (<Ctrl>+w-s) Split Window
- Normal <Alt>+v (<Ctrl>+w-v) Split Window Vertically
- Normal <Alt>+= (<Ctrl>+w-+) Increase Height
- Normal <Alt>+- (<Ctrl>+w--) Decrease Height
- Normal <Alt>+. (<Ctrl>+w->) Increase Width
- Normal <Alt>+, (<Ctrl>+w-<) Decrease Width

Nvim-Tree

- Normal <Alt>+m (-) Toggle nvim-tree

Code

- Normal <Space>-g-h (-) Show Lsp Hover Infomation
- Normal <Space>-g-d (-) Go to Definition
- Normal <Space>-g-D (-) Go to Declaration
- Normal <Space>-g-i (-) Go to Implementation
- Normal <Space>-g-r (-) Go to Reference
- Normal <Space>-g-n (-) Rename
- Normal <Space>-g-A (-) Add Workspace Folder
- Normal <Space>-g-R (-) Remove Workspace Folder
- Normal <Space>-g-L (-) List Workspace Folder
- Normal <Space>-f (:Format-<CR>) Format
- Normal <Space>-F (:FormatWrite-<CR>) Format and Write
- Normal <Space>-x-x (-) Toggle Diagnostic Window

Buffer

- Normal <Ctrl>+h (:BufferLineCyclePrev-<CR>) Go to Left Buffer
- Normal <Ctrl>+l (:BufferLineCycleNext-<CR>) Go to Right Buffer
- Normal <Space>-c-o (:BufferLineCloseOthers-<CR>) Close Other Buffers
- Normal <Space>-c-h (:BufferLineCloseLeft-<CR>) Close Left Buffer
- Normal <Space>-c-l (:BufferLineCloseRight-<CR>) Close Right Buffer
- Normal <Space>-c-c (:Bdelete<CR>) Close Current Buffer
