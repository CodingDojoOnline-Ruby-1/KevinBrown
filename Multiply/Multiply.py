a = [2,4,10,16]
def multiply(list, multiplier):
    newList=[]
    for item in list:
        newList.append(item*5)
    return(newList) 

print(multiply(a,5))
