#!/usr/bin/python

import pymysql
import config as cfg

db_con=pymysql.connect(host=cfg.mysql['host'], user=cfg.mysql['user'], password=cfg.mysql['password'], db=cfg.mysql['db'], charset='utf8mb4', cursorclass='DictCursor')
cursor=pymysql.cursors.Cursor(db_con)
cursor.execute("""SELECT SUBDIR, FILE_NAME FROM b_file WHERE SUBDIR LIKE 'iblock%'""")

result = cursor.fetchall()

print(result.length())
