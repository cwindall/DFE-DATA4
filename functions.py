
import pdb
pdb.set_trace()

def add_calc(num1,num2):
   ans=num1+num2
   return ans

def grade(name,hmwk,asmnt,exam):
    mark=((hmwk*4)+(asmnt*2)+exam)/3
    if mark>=70:
        degree='1'
    elif mark>=60:
        degree='2:1'
    elif mark>=50:
        degree='2:2'
    elif mark>=30:
        degree='3'
    else:
        degree='Fail'
    return(name,mark,degree)

def max(num1,num2,num3):
    if num1>=num2 and num1>=num3:
        return num1
    elif num2>=num1 and num2>=num3:
        return num2
    else:
        return num3

def factorial(x):
    fact=x
    while x!=1:
        fact=fact*(x-1)
        x=x-1
    return(fact)

def unique(lst):
    newlst=[]
    for i in lst:
        if i in newlst:
            continue
        else:
            newlst.append(i)
    return newlst

def getmagic(theday,themonth,theyear):
    if (theday * themonth) == theyear:
        return True
    else:
        return False

def dice(roll):
    import random
    if roll=='Roll the dice':
        return random.randint(1,6)

def joke():
    import pyjokes
    print(pyjokes.get_joke())

def tail_recursion(factorial, result = 1): #A function to find the factorial of a number using tail recursion
    if factorial == 1:
        return result
    else:
        return tail_recursion((factorial-1),(factorial + result))

def product(n):
    total = 1
    for i in n:
        total *= i
    return total

def is_prime(x):
    if x < 2:
        return False
    elif x==2 or x==3:
        return True
    else:
        count=0
        for n in range(2, x-1):
            if x % n != 0:
                count+=1
        if count==x-3:
            return True
        else:
            return False

