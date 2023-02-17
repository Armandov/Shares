import datetime
import os

command = "mysqldump -u root -p biblioteca" #-h [192.168.1.1]

# Objeto HOY
today = datetime.date.today()
# Formato YYYYMMDD
fecha = today.strftime("%Y%m%d")

# archivo de salida
file = "dumppy"+fecha

command = command+" > "+file+".sql"

os.system(command)