# sjtu report template

WIP...

《多尺度材料模拟与计算》实验报告 LaTeX 模板。

>本模板 tex 文件结构、内容主要参考 [SJTUThesis](https://github.com/sjtug/SJTUThesis)。
>
>本模板内容较为简略，欢迎感兴趣、有能力的同学对其进行丰富扩展。

---

LaTeX 文档编译：

>只在 Linux 端测试过，Windows 端请自行测试。

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

# 方式2
./run.sh
```

---

- 交叉引用包括：公式、图、表、章节之间、章节引用附录

---

To do:

- [ ] 页眉设置
- [ ] 将数学字体设置为 Times New Roman
- [ ] 代码环境
- [ ] 参考文献的标签指向有问题，指向了结论部分
- [ ] 参考文献 居中设置

