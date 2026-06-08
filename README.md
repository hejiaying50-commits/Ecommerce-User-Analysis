# Ecommerce User Behavior Analysis

## 项目名称

电商用户行为分析与转化漏斗优化项目

## 项目背景

本项目基于淘宝公开用户行为数据集，围绕用户浏览、收藏、加购、购买行为进行分析，构建用户转化漏斗和RFM用户画像模型，为电商运营增长和用户转化优化提供数据支持。

## 技术栈

* Python
* Pandas
* NumPy
* SQL
* MySQL
* Power BI
* Excel
* Matplotlib

## 项目结构

```text
Ecommerce-User-Analysis
├── data
├── notebook
│   ├── data_clean.ipynb
│   └── eda_analysis.ipynb
├── sql
│   └── analysis.sql
├── dashboard
│   └── powerbi_dashboard_guide.md
├── screenshots
├── report
│   └── project_summary.md
├── README.md
├── requirements.txt
└── .gitignore
```

## 分析内容

1. 数据清洗
2. 用户行为分布分析
3. 用户活跃时间分析
4. 转化漏斗分析
5. RFM用户画像分析
6. Power BI可视化看板

## 核心成果

* 基于淘宝公开用户行为数据集分析500万+行为记录
* 使用Python完成数据清洗、字段处理和指标统计
* 构建浏览→收藏→加购→购买转化漏斗模型
* 建立RFM用户价值模型
* 使用Power BI搭建运营分析看板
* 输出用户增长与转化优化建议

## 业务结论模板

1. 浏览行为占比最高，但整体购买转化率较低。
2. 用户活跃高峰集中在晚间时段。
3. 加购到购买环节存在明显流失。
4. 高价值用户占比较低，需要重点维护。
5. 建议在用户高活跃时段进行精准营销，提高转化率。

## 简历写法

电商用户行为分析与转化漏斗优化  
技术栈：SQL | Python | Pandas | Power BI | Excel

* 基于淘宝公开用户行为数据集分析500万+行为记录
* 使用SQL和Python完成数据清洗、指标统计与探索性数据分析
* 构建浏览→收藏→加购→购买转化漏斗模型，识别关键流失环节
* 建立RFM用户价值模型，划分高价值用户、潜力用户和沉睡用户
* 使用Power BI搭建运营分析看板，实现核心指标可视化监控
* 输出用户增长与转化优化建议

## 运行方式

1. 下载 `UserBehavior.csv`
2. 放入 `data` 目录
3. 安装依赖：

```bash
pip install -r requirements.txt
```

4. 启动 Jupyter：

```bash
jupyter notebook
```

5. 依次运行：

* `notebook/data_clean.ipynb`
* `notebook/eda_analysis.ipynb`

6. 打开 Power BI 导入 CSV 文件制作看板。
