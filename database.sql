-- 1. Get all users from Chicago
SELECT * FROM "account"
WHERE "city" = 'chicago';

-- 2. Get all users with usernames that contain the letter 'a'
SELECT * FROM "account"
WHERE "username" ILIKE '%a%';

-- 3. Update all records with an account balance of 0.00 and a transactions_attempted of 0.
--  Give them a new account balance of 10.00.
UPDATE "account" SET "account_balance" = 10.00
WHERE "account_balance" = 0
AND "transactions_attempted" = 0;

-- 4. Select all users that have attempted 9 or more transactions
SELECT * FROM "account"
WHERE "transactions_attempted" >= 9;

-- 5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance
SELECT "username", "account_balance" FROM "account"
ORDER BY "account_balance" DESC
LIMIT 3;

-- 6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT "username", "account_balance" FROM "account"
ORDER BY "account_balance" ASC
LIMIT 3;

--7. Get all users with account balances that are more than $100
SELECT * FROM "account"
WHERE "account_balance" > 100;

--8. Add a new record.
INSERT INTO "account"("username", "city", "transactions_completed", "transactions_attempted", "account_balance")
VALUES ('Samuel', 'Minneapolis', 12, 12, 7500.00);
--9. Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM "account"
WHERE ("city" = 'miami' OR "city" = 'phoenix')
AND "transactions_completed" < 5;