from sqlalchemy import create_engine
from sqlalchemy.schema import MetaData

sandbox_engine = create_engine(
    'postgresql://docker:docker@postgres-10:5432/sandbox')
meta = MetaData()
meta.reflect(bind=sandbox_engine)

result_set = sandbox_engine.execute("SELECT * FROM test")
for r in result_set:
  print(r)

print("Printing all tables in DB...")
for t in meta.tables:
  print(t)

print("Printing contents of test")
table_test = meta.tables['test']
for r in sandbox_engine.execute(table_test.select()):
  print(r)
