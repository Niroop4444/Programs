# Print the following pattern
# 1 
# 2 2 
# 3 3 3 
# 4 4 4 4 
# 5 5 5 5 5

for i in range(6):
    for j in range (i):
        print(i, end = " ")

    print("")

# Print the following pattern
# 1 
# 1 2  
# 1 2 3 
# 1 2 3 4 
# 1 2 3 4 5

for i in range(6):
    for j in range(i):
        print(j +1, end = " ")
    
    print()

# Print the following pattern
# 1
# 2 3
# 4 5 6
# 7 8 9 10
num = 1
for i in range(5):
    for j in range(i):
        print(num, end = " ")
        num += 1

    print()