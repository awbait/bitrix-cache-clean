#!/usr/bin/python
import multiprocessing
import os
from os.path import isfile, join

import pymysql

import config as cfg

db_con = pymysql.connect(host=cfg.mysql['host'], user=cfg.mysql['user'], password=cfg.mysql['password'],
                         db=cfg.mysql['db'], charset='utf8mb4', cursorclass='DictCursor')


def check_directory(directory_tuple):
    directory = directory_tuple[0]
    cursor = pymysql.cursors.Cursor(db_con)
    t = (directory,)
    cursor.execute("SELECT FILE_NAME FROM b_file WHERE SUBDIR=%s ", directory)
    tmpres = cursor.fetchall()
    files = [f for f in os.listdir(directory) if isfile(join(directory, f))]
    fileset = set(files)
    dbset = set()
    for tmp in tmpres:
        dbset.add(tmp[0])
    notset = fileset - dbset
    for file in notset:
        os.remove(directory + '/' + file)


cursor = pymysql.cursors.Cursor(db_con)
cursor.execute("""SELECT DISTINCT SUBDIR FROM b_file WHERE SUBDIR LIKE 'iblock%'""")
directories = cursor.fetchall()

pool = multiprocessing.Pool(4)
# for directory in directories:
#     check_directory(directory[0])
pool.apply_async(check_directory, directories)

cursor.execute("""SELECT SUBDIR, FILE_NAME FROM b_file WHERE SUBDIR LIKE 'iblock%'""")

result = cursor.fetchall()

