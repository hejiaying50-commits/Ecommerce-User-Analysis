# Power BI 看板制作说明

## 1. 数据导入说明

请在 Power BI 中导入以下 CSV 文件：

* `clean_user_behavior.csv`
* `funnel_data.csv`
* `hourly_activity.csv`
* `rfm.csv`

建议将这些文件统一放置在 `data` 目录下，并在 Power BI Desktop 中通过“获取数据 > 文本/CSV”逐个导入。

## 2. 看板页面设计

### 页面1：运营总览

KPI卡片建议展示以下指标：

* 总用户数
* 总行为数
* 总购买数
* 浏览到购买转化率

### 页面2：用户转化漏斗

图表类型：

* Funnel Chart

字段设置：

* 分类字段：`stage`
* 数值字段：`count`

### 页面3：用户活跃时间分析

图表类型：

* Line Chart

字段设置：

* X轴：`hour`
* Y轴：`count`

### 页面4：用户画像分析

图表类型：

* Pie Chart

字段设置：

* 图例：`user_level`
* 值：用户数量

### 页面5：业务结论

建议通过文本框或卡片展示以下内容：

* 用户高活跃时段
* 转化流失环节
* 高价值用户占比
* 运营优化建议

## 3. Power BI截图要求

最终请将看板或关键图表截图保存到 `screenshots` 目录，文件名建议如下：

* `dashboard.png`
* `funnel.png`
* `rfm.png`
* `hourly.png`
