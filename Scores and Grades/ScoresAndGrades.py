
print("Please Enter Your Grades:")
scores = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
grades = ["F", "F", "F", "F", "F", "F", "F", "F", "F", "F", "F"]
for i in range(1,11):
    print '\nPlease enter score: ',
    thisScore = int(raw_input())
    if ((thisScore<60) or (thisScore>100)):
        print '\nTry again, please. Enter score ',
        thisScore = int(raw_input())
        if (thisScore<60) or (thisScore>100):
            print "You have failed to enter score correctly.  No Grades for you!"
            quit()
    else:
        scores[i] = thisScore
        if scores[i]>89: grades[i] = "A"
        elif scores[i]>79: grades[i] = "B"
        elif scores[i]>69: grades[i] = "C"
        else: grades[i] = "D"

# scores = [0, 87, 67, 95, 100, 75, 90, 89, 72, 60, 98]
print ("Scores and Grades")
for i in range (1, 11):
    print "Score: ",scores[i],"; Your grade is",grades[i]

print("End of the program. Bye!")
