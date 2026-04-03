-- Purpose: Aggregate data to identify recurring system blocks and provider issues.

-- Identify the most frequent error messages 
SELECT 
    error_code, 
    status_message, 
    COUNT(*) as failure_count
FROM transactions
WHERE status = 'FAILED'
AND created_at >= NOW() - INTERVAL 24 HOUR
GROUP BY error_code, status_message
ORDER BY failure_count DESC;

-- Check failure rates by Payment Provider (e.g., specific banks)
SELECT 
    provider_name, 
    COUNT(*) as total_attempts,
    SUM(CASE WHEN status = 'FAILED' THEN 1 ELSE 0 END) as failed_count
FROM transactions
GROUP BY provider_name
ORDER BY failed_count DESC;
