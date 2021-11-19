#Goal: “Create a lottery ball, or Hat, that takes a variable number of arguments that specify the number of balls of 
#each color that are in the hat. Give the object the ability to pick a random number of balls from the hat, which will
#then be used to compute the probability of picking a certain distribution of balls over a large number of experiments”


#Specify the colours and numbers of balls


cols=[]
ballsofcols=[]
totalballs=0
balls=[]
cont=''
while cont!='DONE':
    col=input('Please enter a ball colour: ')
    cols.append(col)
    num=int(input('How many balls of this colour are there? '))
    ballsofcols.append(num)
    totalballs+=num
    for i in range(1,num+1):
        balls.append(col)
    cont=input('If you do not wish to enter any more balls, please type DONE. Otherwise, hit return to continue. ')


#Calculate and print the expected distribution


expecteddist=[]
for i in ballsofcols:
    expecteddist.append(round((i/totalballs)*100,2))

print('We expect...')
for i in range(0,len(expecteddist)):
    print(f'{expecteddist[i]}% of balls to be {cols[i]}')


#Simulating a specified number of ball rolls


y=int(input('How many rolls would you like to simulate? '))
import random
n=0
count=[0]*len(cols)
z=0
while n!=y:
    x=random.randint(1,totalballs)
    chosen=random.sample(balls,x)
    z+=x
    for i in range(0,len(cols)):
        count[i]+=chosen.count(cols[i])
    n+=1


#Calcuating and printing the percentage of each colour that were rolled


actualdist=[]
for i in range(0,len(cols)):
    actualdist.append(round((count[i]/z)*100,2))


print(f'After simulating {y} rolls, we in fact find that...')
for i in range(0,len(expecteddist)):
    print(f'{actualdist[i]}% of balls picked were {cols[i]}') 






