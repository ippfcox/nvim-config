# nvim-config

self-using nvim-config

learning!

## TODO

[ ] add keybindings for edit $MYVIMRC
[ ] add keybindings for sync $MYVIMRC

## keybindings

- `+` means combination keys
- `-` means sequese keys

### 原生VIM

#### 模式切换

| 模式   | 按键                              | 描述                                                        |
| ------ | --------------------------------- | ----------------------------------------------------------- |
| NORMAL | `i`                               | 进入INSERT模式                                              |
| NORMAL | `I`                               | 在行首进入INSERT模式                                        |
| NORMAL | `a`                               | 在光标后进入INSERT模式                                      |
| NORMAL | `A`                               | 在行末进入INSERT模式                                        |
| NORMAL | `o`                               | 在下一行建立新行并进入INSERT模式                            |
| NORMAL | `O`                               | 在上一行建立新行并进入INSERT模式                            |
| NORMAL | `s`                               | 删除光标位置字符并进入INSERT模式                            |
| NORMAL | `S`                               | 删除光标行并进入INSERT模式                                  |
| NORMAL | `c`+                              | 删除指定范围内容并进入INSERT模式                            |
| NORMAL | `C`                               | 删除光标后内容并进入INSERT模式                              |
| NORMAL | `R`                               | 进入REPLACE模式                                             |
| NORMAL | `gR`                              | 进入V-REPLACE模式，对tab有更好的处理                        |
| NORMAL | `r`                               | 替换光标处字符                                              |
| NORMAL | `gr`                              | 替换光标处字符，对tab有更好的处理                           |
| NORMAL | `v`                               | 进入VISUAL模式，字符模式                                    |
| NORMAL | `V`                               | 进入VISUAL-LINE模式，行模式                                 |
| NORMAL | `<Ctrl>`+`v`                      | 进入VISUAL-BLOCK模式，块模式                                |
| VISUAL | `<Ctrl>`+`g`                      | 进入SELECT模式，删除选中内容并进入INSERT模式                |
| VISUAL | `o`                               | 调整选中内容的范围                                          |
| NORMAL | `gv`                              | 重新选中上次的选区                                          |
| VISUAL | `u`                               | 将选中内容转换为小写                                        |
| VISUAL | `U`                               | 将选中内容转换为大写                                        |
| INSERT | `<Ctrl>`+`h`                      | 删除光标前字符，等价于backspcae                             |
| INSERT | `<Ctrl>`+`w`                      | 删除光标前一个词                                            |
| INSERT | `<Ctrl>`+`u`                      | 删除光标前到行首内容                                        |
| INSERT | `<ESC>`/`<Ctrl>`+`c`/`<Ctrl>`+`[` | 进入NORMAL模式                                              |
| INSERT | `<Ctrl>`+`o`                      | 临时进入NORMAL模式，执行一个NORMAL命令后返回INSERT模式      |
| INSERT | `<Ctrl>`+`v`                      | 通过输入数字输入ASCII字符或通过输入u16进制数输入unicode字符 |
| INSERT | `<Ctrl>`+`k`                      | 输入digraph字符(参见`:h digraph-table`)                     |
| NORMAL | `:`                               | 进入命令模式                                                |
| NORMAL | `<Ctrl>`+`^`                      | 切换上一次激活的缓冲区                                      |

例子

- `ciw`: 删除光标处单词，进入INSERT模式，参见范围
- `<Ctrl>`+`v` 65 == A
- `<Ctrl>`+`v` ue70e == 
- `<Ctrl>`+`k` 12 == ½

#### 范围

配合命令使用

| 符号        | 描述                |
| ----------- | ------------------- |
| line`,`line | 指定范围行号        |
| `w`         | 词，word            |
| `s`         | 句，sentence        |
| `p`         | 段落，paragraph     |
| `t`         | 标签，tag(html/XML) |
| `[`/`]`     | 被`[]`包围内容      |
| `(`/`)`     | 被`()`包围内容      |
| `<`/`>`     | 被`<>`包围内容      |
| `{`/`}`     | 被`{}`包围内容      |
| `"`         | 被`""`包围内容      |
| `'`         | 被`''`包围内容      |
| `           | 被``  包围内容      |

| 范围 | 描述                |
| ---- | ------------------- |
| `.`  | 当前行              |
| `$`  | 最后一行            |
| `0`  | 虚拟行，第1行前面   |
| `1`  | 第1行               |
| `'m` | 包含m标记的行       |
| `<`  | 高亮区域的起始行    |
| `>`  | 高亮区域的结束行    |
| `%`  | 整个文件，等价于1,$ |

