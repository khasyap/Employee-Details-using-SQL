-- Create a sample table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountHolder VARCHAR(50) NOT NULL,
    Balance DECIMAL(10, 2) NOT NULL CHECK (Balance >= 0) -- Consistency rule
);

-- Insert sample data
INSERT INTO Accounts (AccountID, AccountHolder, Balance) VALUES
(1, 'Alice', 1000.00),
(2, 'Bob',   500.00);

-- Start a transaction
BEGIN TRANSACTION;

-- 1. Atomicity: Both debit and credit must succeed or none will happen
UPDATE Accounts
SET Balance = Balance - 200
WHERE AccountID = 1;

UPDATE Accounts
SET Balance = Balance + 200
WHERE AccountID = 2;

-- 2. Consistency: Ensure no account has a negative balance
-- If violated, rollback
IF EXISTS (SELECT 1 FROM Accounts WHERE Balance < 0)
BEGIN
    ROLLBACK; -- Undo all changes
    PRINT 'Transaction failed: Negative balance detected.';
    RETURN;
END

-- 3. Isolation: This transaction is not visible to others until committed
-- (Isolation level can be set explicitly if needed)
-- SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- Commit the transaction
COMMIT;

-- 4. Durability: Once committed, changes are permanent
PRINT 'Transaction successful.';
