--Task 5: Roles and Permissions
	-- Create roles: ClaimsAnalyst and ClaimsManager.
	-- ‘ClaimsAnalyst’ role should have read-only access to claims and policies data.
	-- ‘ClaimsManager’ role should have full access to claims data and the ability to update policy information.
	
CREATE ROLE ClaimsAnalyst  LOGIN PASSWORD 'password1';

-- Create ClaimsManager Role
CREATE ROLE ClaimsManager  LOGIN PASSWORD 'password2';


-- Grant select on necessary tables
GRANT SELECT ON Claims, Policies, PolicyTypes TO ClaimsAnalyst;

GRANT SELECT, INSERT, UPDATE, DELETE ON Claims, Policies, PolicyTypes TO ClaimsManager;

