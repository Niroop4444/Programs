# Print a downward half-pyramid pattern of stars
# * * * * *  
# * * * *  
# * * *  
# * *  
# *

for i in range(6, 0 , -1):
    for j in range(i):
        print("*", end = " ")

    print()