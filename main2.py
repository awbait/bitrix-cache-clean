#!/usr/bin/python
import multiprocessing
import os
from os.path import isfile, join

import pymysql

db_con = pymysql.connect(host='81.29.128.61', user='bitrix', password='paTfHGyCYro6fdcudBz',
                         db='satin', charset='utf8mb4', cursorclass='DictCursor')


def check_directory(directory_tuple):
    directory = directory_tuple['SUBDIR']
    db_con = pymysql.connect(host='81.29.128.61', user='bitrix', password='paTfHGyCYro6fdcudBz',
                             db='satin', charset='utf8mb4', cursorclass='DictCursor')
    cursor = pymysql.cursors.Cursor(db_con)
    t = (directory,)
    cursor.execute("SELECT FILE_NAME FROM b_file WHERE SUBDIR=%s ", directory)
    tmpres = cursor.fetchall()
    files = [f for f in os.listdir(directory) if isfile(join(directory, f))]
    print(files)
    fileset = set(files)
    dbset = set()
    for tmp in tmpres:
        dbset.add(tmp[0])
    notset = fileset - dbset
    for file in notset:
        print(directory + '/' + file)
        os.remove(directory + '/' + file)
    return len(notset)


pool = multiprocessing.Pool(4)

cursor = pymysql.cursors.DictCursor(db_con)
cursor.execute("""SELECT DISTINCT SUBDIR FROM b_file WHERE SUBDIR LIKE 'iblock%'""")
directories = cursor.fetchall()

res = pool.map(check_directory, directories)
print(res)
print(sum(res))
