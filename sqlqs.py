import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="biblioteca"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT autor,titulo FROM libros LIMIT 10;")

result = mycursor.fetchall()

for x in result:
  print(x)


  mycursor = mydb.cursor()

sql = "SELECT * FROM libros WHERE Editorial IN ('Oracle','Press','Alfa Omega');"

mycursor.execute(sql)

resultados = mycursor.fetchall()

for x in resultados:
  print(x)

  mycursor = mydb.cursor()

sql = "SELECT * FROM libros ORDER BY Autor"

mycursor.execute(sql)

myresult = mycursor.fetchall()

for x in myresult:
  print(x)

Schopenhauer = mydb.cursor()

sql = "SELECT * FROM libros WHERE Autor ='Arthur Schopenhauer'"

Schopenhauer.execute(sql)

Schopenhauers = mycursor.fetchall()

for s in Schopenhauers:
  print(s)
  #pip install matplotlib
  import matplotlib
  import matplotlib.pyplot as plt
  import numpy
  import numpy as np
print(matplotlib.__version__)
ra = np.array([35, 25, 25, 15])

plt.pie(ra)
plt.show()


x = numpy.random.uniform(0.0, 5.0, 250)

print(x)

xpoints = np.array([0, 6])
ypoints = np.array([0, 250])

plt.plot(xpoints, ypoints)
plt.ylabel("yyy")
plt.show()
# pip install pandas
import pandas
import pandas as pd
import os.path

df = pd.read_json('data.json')

print(df.to_string()) 

# create dataframe
df_html = pd.DataFrame({'nombre': ['Mono', 'Mona', 'Kiko', 'Lenin'],
     'Base de datos': [6.8, 7.4, 7.7, 7.8],
     'Desarollo web': [8.4, 5.6, 7.3, 6.9],
     'Programción': [7.8, 8.8, 8.2, 8.7]})

# render dataframe  html
html = df_html.to_html()
print(html)
#ecribir html a archivo
text_file = open("dataframe.html", "w")
text_file.write(html)
text_file.close()
import webbrowser
mifile = 'c:/Documents/HTML/NodeJs/MWS/views/dataframe.html'
url = 'http://docs.python.org/'
chrome_r = 'C:/Program Files/Google/Chrome/Application/chrome.exe %s'
webbrowser.get(chrome_r).open(mifile)