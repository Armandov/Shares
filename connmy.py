import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="biblioteca"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM libros WHERE Editorial IN ('Oracle','Press','Alfa Omega') ORDER by Autor;")

result = mycursor.fetchall()

for x in result:
  print(x)