def counter2000():
    for i in range(1,2001):
        if (i % 2) == 1:
            print "Number is ",i," this is an odd number."
        elif (i % 2) == 0:
            print "Number is ",i," this is an even number."
        else:
            print "Number is ",i," this is not an integer."

counter2000()
