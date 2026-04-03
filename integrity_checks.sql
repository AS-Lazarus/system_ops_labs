-- Purpose: Verify record consistency and identify 'stuck' processes.

-- Find transactions stuck in 'PENDING' or 'PROCESSING' for over 30 minutes
SELECT 
    transaction_id, 
    status, 
    created_at,
    TIMESTAMPDIFF(MINUTE, created_at, NOW()) as minutes_stuck
FROM transactions
WHERE status IN ('PENDING', 'PROCESSING', 'INITIATED')
AND created_at < NOW() - INTERVAL 30 MINUTE;

-- Check for accounts where the balance flag doesn't match transaction history
-- (Advanced 'Fixer' query for data integrity)
SELECT 
    customer_id, 
    current_balance, 
    status
FROM accounts
WHERE status = 'INACTIVE' AND current_balance > 0;
