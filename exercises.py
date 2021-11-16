# A particular zoo determines the price of admission based on the age of the guest.
# Guests 2 years of age and less are admitted without charge. Children between 3 and
# 12 years of age cost $14.00. Seniors aged 65 years and over cost $18.00. Admission
# for all other guests is $23.00.
# - This looks like some sort of list?
# Create a program that begins by reading the ages of all of the guests in a group
# from the user, with one age entered on each line. 
guestage=input('Enter the guest\'s age:')
guestages=[int(guestage)]
while guestage!='':
    guestages.append(int(guestage))
    guestage=input('Enter the guest\'s age:')
    

# - some sort of input
# - allow multiple entries in one pass
# - 

#The user will enter a blank line to indicate that there are no more guests in the group. 
# - This looks like a conditional  `if blank line then break`?
# 
# 
# Then your program should display the admission cost for the group 
# with an appropriate message. The cost should be

total=0
for age in guestages:
    if age<=2:
        continue
    elif age <=12:
        total+=14
    elif age<65:
        total+=23
    else:
        total+=18
print("%.2f" % total)


# - We need to add up the prices
# - We need to print some things
# - and we need to print a message

# displayed using two decimal places
# - Can i find out how to format a float?