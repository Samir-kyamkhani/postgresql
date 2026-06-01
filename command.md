Get-Content .\first-part\03_first_table.sql | docker exec -i postgres17 psql -U admin -d postgres_sql_first_part

docker exec -it postgres17 psql -U admin -d postgres_sql_first_part
