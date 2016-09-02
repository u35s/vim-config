vim 配置
====
vim plugin 
____
1. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

golang config
____
1. 添加 Plugin 'fatih/vim-go'
2. 执行插件安装 `:PluginInstall`
3. 安装binaries `:GoInstallBinaries`

vim无插件命令
====
字符相关
____
* `:He` 全称为:Hexplore 在下边分屏浏览目录 上边`:He!`
* `:Ve` 在左边 分屏浏览目录 右边`:Ve!`
* `guu` 把一行文字全部变为小写
* `gUU` 把一行文字全部变为小写
* 按`v`键进入选择模式，然后移动光标选择你要的文本,按`u`转小写,按`U`转大写
* `ga` 查看光标处字符的ascii字符
* `g8` 查看光标字符的utf-8编码
* `*`或`#` 在当前文件中搜索当前光标的单词 
缩进相关
____
* `<<`或者`>>`向左或向右缩进当前行

移动
____
* `^`行首
* `$`行末

替换
____
* `:%s/word/word/gc` 全局替换并确认 
* `let I=16 | g/\(_\)17/s//\=INC(1)/` 替换字符串为递增数字
