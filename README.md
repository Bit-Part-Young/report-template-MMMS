# sjtu report template

WIP...

《多尺度材料模拟与计算》实验报告 LaTeX 模板。

> 本模板 tex 文件结构、内容主要参考 [SJTUThesis](https://github.com/sjtug/SJTUThesis)。

---

LaTeX 文档编译：

>只在Linux端测试过，Windows端请自行测试。

- Makefile 编译

```bash
# 生成 PDF
make all

# 删除中间文件
make clean

# 删除中间文件和 PDF
make cleanall
```

- 手动编译

```bash
latexmk -xelatex -time -halt-on-error main.tex
```

---

To do:

- [ ] 页眉设置
- [ ] 将数学字体设置为 Times New Roman
