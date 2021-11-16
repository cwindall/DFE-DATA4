# def add_calc(num1,num2):
#     ans=num1+num2
#     return ans
# print(add_calc(2,3))

# def grade(name,hmwk,asmnt,exam):
#     mark=((hmwk*4)+(asmnt*2)+exam)/3
#     if mark>=70:
#         degree='1'
#     elif mark>=60:
#         degree='2:1'
#     elif mark>=50:
#         degree='2:2'
#     elif mark>=30:
#         degree='3'
#     else:
#         degree='Fail'
#     return(name,mark,degree)


# def max(num1,num2,num3):
#     if num1>=num2 and num1>=num3:
#         return num1
#     elif num2>=num1 and num2>=num3:
#         return num2
#     else:
#         return num3

# def factorial(x):
#     fact=x
#     while x!=1:
#         fact=fact*(x-1)
#         x=x-1
#     return(fact)

# def unique(lst):
#     newlst=[]
#     for i in lst:
#         if i in newlst:
#             continue
#         else:
#             newlst.append(i)
#     return newlst
