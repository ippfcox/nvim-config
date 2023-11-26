# nvim-config

self-using nvim-config

learning!

## init.vim

配置入口，用于引入lua脚本

```vimscript
lua require('abc.123')
```

引入lua路径下的abc/123.lua，注意这里使用.作为路径分隔符

## init.lua

用于加载一些必须早做的东西，我把配置主题也放在了这里：
- 安装lazy
- 安装插件
- 配置颜色主题

有可能需要安装python3-venv，否则cmake的lsp装不上

## basic.lua

定义了一些基础的配置，具体有啥我也整不太明白

o/bo/wo分别表示主要区域，buffer区域和窗口区域

listchars主要用于将空白字符显示为想要的内容，如space:.，要注意的是tab要给出两个字符，第一个显示一次，第二个根据情况显示0-3次

## keybindings.lua

插件会提供一些命令，而快捷键就是为了简化键入命令

配置了几个快捷键：
- Alt+m，触发nvim-tree
- Alt+h/j/k/l，切换窗口
- Ctrl+h/l，切换tab

一些插件的快捷键配置也放在这里了
- Tab/Ctrl+j，下一个补全
- Shift+Tab/Ctrl+k，上一个补全
- Alt+.，调出补全菜单
- Alt+,，关闭补全菜单
- Enter，确认

## packer

不维护了，后续推荐的是lazy和pckr，我选用了lazy，因为nvchad也用这个

## lazy

仓库：https://github.com/folke/lazy.nvim

添加了一个init.lua，并在init.vim中引入，然后在init.lua中添加lazy仓库中的代码，基本上就完事了

添加一个主题，仓库：https://github.com/ellisonleao/gruvbox.nvim，按指示添加即可
添加了另一个主题，仓库：https://github.com/rmehri01/onenord.nvim

添加方式，其实就是按之前的对着写，主要的就是仓库路径，后面的参数都有什么我也还不清楚

## nvim-tree

o 打开关闭文件夹
a 创建文件，末尾有斜杠就是创建目录了
r 重命名
x 剪切
c 拷贝
p 粘贴

## bufferline



## tree-sitter

:TSInstallInfo 查看安装信息
:TSInstall xxx 安装某个高亮插件

