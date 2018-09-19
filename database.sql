-- 1. Get all users from Chicago
SELECT * FROM "account"
WHERE "city" = 'chicago';

-- 2. Get all users with usernames that contain the letter 'a'
SELECT * FROM "account"
WHERE "username" ILIKE '%a%';

-- 3. Update all records with an account balance of 0.00 and a transactions_attempted of 0.
--  Give them a new account balance of 10.00.
UPDATE "account" SET "account_balance" = 10.00
WHERE "account_balance" = 0;

-- 4. Select all users that have attempted 9 or more transactions
SELECT * FROM "account"
WHERE "transactions_attempted" >= 9;

-- 5. 