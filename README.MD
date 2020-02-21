# SCUThesis
四川大学研究生学位论文LaTeX模板，持续更新中，
有问题和错误在[GitHub Issues](https://github.com/wonderland-dsg/scuthesis/issues)提问。
# 使用说明
```bash git clone https://github.com/wonderland-dsg/scuthesis.git`
```
在例子上进行修改，编译指令如下

## 使用`latexmk`编译
`latexmk` 命令支持全自动生成 `LaTeX` 编写的文档，并且支持使用不同的工具
链来进行生成，它会自动运行多次工具直到交叉引用都被解决。
```bash
latexmk main.tex       # 生成论文 main.pdf
latexmk scuthesis.dtx  # 生成说明文档 scuthesis.pdf
latexmk -c             # 清理编译生成的辅助文件
```
## 手动编译
编译文档
```bash
  $ xetex scuthesis.ins  # 生成 scuthesis.cls
  $ xelatex main.tex
  $ bibtex main.tex      # 生成 bbl 文件
  $ xelatex main.tex     # 解决引用
  $ xelatex main.tex     # 生成完整的 pdf 文件
```

下面的命令用来生成用户手册，
```bash
  $ xelatex scuthesis.dtx
  $ makeindex -s gind.ist -o scuthesis.ind scuthesis.idx
  $ makeindex -s gglo.ist -o scuthesis.gls scuthesis.glo
  $ xelatex scuthesis.dtx
  $ xelatex scuthesis.dtx  #生成说明文档 scuthesis.pdf
```
