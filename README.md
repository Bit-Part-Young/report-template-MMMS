# 《多尺度材料模拟与计算》实验报告 LaTeX 模板

- 作者：小小角色、走楼梯啊
- 创建时间：2023.10.03
- 本模板 tex 文件结构、内容主要参考 [SJTUThesis](https://github.com/sjtug/SJTUThesis)
- 以下内容如有错误或疑问，或友好交流互动，请在该 repo 中提 [Issues](https://gitee.com/yangsl306/report-template-MMMS/issues/new)
- 本模板内容较为简略，欢迎感兴趣、有能力的同学对其进行丰富扩展

---

## LaTeX 文档编译

>只在 Linux 端测试过，Windows 端请自行测试。

### Makefile 编译

```bash
# 生成 pdf 并删除中间文件
make
# make auto

# 打印帮助信息
make help

# 生成 pdf
make all

# 删除中间文件
make clean

# 删除中间文件、pdf
make cleanall
```

### 手动编译

```bash
# 方式 1
latexmk -xelatex -time -halt-on-error main.tex

# 方式 2
./run.sh
```

---

## To do

- [ ] 页眉设置
- [ ] 将数学字体设置为 Times New Roman
- [x] 代码环境
- [x] 参考文献 居中设置
- [ ] 参考文献的标签指向有问题，指向了结论部分
