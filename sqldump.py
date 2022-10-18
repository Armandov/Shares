import datetime
import os

command = "mysqldump -h [192.168.1.1] -u [armand] -p[dbs] [bilioteca]"

# Objeto HOY
today = datetime.date.today()
# Formatea como YYYYMMDD
fecha = today.strftime("%Y%m%d")

# Fichero de salida
file = "dump"+fecha

command = command+" > c:"+file+".sql"

os.system(command)