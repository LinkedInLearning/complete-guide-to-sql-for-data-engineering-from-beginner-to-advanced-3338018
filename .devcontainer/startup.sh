# Run an initial setup script for the MariaDB database
if [ -f .devcontainer/setup-postgresql.sql ]; then
  psql -h 127.0.0.1 -U postgres postgres < .devcontainer/setup-postgresql.sql
fi