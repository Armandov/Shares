#python -m pip install --upgrade pip
#python -m pip install mysql-connector-python
import mysql.connector
""" https://dev.mysql.com/doc/connector-python/en/


sudo yum install mysql-community-client-plugins
Then install Connector/Python as follows:

$> sudo yum install mysql-connector-python
MySQLdb es un wapper delgado de python alrededor del módulo C que implementa la API para la base de datos MySQL.

Hace algún tiempo se usó la versión MySQLDb1 del contenedor y ahora se considera un legado.
Cuando MySQLDb1 comenzó a evolucionar a MySQLDb2 con correcciones de errores y compatibilidad con Python3,
 se bifurcó MySQLDb1 y así es como apareció mysqlclient,
con correcciones de errores y compatibilidad con Python3. 
Resumen, ahora tenemos MySQLDb2 que no está listo para su uso en producción,
MySQLDb1 como un controlador obsoleto y mysqlclient compatible con la comunidad con correcciones 
de errores y compatibilidad con Python3.

MySQL proporciona su propia versión del adaptador MySQL: el conector mysql, 
un módulo integral de Python que utiliza la API de MySQL sin dependencias de módulos C y 
solo se utilizan módulos estándar de Python.

mysqlclient vs mysql connector.

Una biblioteca compatible oficialmente, mysqlclient también debería ser una buena opción.
Ambos se están actualizando activamente con correcciones y nuevas funciones que puede ver mediante
confirmaciones activas en los últimos días.

casos en los que uno u otro no se adapte a tus necesidades.
Ambas bibliotecas siguen el estándar PEP-249 Python Database API Specification v2.0.

"""


# mcdb = mysql.connector.connect(
#   host="localhost",
#   user="root",
#   password=""
# )

# 0 
# print(mcdb)

# <mysql.connector.connection_cext.CMySQLConnection object at 0x00000251E20FB370>
#1 
# mycursor = mcdb.cursor()

# mycursor.execute("CREATE DATABASE pydb")

"""En bases de datos, el término cursor se refiere a una estructura de control 
utilizada para el recorrido (y potencial procesamiento)
 de los registros del resultado de una consulta.

Un cursor se utiliza para el procesamiento individual de las filas devueltas 
por el sistema gestor de base de datos para una consulta"""

# 3
# mycursor = mcdb.cursor()

# mycursor.execute("SHOW DATABASES")

# for x in mycursor:
#   print(x)

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="walmart"
)
 
# Si la base de datos no existe, obtendrá un error.

# 4

# mycursor = mydb.cursor()

# mycursor.execute("CREATE TABLE sucursal (IDsucursal INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255) , direccion VARCHAR(255))")

# 5
# mycursor = mydb.cursor()

# mycursor.execute("SHOW TABLES")

# for x in mycursor:
#   print(x)

#  mycursor = mydb.cursor()

# 6
mycursor = mydb.cursor()

sql = "INSERT INTO sucursal (name,direccion) VALUES (%s, %s)"
val = ("Oficce Depot","Acapulco 23")

""" val = [
  ('Peter', 'Lowstreet 4'),
  ('Amy', 'Apple st 652'),
  ('Hannah', 'Mountain 21'),
  ('Michael', 'Valley 345'),
  ('Sandy', 'Ocean blvd 2'),
  ('Betty', 'Green Grass 1'),
  ('Richard', 'Sky st 331'),
  ('Susan', 'One way 98'),
  ('Vicky', 'Yellow Garden 2'),
  ('Ben', 'Park Lane 38'),
  ('William', 'Central st 954'),
  ('Chuck', 'Main Road 989'),
  ('Viola', 'Sideway 1633')
] 
mycursor.executemany(sql, val)

"""

mycursor.execute(sql, val)

mydb.commit()  
"""  La sentencia COMMIT termina una unidad de trabajo y confirma los 
 cambios de la base de datos que ha realizado esa unidad de trabajo.
 Es obligatorio realizar los cambios, de lo contrario no se realizan cambios en la tabla. """

print(mycursor.rowcount, "insertado OK.")
