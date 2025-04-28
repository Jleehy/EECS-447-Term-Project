CREATE VIEW available_works
AS (
	SELECT *
	FROM Work
	WHERE MatID NOT IN (
		SELECT DISTINCT MatID
		FROM Copy
		NATURAL JOIN Loan
	)
);

CREATE VIEW borrowed_work_by_client
AS (
	SELECT AcctID, First_Name, Last_Name, COUNT(*)
	FROM Client
	NATURAL JOIN Loan
	GROUP BY AcctId
);

CREATE VIEW due_within_one_week
AS (
	SELECT *
	FROM Loan
	WHERE DATEDIFF(Due_Date, CURRENT_DATE) BETWEEN 0 AND 6
);

CREATE VIEW overdue_works
AS (
	SELECT *
	FROM Loan
	WHERE (DATEDIFF(Due_Date, CURRENT_DATE) < 0) AND Return_Date IS NULL
);

CREATE VIEW average_loan_period
AS (
	SELECT AVG(DATEDIFF(Return_Date, Loan_Date)) AS average_days_to_return
	FROM Loan NATURAL JOIN Copy NATURAL JOIN Work
	WHERE Return_Date IS NOT NULL
);