#### 命令

| 命令                                   | 简写   | 描述                                               |
| -------------------------------------- | ------ | -------------------------------------------------- |
| range`print`                           | `p`    | 打印范围内容                                       |
| range`delete` x                        | `d`    | 删除范围内容，保存到x                              |
| range`yank` x                          | `y`    | 复制范围内容，保存到x                              |
| line`put` x                            | `pu`   | 粘贴x内容到line后                                  |
| range`copy` address                    | `t`    | 复制范围内容到address                              |
| range`move` address                    | `m`    | 移动范围内容到address                              |
| range`join`                            | `j`    | 连接范围内容到一行                                 |
| range`normal` commands                 | `narm` | 对范围内容执行命令                                 |
| range`substitute`/pattern/string/flags | `s`    | 对范围匹配pattern内容替换为string                  |
| range`global`/pattern/cmd              | `g`    | 对范围匹配pattern内容执行cmd                       |
| `@:`                                   |        | 执行上一个命令（测试失败）                         |
| `@@`                                   |        | 执行上一个经过`@:`执行过的命令（测试失败）         |
| range`!`shell                          |        | 执行shell命令                                      |
| `read !`shell                          |        | 读取shell输出到缓冲区                              |
| range`write !`shell                    |        | 将缓冲区内容作为shell命令输入                      |
| `ls`                                   |        | 打印当前缓冲区列表                                 |
| `bnext`                                |        | 切换到下一个缓冲区                                 |
| `bprev`                                |        | 切换到上一个缓冲区                                 |
| `bfirst`                               |        | 切换到第一个缓冲区                                 |
| `blast`                                |        | 切换到最后一个缓冲区                               |
| `buffer` bufferno                      |        | 切换到bufferno指定的buffer                         |
| `buffer` buffername                    |        | 切换到buffername对应的buffer                       |
| `bdelete`                              |        | 删除当前buffer                                     |
| `bdelete` bufferno                     |        | 删除bufferno指定的buffer                           |
| `bdelete` buffername                   |        | 删除buffername对应的buffer                         |
| range`bdelete`                         |        | 删除range指定的所有buffer                          |
| `args`                                 |        | 启动参数对应的buffer列表                           |
| `args` \`shell\`                       |        | 将shell命令结果作为参数                            |
| `args` files                           |        | 将文件作为参数，支持通配符                         |
| `tabedit` filename                     |        | 新建标签页并进行编辑（不要用）                     |
| `tabnew` filename                      |        | 新建标签页并进行编辑，与tabedit一样（不要用）      |
| `<Ctrl>`+`w`-T                         |        | 将当前窗口加入标签页（不要用）                     |
| `tabclose`                             | `tabc` | 关闭当前标签页（不要用）                           |
| `tabonly`                              | `tabo` | 关闭当前标签页以外的标签页（不要用）               |
| `tabnext`                              | `gt`   | 切换到下一标签页（不要用）                         |
| `tabprevious`                          | `gT`   | 切换到下一标签页（不要用）                         |
| `tabmove` number                       |        | 移动当前标签页到number前面（不要用）               |
| `edit` filename                        | `e`    | 打开文件，可以用`%`表示当前文件，`%:h`表示当前目录 |
| `find` filename                        |        | 从`path`中的路径中查找文件并打开                   |
| `Explore`                              | `E`    | 打开当前目录（测试失败）                           |
| `Sexplore`                             |        | 水平方向拆分打开当前目录（测试失败）               |
| `Vexplore`                             |        | 垂直方向拆分打开当前目录（测试失败）               |


- `55print`: 打印第55行
- `3,5d`: 删除第3/4/5行
- `.,5d`: 删除当前行到第5行
- `%d`: 删除整个文件
- `4,$-3d`: 删除第3行到倒数第3行
- `2,$!sort`: 对第2行到末尾进行排序

#### 移动光标和操作

| 模式   | 按键 | 描述                                 |
| ------ | ---- | ------------------------------------ |
| NORMAL | `h`  | 向左移动一个字符                     |
| NORMAL | `l`  | 向右移动一个字符                     |
| NORMAL | `j`  | 向下移动一行                         |
| NORMAL | `k`  | 向上移动一行                         |
| NORMAL | `b`  | 向左移动一个单词                     |
| NORMAL | `w`  | 向右移动一个单词                     |
| NORMAL | `e`  | 移动到单词末尾                       |
| NORMAL | `^`  | 移动到本行第一个非空格字符           |
| NORMAL | `$`  | 移动到本行最后一个非空格字符         |
| NORMAL | `gg` | 移动到文件第一行的第一个非空格字符   |
| NORMAL | `G`  | 移动到文件最后一行的第一个非空格字符 |
| NORMAL | `%`  | 移动到匹配的括号上                   |
| NORMAL | `0`  | 移动到本行第一个字符                 |
| NORMAL | `f`  | 向右查找并移动到指定字符             |
| NORMAL | `F`  | 向左查找并移动到指定字符             |
| NORMAL | `t`  | 向右查找并移动到指定字符的前一字符   |
| NORMAL | `T`  | 向左查找并移动到指定字符的前一字符   |
| NORMAL | `H`  | 移动到当前窗口的第一行               |
| NORMAL | `L`  | 移动到当前窗口的最后一行             |
| NORMAL | `M`  | 移动到当前窗口的中间行               |

行动 = 数字 + 移动光标

- `2w`: 向右移动2个单词
- `3j`: 向下移动3行
- `ft`: 向右查找t并移动到t
- `2tr`: 向左查找r并移动到第2个r的后一个字符
- `3H`: 移动到当前窗口的第3行

操作符

| 模式   | 按键 | 描述       |
| ------ | ---- | ---------- |
| NORMAL | `d`  | 删除       |
| NORMAL | `c`  | 修改       |
| NORMAL | `>`  | 向右缩进   |
| NORMAL | `<`  | 向左缩进   |
| NORMAL | `=`  | 自动缩进   |
| NORMAL | `y`  | 复制       |
| NORMAL | `p`  | 粘贴       |
| NORMAL | `gu` | 转换为小写 |
| NORMAL | `gU` | 转换为大写 |
| NORMAL | `g~` | 反转大小写 |

词操作 = 操作符 + 行动

- `d2w`: 删除2个单词
- `cw`: 修改1个单词，进入INSERT模式
- `d$`: 删除到行尾

行操作 = 2 * 操作符

- `dd`: 删除当前行
- `cc`: 清空当前行，进入INSERT模式

多行操作 = 数字 + 2 * 操作符

- `5dd`: 删除5行
- `4>>`: 向右缩进4行

范围操作 = 操作符 + `i` + 范围

- `ciw`: 清空一个单词，进入INSERT模式
- `dip`: 删除一段

#### 其它

| 模式   | 按键         | 描述                         |
| ------ | ------------ | ---------------------------- |
| NORMAL | `<Ctrl>`+`f` | 下翻页                       |
| NORMAL | `<Ctrl>`+`b` | 上翻页                       |
| NORMAL | `<Ctrl>`+`d` | 下翻半页                     |
| NORMAL | `<Ctrl>`+`u` | 上翻半页                     |
| NORMAL | `<Ctrl>`+`g` | 打印文件路径，行数，百分比   |
| NORMAL | `zt`         | 移动窗口，使光标行为窗口顶端 |
| NORMAL | `zb`         | 移动窗口，使光标行到窗口底端 |
| NORMAL | `zz`         | 移动窗口，使光标行到窗口中央 |
| NORMAL | `u`          | 撤销                         |
| NORMAL | `<Ctrl>`+`r` | 重做（撤销撤销）             |
| NORMAL | `<Ctrl>`+`a` | 向右查找一个数字并+1         |
| NORMAL | `<Ctrl>`+`x` | 向右查找一个数字并-1         |


- 数字 + `gg` == 数字 + `G`: 跳转到指定行
- `.`: 重复上一个操作，上一个操作：
  - 进入INSERT至进入NORMAL模式
  - NORMAL模式下的一个命令
- `2,$normal.`: 对第2行到最后一行执行`.`
- `2u` == `uu`: 撤销2次
- `.m.+1`: 移动当前行到下一行

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
