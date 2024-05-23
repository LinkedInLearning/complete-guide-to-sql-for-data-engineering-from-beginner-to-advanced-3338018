-- Task 4: 4. Optimization with 
	-- Discuss the creation of indexes on any columns used frequently in WHERE clauses or as join keys to improve performance.

CREATE INDEX idx_claims_claimdate ON Claims(ClaimDate);

