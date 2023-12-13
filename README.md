# nvim-config

self-using nvim-config

learning!

## keybindings

- `+` means combination keys
- `-` means sequese keys

### Vanilla VIM


| Mode   | Key                               | Description                                                          |
| ------ | --------------------------------- | -------------------------------------------------------------------- |
| NORMAL | `i`                               | enter INSERT mode                                                    |
| NORMAL | `I`                               | enter INSERT mode at SOL                                             |
| NORMAL | `a`                               | enter INSERT mode after cursor                                       |
| NORMAL | `A`                               | enter INSERT mode at EOL                                             |
| NORMAL | `o`                               | enter INSERT mode at new line below                                  |
| NORMAL | `O`                               | enter INSERT mode at new line above                                  |
| NORMAL | `s`                               | delete cursor character, enter INSERT mode                           |
| NORMAL | `S`                               | delete cursor line, enter INSERT mode                                |
| NORMAL | `c`+                              | delete specific range, enter INSERT mode                             |
| NORMAL | `C`                               | delete content after cursor, enter INSERT mode                       |
| INSERT | `<Ctrl>`+`h`                      | backspace                                                            |
| INSERT | `<Ctrl>`+`w`                      | backspace a word                                                     |
| INSERT | `<Ctrl>`+`u`                      | backspace to SOL                                                     |
| INSERT | `<ESC>`/`<Ctrl>`+`c`/`<Ctrl>`+`[` | enter NORMAL mode                                                    |
| INSERT | `<Ctrl>`+`o`                      | enter NORMAL mode temporarily, return to INSERT mode after 1 command |
| INSERT | `<Ctrl>`+`v`                      | input character, number for ascii or u+hex for unicode               |
| INSERT | `<Ctrl>`+`k`                      | input digraph character(see :h digraph-table)                        |

- `ciw`: delete 1 cursor word, enter INSERT mode, see Range 

Move Cursor

| Mode   | Key      | Description                                                                 |
| ------ | -------- | --------------------------------------------------------------------------- |
| NORMAL | `h`      | move cursor one character right                                             |
| NORMAL | `l`      | move cursor one character left                                              |
| NORMAL | `j`      | move cursor one line down                                                   |
| NORMAL | `k`      | move cursor one line up                                                     |
| NORMAL | `b`      | move cursor one word left                                                   |
| NORMAL | `w`      | move cursor one word right                                                  |
| NORMAL | `e`      | move cursor to the end of word                                              |
| NORMAL | `^`      | move cursor to the first non-space character at the beginning of the line   |
| NORMAL | `$`      | move cursor to the last non-space character at the end of the line          |
| NORMAL | `gg`     | move cursor to the first non-space character at the first line of the file  |
| NORMAL | `G`      | move cursor to the first non-space character at the last line of the file   |
| NORMAL | `%`      | move cursor to the matching parenthesis or bracket                          |
| NORMAL | `0`      | move cursor to the beginning of the line                                    |
| NORMAL | `f`(`F`) | move cursor to the specific character (reverse search)                      |
| NORMAL | `t`(`T`) | move cursor to the character before the specific character (reverse search) |
| NORMAL | `H`      | move cursor to the first line of the window                                 |
| NORMAL | `L`      | move cursor to the last line of the window                                  |
| NORMAL | `M`      | move cursor to the middle line of the window                                |

Motion = Number + Move Cursor

- `2w`: move cursor 2 words forward
- `3j`: move cursor 3 line down
- `ft`: move cursor to `t`
- `2tr`: move cursor to the character before the second `r`
- `3H`: move cursor to the 3rd line of the window

Operator

| Mode   | Key  | Description   |
| ------ | ---- | ------------- |
| NORMAL | `d`  | delete        |
| NORMAL | `c`  | change        |
| NORMAL | `>`  | indent right  |
| NORMAL | `<`  | indent left   |
| NORMAL | `=`  | auto indent   |
| NORMAL | `y`  | copy          |
| NORMAL | `p`  | paste         |
| NORMAL | `gu` | to lower case |
| NORMAL | `gU` | to upper case |
| NORMAL | `g~` | invert case   |

Range

