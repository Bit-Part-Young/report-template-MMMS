# 《多尺度材料模拟与计算》课程实验报告及作业 LaTeX、Markdown 模板

- 作者：小小角色、走楼梯啊
- 创建时间：2023.10.03
- 本模板 tex 文件结构、内容主要参考 [SJTUThesis](https://github.com/sjtug/SJTUThesis)
- 以下内容如有错误或疑问，或友好交流互动，请在该 repo 中提 [Issues](https://gitee.com/yangsl306/report-template-MMMS/issues/new)
- 本模板内容较为简略，十分欢迎感兴趣、有能力的同学对其进行丰富扩展

---

## 课程实验报告提交要求

- **框架及内容需完整：框架上，一般需要有实验目的、方法、内容、结果分析、结论、参考文献等部分；内容上，需要 pdf 文档 + 完整的源码 + 数据图片等其他附件资料，请将这些资料打包压缩上传至 canvas（如 pdf 文档由 LaTeX 编写，也需提供 完整的 tex 源文件）**
- 如有同学使用 python 编写程序，也可使用 jupyter notebook 的形式写程序 + 实验报告
- 如有同学会使用 LaTeX，可使用 [report-template-MMMS: 《多尺度材料模拟与计算》课程实验报告 LaTeX 模板](https://gitee.com/yangsl306/report-template-MMMS) 提供的模板，具体使用方法见 repo 中的 README.md
- 平时作业 LaTeX 模板（待完善），可使用 [report-template-MMMS: 《多尺度材料模拟与计算》课程作业 LaTeX 模板](https://gitee.com/yangsl306/report-template-MMMS/tree/homework/) ，具体使用方法见 repo 中的 README.md
- 也可使用 markdown 撰写实验报告，其对代码的高亮支持较好，也需保证框架完整，最后转成 pdf 文档；可使用 [report-template-MMMS: 《多尺度材料模拟与计算》课程作业 Markdown 模板](https://gitee.com/yangsl306/report-template-MMMS/tree/report_markdown) 提供的模板，具体使用方法见 repo 中的 README.md
- 若使用 word 撰写实验报告，保证框架完整即可，可参考上述的 LaTeX 模板，最后转成 pdf 文档

---

## 文档结构

```txt
├── assets
│   ├── Figures
│   ├── Icons
├── contents
│   ├── appendix.tex
│   ├── content.tex
├── main.tex
├── refs.bib
└── setup.tex
```

- `main.tex` - 主文件，需修改封面文字信息，如实验报告名称、姓名、学号和日期
- `setup.tex` - 配置 `tex` 文件，包含宏包及其设置、部分命令设置等（**基本不用修改**）
- `contents/` - 文档各部分的 `tex` 文件，如摘要、正文、附录等（**在此部分进行修改**）
  - `content.tex` - 正文部分，根据需要添加、删除内容
  - `appendix.tex` - 附录部分，根据需要添加、删除内容，如代码
- `refs.bib` - 参考文献 `bib` 文件（**有则在此修改**）
- `assets/` - 文档封面、数据等图片文件（**在此添加数据图片**）

---

## 使用

### 使用 在线 LaTeX 平台

如果需要在 [Overleaf](https://www.overleaf.com/) 等在线 LaTeX 平台上使用（如 [SJTU LaTeX 文档助手, 在线LaTeX编辑器](https://latex.sjtu.edu.cn)），可以点击 [report-template-MMMS releases](https://gitee.com/yangsl306/report-template-MMMS/releases) 下载 最新 Releases，然后上传至相应平台。请注意，Overleaf 等 在线 LaTeX 平台上默认使用 pdflatex 编译，需设置使用 XeLaTeX 编译器。

---

```bash
git clone https://gitee.com/yangsl306/report-template-MMMS.git
cd report-template-MMMS
```

>只在 Linux、Mac 端测试过，Windows 端请自行测试（应该不难）。

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

## 文档内容

完整文档内容见 [main_report_20240129.pdf](./main_report_20240129.pdf)。

![文档封面](./assets/pdf_fig_cover.png)

![文档正文](./assets/pdf_fig_content.png)

---

## To do

- [ ] 页眉设置
- [ ] 设置公式字体
- [ ] 摘要页设置
- [ ] 参考文献的标签指向有问题，指向了结论部分
- [ ] 本 LaTeX 模板的页面右边距设置与 SJTUThesis 有差别，待调整
- [x] 将英文字体设置为 Times New Roman
- [x] 下划线粗细设置
- [x] 代码环境
- [x] "参考文献"字符居中设置

---

## Changelog

### 2024-01-29

- 根据系统有无 Times New Roman 英文字体自动设置

### 2023-10-17

- 下划线调粗
- 目录结构调整：`cover.tex` 修改成 `\newcommand` 命令
