# nvim-config

self-using nvim-config

learning!

## keybindings

- `+` means combination keys
- `-` means sequese keys

### Common

| Mode   | Key           | Key       | Description   |
| ------ | ------------- | --------- | ------------- |
| Normal | `<Space>`-`w` | `:w-<CR>` | Write File    |
| Normal | `<Space>`-`q` | `:q-<CR>` | Quit a Window |

Move Cursor

| Mode   | Key  | Key | Description                                                                |
| ------ | ---- | --- | -------------------------------------------------------------------------- |
| Normal | `h`  |     | Move Cursor One Character Right                                            |
| Normal | `l`  |     | Move Cursor One Character Left                                             |
| Normal | `j`  |     | Move Cursor One Line Down                                                  |
| Normal | `k`  |     | Move Cursor One Line Up                                                    |
| Normal | `b`  |     | Move Cursor One Word Left                                                  |
| Normal | `w`  |     | Move Cursor One Word Right                                                 |
| Normal | `e`  |     | Move Cursor to the End of Word                                             |
| Normal | `^`  |     | Move Cursor to the First Non-Space Character at the Beginning of the Line  |
| Normal | `$`  |     | Move Cursor to the Last Non-Space Character at the End of the Line         |
| Normal | `gg` |     | Move Cursor to the First Non-Space Character at the First Line of the File |
| Normal | `G`  |     | Move Cursor to the First Non-Space Character at the Last Line of the File  |
| Normal | `%`  |     | Move Cursor to the Matching Parenthesis or Bracket                         |
| Normal | `0`  |     | Move Cursor to the Beginning of the Line                                   |

Motion = Number + Move Cursor

Operator

| Mode   | Key  | Key | Description   |
| ------ | ---- | --- | ------------- |
| Normal | `d`  |     | Delete        |
| Normal | `c`  |     | Change        |
| Normal | `>`  |     | Indent Right  |
| Normal | `<`  |     | Indent Left   |
| Normal | `=`  |     | Auto Indent   |
| Normal | `y`  |     | Copy          |
| Normal | `p`  |     | Paste         |
| Normal | `gu` |     | To Lower Case |
| Normal | `gU` |     | To Upper Case |
| Normal | `g~` |     | Invert Case   |

Operation = Operation + Motion

Terminal

| Mode     | Key                       | Key                                     | Description                  |
| -------- | ------------------------- | --------------------------------------- | ---------------------------- |
| Terminal | `<Esc>`                   | `<Ctrl>`+`\`-`<Ctrl>`+`n`               | Terminal to Normal           |
| Normal   | `<Space>`-\`-\`           | `:ToggleTerm direction=horizontal-<CR>` | Toggle a Horizontal Terminal |
| Normal   | `<Space>`-`<Esc>`-`<Esc>` | `:ToggleTerm direction=horizontal-<CR>` | Toggle a Horizontal Terminal |
| Normal   | `<Space>`-\`-`f`          | `:ToggleTerm direction=float-<CR>`      | Toggle a Float Terminal      |
| Normal   | `<Space>`-`<Esc>`-`f`     | `:ToggleTerm direction=float-<CR>`      | Toggle a Float Terminal      |


Window


| Mode   | Key         | Key              | Description             |
| ------ | ----------- | ---------------- | ----------------------- |
| Normal | `<Alt>`+`h` | `<Ctrl>`+`w`-`h` | Go to Left Window       |
| Normal | `<Alt>`+`j` | `<Ctrl>`+`w`-`j` | Go to Lower Window      |
| Normal | `<Alt>`+`k` | `<Ctrl>`+`w`-`k` | Go to Upper Window      |
| Normal | `<Alt>`+`l` | `<Ctrl>`+`w`-`l` | Go to Right Window      |
| Normal | `<Alt>`+`q` | `<Ctrl>`+`w`-`q` | Go to Quit a Window     |
| Normal | `<Alt>`+`s` | `<Ctrl>`+`w`-`s` | Split Window            |
| Normal | `<Alt>`+`v` | `<Ctrl>`+`w`-`v` | Split Window Vertically |
| Normal | `<Alt>`+`=` | `<Ctrl>`+`w`-`+` | Increase Height         |
| Normal | `<Alt>`+`-` | `<Ctrl>`+`w`-`-` | Decrease Height         |
| Normal | `<Alt>`+`.` | `<Ctrl>`+`w`-`>` | Increase Width          |
| Normal | `<Alt>`+`,` | `<Ctrl>`+`w`-`<` | Decrease Width          |

Nvim-Tree


| Mode   | Key         | Key | Description      |
| ------ | ----------- | --- | ---------------- |
| Normal | `<Alt>`+`m` |     | Toggle nvim-tree |

Code

| Mode   | Key               | Key                 | Description               |
| ------ | ----------------- | ------------------- | ------------------------- |
| Normal | `<Space>`-`g`-`h` |                     | Show Lsp Hover Infomation |
| Normal | `<Space>`-`g`-`d` |                     | Go to Definition          |
| Normal | `<Space>`-`g`-`D` |                     | Go to Declaration         |
| Normal | `<Space>`-`g`-`i` |                     | Go to Implementation      |
| Normal | `<Space>`-`g`-`r` |                     | Go to Reference           |
| Normal | `<Space>`-`g`-`n` |                     | Rename                    |
| Normal | `<Space>`-`g`-`A` |                     | Add Workspace Folder      |
| Normal | `<Space>`-`g`-`R` |                     | Remove Workspace Folder   |
| Normal | `<Space>`-`g`-`L` |                     | List Workspace Folder     |
| Normal | `<Space>`-`f`     | `:Format-<CR>`      | Format                    |
| Normal | `<Space>`-`F`     | `:FormatWrite-<CR>` | Format and Write          |
| Normal | `<Space>`-`x`-`x` |                     | Toggle Diagnostic Window  |

Buffer

| Mode   | Key               | Key                           | Description          |
| ------ | ----------------- | ----------------------------- | -------------------- |
| Normal | `<Ctrl>`+`h`      | `:BufferLineCyclePrev-<CR>`   | Go to Left Buffer    |
| Normal | `<Ctrl>`+`l`      | `:BufferLineCycleNext-<CR>`   | Go to Right Buffer   |
| Normal | `<Space>`-`c`-`o` | `:BufferLineCloseOthers-<CR>` | Close Other Buffers  |
| Normal | `<Space>`-`c`-`h` | `:BufferLineCloseLeft-<CR>`   | Close Left Buffer    |
| Normal | `<Space>`-`c`-`l` | `:BufferLineCloseRight-<CR>`  | Close Right Buffer   |
| Normal | `<Space>`-`c`-`c` | `:Bdelete<CR>`                | Close Current Buffer |