| Character | Description     |
| --------- | --------------- |
| `w`       | word            |
| `s`       | sentence        |
| `p`       | paragraph       |
| `t`       | tag(html/XML)   |
| `[`/`]`   | wrapped by `[]` |
| `(`/`)`   | wrapped by `()` |
| `<`/`>`   | wrapped by `<>` |
| `{`/`}`   | wrapped by `{}` |
| `"`       | wrapped by `""` |
| `'`       | wrapped by `''` |
| `         | wrapped by ``   |

Word Operation = Operator + Motion

- `d2w`: delete 2 words
- `cw`: change 1 word, insert
- `d$`: delete to eol

Line Operation = 2 * Operator

- `dd`: delete cursor line
- `cc`: change, delete cursor line and insert

Multi-Line Operation = Number + 2 * Operator

- `5dd`: delete 5 lines
- `4>>`: indent 4 lines

Range Operation = Operator + `i` + Range

- `ciw`: change 1 word
- `dip`: delete 1 paragraph

Others

| Mode   | Key          | Description                              |
| ------ | ------------ | ---------------------------------------- |
| NORMAL | `<Ctrl>`+`f` | page down                                |
| NORMAL | `<Ctrl>`+`b` | page up                                  |
| NORMAL | `<Ctrl>`+`d` | half page up                             |
| NORMAL | `<Ctrl>`+`u` | half page down                           |
| NORMAL | `<Ctrl>`+`g` | show filepath/line number/process        |
| NORMAL | `zt`         | move cursor line to top of the window    |
| NORMAL | `zb`         | move cursor line to bottom of the window |
| NORMAL | `zz`         | move cursor line to middle of the window |
| NORMAL | `u`          | cancel                                   |
| NORMAL | `<Ctrl>`+`r` | re-do                                    |
| NORMAL | `<Ctrl>`+`a` | find forward a number and ++             |
| NORMAL | `<Ctrl>`+`x` | find forward a number and --             |


- Number + `gg` == Number + `G`: jump to specific line
- `.`: repeat last operation
  - enter INSERT mode to enter NORMAL mode
  - one command in NORMAL mode 
- `2u` == `uu`: cancel twice


aa  137 lkjlj  124 

### Common

| Mode   | Key           | Key       | Description   |
| ------ | ------------- | --------- | ------------- |
| NORMAL | `<Space>`-`w` | `:w-<CR>` | Write File    |
| NORMAL | `<Space>`-`q` | `:q-<CR>` | Quit a Window |

### Terminal

| Mode     | Key                       | Key                                     | Description                  |
| -------- | ------------------------- | --------------------------------------- | ---------------------------- |
| Terminal | `<Esc>`                   | `<Ctrl>`+`\`-`<Ctrl>`+`n`               | Terminal to NORMAL           |
| NORMAL   | `<Space>`-\`-\`           | `:ToggleTerm direction=horizontal-<CR>` | Toggle a Horizontal Terminal |
| NORMAL   | `<Space>`-`<Esc>`-`<Esc>` | `:ToggleTerm direction=horizontal-<CR>` | Toggle a Horizontal Terminal |
| NORMAL   | `<Space>`-\`-`f`          | `:ToggleTerm direction=float-<CR>`      | Toggle a Float Terminal      |
| NORMAL   | `<Space>`-`<Esc>`-`f`     | `:ToggleTerm direction=float-<CR>`      | Toggle a Float Terminal      |


### Window


| Mode   | Key         | Key              | Description             |
| ------ | ----------- | ---------------- | ----------------------- |
| NORMAL | `<Alt>`+`h` | `<Ctrl>`+`w`-`h` | Go to Left Window       |
| NORMAL | `<Alt>`+`j` | `<Ctrl>`+`w`-`j` | Go to Lower Window      |
| NORMAL | `<Alt>`+`k` | `<Ctrl>`+`w`-`k` | Go to Upper Window      |
| NORMAL | `<Alt>`+`l` | `<Ctrl>`+`w`-`l` | Go to Right Window      |
| NORMAL | `<Alt>`+`q` | `<Ctrl>`+`w`-`q` | Go to Quit a Window     |
| NORMAL | `<Alt>`+`s` | `<Ctrl>`+`w`-`s` | Split Window            |
| NORMAL | `<Alt>`+`v` | `<Ctrl>`+`w`-`v` | Split Window Vertically |
| NORMAL | `<Alt>`+`=` | `<Ctrl>`+`w`-`+` | Increase Height         |
| NORMAL | `<Alt>`+`-` | `<Ctrl>`+`w`-`-` | Decrease Height         |
| NORMAL | `<Alt>`+`.` | `<Ctrl>`+`w`-`>` | Increase Width          |
| NORMAL | `<Alt>`+`,` | `<Ctrl>`+`w`-`<` | Decrease Width          |

### Nvim-Tree


| Mode   | Key         | Key | Description      |
| ------ | ----------- | --- | ---------------- |
| NORMAL | `<Alt>`+`m` |     | Toggle nvim-tree |

### Code

| Mode   | Key               | Key                 | Description               |
| ------ | ----------------- | ------------------- | ------------------------- |
| NORMAL | `<Space>`-`g`-`h` |                     | Show Lsp Hover Infomation |
| NORMAL | `<Space>`-`g`-`d` |                     | Go to Definition          |
| NORMAL | `<Space>`-`g`-`D` |                     | Go to Declaration         |
| NORMAL | `<Space>`-`g`-`i` |                     | Go to Implementation      |
| NORMAL | `<Space>`-`g`-`r` |                     | Go to Reference           |
| NORMAL | `<Space>`-`g`-`n` |                     | Rename                    |
| NORMAL | `<Space>`-`g`-`A` |                     | Add Workspace Folder      |
| NORMAL | `<Space>`-`g`-`R` |                     | Remove Workspace Folder   |
| NORMAL | `<Space>`-`g`-`L` |                     | List Workspace Folder     |
| NORMAL | `<Space>`-`f`     | `:Format-<CR>`      | Format                    |
| NORMAL | `<Space>`-`F`     | `:FormatWrite-<CR>` | Format and Write          |
| NORMAL | `<Space>`-`x`-`x` |                     | Toggle Diagnostic Window  |

### Buffer

| Mode   | Key               | Key                           | Description          |
| ------ | ----------------- | ----------------------------- | -------------------- |
| NORMAL | `<Ctrl>`+`h`      | `:BufferLineCyclePrev-<CR>`   | Go to Left Buffer    |
| NORMAL | `<Ctrl>`+`l`      | `:BufferLineCycleNext-<CR>`   | Go to Right Buffer   |
| NORMAL | `<Space>`-`c`-`o` | `:BufferLineCloseOthers-<CR>` | Close Other Buffers  |
| NORMAL | `<Space>`-`c`-`h` | `:BufferLineCloseLeft-<CR>`   | Close Left Buffer    |
| NORMAL | `<Space>`-`c`-`l` | `:BufferLineCloseRight-<CR>`  | Close Right Buffer   |
| NORMAL | `<Space>`-`c`-`c` | `:Bdelete<CR>`                | Close Current Buffer |
