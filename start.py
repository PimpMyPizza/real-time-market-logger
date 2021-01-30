import os
from datetime import datetime

while True:
    print(datetime.now().strftime("%d/%m/%Y %H:%M"))
    os.system('dart run')
    os.system('cp log.txt logs/bybit_log__'+datetime.now().strftime("%Y_%m_%d__%H_%M_%S")+'.txt')