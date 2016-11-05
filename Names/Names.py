# =================== Instructions =====================
# Part I
#
# Given the following list:
#
# students = [
#      {'first_name':  'Michael', 'last_name' : 'Jordan'},
#      {'first_name' : 'John', 'last_name' : 'Rosales'},
#      {'first_name' : 'Mark', 'last_name' : 'Guillen'},
#      {'first_name' : 'KB', 'last_name' : 'Tonel'}
# ]
#
# Create a program that outputs:
#
# Michael Jordan
# John Rosales
# Mark Guillen
# KB Tonel
#
# Part II
#
# Now, given the following dictionary:
#
# users = {
#  'Students': [
#      {'first_name':  'Michael', 'last_name' : 'Jordan'},
#      {'first_name' : 'John', 'last_name' : 'Rosales'},
#      {'first_name' : 'Mark', 'last_name' : 'Guillen'},
#      {'first_name' : 'KB', 'last_name' : 'Tonel'}
#   ],
#  'Instructors': [
#      {'first_name' : 'Michael', 'last_name' : 'Choi'},
#      {'first_name' : 'Martin', 'last_name' : 'Puryear'}
#   ]
#  }
#
# Create a program that prints the following format (including number of characters in each combined name):
#
# Students
# 1 - MICHAEL JORDAN - 13
# 2 - JOHN ROSALES - 11
# 3 - MARK GUILLEN - 11
# 4 - KB TONEL - 7
# Instructors
# 1 - MICHAEL CHOI - 11
# 2 - MARTIN PURYEAR - 13

# =================== End of Instructions =====================


students = [
     {'first_name':  'Michael', 'last_name' : 'Jordan'},
     {'first_name' : 'John', 'last_name' : 'Rosales'},
     {'first_name' : 'Mark', 'last_name' : 'Guillen'},
     {'first_name' : 'KB', 'last_name' : 'Tonel'}
]
users = {
 'Students': [
     {'first_name':  'Michael', 'last_name' : 'Jordan'},
     {'first_name' : 'John', 'last_name' : 'Rosales'},
     {'first_name' : 'Mark', 'last_name' : 'Guillen'},
     {'first_name' : 'KB', 'last_name' : 'Tonel'}
  ],
 'Instructors': [
     {'first_name' : 'Michael', 'last_name' : 'Choi'},
     {'first_name' : 'Martin', 'last_name' : 'Puryear'}
  ]
 }
print ("\n" * 100)
# ================= Code Part One ========================

for student in students:
    print student['first_name'], student['last_name']

print
# ================= Code Part Two ========================

for userType, user in users.items():
    personNumber = 0
    print
    print userType
    for person in user:
        personNumber += 1
        # print person['first_name']
        # thisFirstName = users[user['first_name']]
        count = len(person['first_name'])+len(person['last_name'])
        print personNumber, "-", person['first_name'], person['last_name'], "-", count


# ================ End of Part Two =======================
print
print("Data Error: Ocra is not a valid food.")
print
