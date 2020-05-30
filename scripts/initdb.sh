#/bin/sh

echo "Initializing test table"
psql -d sandbox -U docker -a -f /scripts/test.sql
echo "Done. Sample query result:"
psql -d sandbox -U docker -c "SELECT * from test"

