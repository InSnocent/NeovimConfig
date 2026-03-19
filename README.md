# NeovimConfig
大学期间自用的Nvim配置，重构于2026.3.17

## 前置要求

1. Neovim >= 0.8.0
2. Git
3. Node.js (用于 coc.nvim)
4. 一个 Nerd Font 字体（用于图标显示）

## 安装步骤
### 1. 拉取项目
Linux
```Bash
git clone https://github.com/InSnocent/NeovimConfig.git ~/.config/nvim
```
Windows
```Powershell
Remove-Item -Recurse -Force $env:LOCALAPPDATA\nvim -ErrorAction SilentlyContinue
git clone https://github.com/InSnocent/NeovimConfig.git $env:LOCALAPPDATA\nvim
```
### 2. 安装 Packer（插件管理器）

Windows PowerShell:
```powershell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```
Unix, Linux Installation:
```Bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### 3. 安装插件

打开 Neovim:
```bash
nvim
```

运行命令安装插件:
```vim
:PackerSync
```

等待所有插件安装完成。

### 4. 安装 coc.nvim 扩展（可选）

在 Neovim 中演示安装Coc Python支持：
```vim
:CocInstall coc-python
```

根据你的开发需求安装其他语言服务器。

## 主要快捷键

### 窗口管理
- `sv` - 垂直分屏
- `sh` - 水平分屏
- `Alt+h/j/k/l` - 窗口间跳转
- `sc` - 关闭当前窗口
- `so` - 关闭其他窗口

### 文件树
- `Alt+m` - 打开/关闭文件树
- `a` - 新建文件
- `d` - 删除文件
- `r` - 重命名
- `v` - 垂直分屏打开
- `h` - 水平分屏打开

### Buffer 管理
- `Ctrl+h` - 上一个 buffer
- `Ctrl+l` - 下一个 buffer
- `Ctrl+w` - 关闭当前 buffer
- `<leader>bl` - 关闭右侧所有 buffer
- `<leader>bh` - 关闭左侧所有 buffer

### 代码补全（coc.nvim）
- `Tab` - 下一个补全项
- `Shift+Tab` - 上一个补全项
- `Enter` - 确认补全
- `gd` - 跳转到定义
- `gr` - 查看引用
- `K` - 显示文档
- `<leader>rn` - 重命名符号

## 故障排除

### 插件安装失败
如果在中国大陆遇到网络问题，可以在 `lua/plugins.lua` 中取消注释镜像源配置。

### 图标显示异常
确保终端使用了 Nerd Font 字体。

### coc.nvim 报错
确保已安装 Node.js，并运行 `:checkhealth` 检查环境。
