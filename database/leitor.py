import openpyxl
from pathlib import Path
import sys
import io
import mysql.connector

con = mysql.connector.connect(host='localhost',database='petcom59_petcomp_db', user='root', password='')
if con.is_connected():
    db_info = con.get_server_info()
    print("Conectado ao servidor MySQL versão ", db_info)
    cursor = con.cursor()
    cursor.execute("select database();")
    linha = cursor.fetchone()
    print("Conectado ao banco de dados ", linha)



# Setting the path to the xlsx file:
xlsx_file = Path('C:/xampp/htdocs/petcomp-ufma_site/database/Petianos.xlsx')
wb_obj = openpyxl.load_workbook(xlsx_file)


sheet = wb_obj.active
i = 0 
for row in sheet.iter_rows(max_row=108):
	if(i!=0):
		Data = []
		for cell in row:
			print(cell.value)
			Data.append(cell.value)
		sql = "INSERT INTO `petianos` (`nome_completo`, `primeiro_nome`, `ultimo_nome`, `ano`, `periodo`, `ativo`, `orientador`, `voluntario`, `imagem`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
		if not Data[9]==1:
			continue
		val = (Data[0], Data[1],Data[2], Data[3], Data[4], Data[5], Data[6], Data[7], Data[8])
		cursor.execute(sql,val)
		con.commit()
		print("Inserted", cursor.rowcount, "row(s) of data.")
	i=i+1

if con.is_connected():
    cursor.close()
    con.close()
    print("Conexão ao MySQL foi encerrada")
