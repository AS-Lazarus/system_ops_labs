-- Purpose: Real-time filtering of failed payments for incident investigation.

-- Find the 20 most recent failed transactions
SELECT 
    transaction_id, 
    customer_id, 
    amount, 
    error_code, 
    status_message,
    created_at
FROM transactions
WHERE status = 'FAILED'
AND created_at >= NOW() - INTERVAL 1 HOUR
ORDER BY created_at DESC
LIMIT 20;

-- Filter by a specific error code (e.g., 'INSUFFICIENT_FUNDS' or 'TIMEOUT')
-- Replace 'ERR_001' with the code you are investigating
SELECT * 
FROM transactions
WHERE error_code = 'ERR_001' 
AND created_at >= NOW() - INTERVAL 24 HOUR;
