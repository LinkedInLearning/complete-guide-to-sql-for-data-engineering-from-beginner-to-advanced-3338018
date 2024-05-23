-- Task 3: Analytical Queries
-- Write a query to calculate the total number of claims per policy type.
-- Use analytical functions to determine the monthly claim frequency and average claim amount.
SELECT
    pt.PolicyTypeName,
    COUNT(c.ClaimID) AS TotalClaims
FROM
    Claims c
JOIN
    Policies p ON c.PolicyID = p.PolicyID
JOIN
    PolicyTypes pt ON p.PolicyTypeID = pt.PolicyTypeID
GROUP BY
    pt.PolicyTypeName
ORDER BY
    TotalClaims DESC;

----------------------------------

--- Query 2: Monthly Claim Frequency and Average Claim Amount

SELECT
    DATE_TRUNC('month', ClaimDate) AS ClaimMonth,
    COUNT(*) AS ClaimFrequency,
    AVG(ClaimAmount) AS AverageClaimAmount
FROM
    Claims
GROUP BY
    ClaimMonth
ORDER BY
    ClaimMonth;


