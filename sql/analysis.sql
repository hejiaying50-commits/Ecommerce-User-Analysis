-- 创建用户行为明细表，用于承接原始淘宝用户行为数据
CREATE TABLE user_behavior (
    user_id BIGINT,
    item_id BIGINT,
    category_id BIGINT,
    behavior_type VARCHAR(20),
    timestamp BIGINT
);

-- 统计不同用户行为类型的数量分布，用于分析整体行为结构
SELECT
    behavior_type,
    COUNT(*) AS cnt
FROM user_behavior
GROUP BY behavior_type;

-- 统计每日活跃用户数（DAU），用于观察用户活跃趋势
SELECT
    DATE(FROM_UNIXTIME(timestamp)) AS dt,
    COUNT(DISTINCT user_id) AS dau
FROM user_behavior
GROUP BY dt
ORDER BY dt;

-- 统计浏览量最高的商品 Top10，用于识别热门商品
SELECT
    item_id,
    COUNT(*) AS pv
FROM user_behavior
WHERE behavior_type = 'pv'
GROUP BY item_id
ORDER BY pv DESC
LIMIT 10;

-- 统计购买次数最高的品类 Top10，用于识别高转化品类
SELECT
    category_id,
    COUNT(*) AS buy_cnt
FROM user_behavior
WHERE behavior_type = 'buy'
GROUP BY category_id
ORDER BY buy_cnt DESC
LIMIT 10;

-- 统计每小时用户行为数量，用于分析用户活跃时间分布
SELECT
    HOUR(FROM_UNIXTIME(timestamp)) AS hour,
    COUNT(*) AS cnt
FROM user_behavior
GROUP BY hour
ORDER BY hour;

-- 统计用户购买次数分布，用于识别高频购买用户
SELECT
    user_id,
    COUNT(*) AS buy_count
FROM user_behavior
WHERE behavior_type = 'buy'
GROUP BY user_id
ORDER BY buy_count DESC
LIMIT 20;

-- 统计转化漏斗各阶段行为量，用于后续计算转化率
SELECT
    behavior_type,
    COUNT(*) AS cnt
FROM user_behavior
WHERE behavior_type IN ('pv', 'fav', 'cart', 'buy')
GROUP BY behavior_type;
