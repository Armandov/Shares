import datetime
import os

command = "mysqldump -u [root] -p[""] [bilioteca]" #-h [192.168.1.1]

# Objeto HOY
today = datetime.date.today()
# Formatea como YYYYMMDD
fecha = today.strftime("%Y%m%d")

# Fichero de salida
file = "dumppy"+fecha

command = command+" > c:"+file+".sql"

os.system(command)