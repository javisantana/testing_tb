SELECT
    toDateTime('2018-09-01 00:00:00') + (rand() % ((30 * 24) * 3600)) AS timestamp,
    ['/home', '/products', '/about', '/contact', '/blog'][1 + (rand() % 5)] AS page_path,
    concat('v_', toString(rand() % 1000)) AS visitor_id,
    concat('s_', toString(rand() % 5000)) AS session_id,
    concat('https://', ['google.com', 'facebook.com', 'twitter.com', 'direct', 'bing.com'][1 + (rand() % 5)]) AS referrer,
    ['US', 'UK', 'CA', 'FR', 'DE', 'ES', 'IT'][1 + (rand() % 7)] AS country,
    ['desktop', 'mobile', 'tablet'][1 + (rand() % 3)] AS device,
    ['Chrome', 'Firefox', 'Safari', 'Edge'][1 + (rand() % 4)] AS browser,
    rand() % 2 AS bounce,
    round((rand() % 300) + rand(), 2) AS time_on_page,
    1 + (rand() % 10) AS page_depth
FROM numbers(10)