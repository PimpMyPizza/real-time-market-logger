import os
from datetime import datetime

while True:
    print(datetime.now().strftime("%d/%m/%Y %H:%M"))
    os.system('dart run')
    os.system('cp log.txt bybit_log__'+datetime.now().strftime("%d_%m_%Y__%H_%M_%S")+'.txt')