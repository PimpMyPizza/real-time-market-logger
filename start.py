import os 

i = 0

while True:
    print(i)
    os.system('dart run')
    os.system('cp log.txt bybit_log_'+str(i)+'.txt')
    i = i + 1