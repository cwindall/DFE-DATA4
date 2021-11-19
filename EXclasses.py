# class Student:
#     def __init__(self,name,age,class_='Student'):
#         self.name=name
#         self.age=age
#         self.class_=class_
#     def avgscore(self,test1,test2,test3):
#         print((test1+test2+test3)/3)
#     def speak(self):
#         print(f'Hi my name is {self.name}')

# John=Student("John","21")
# Jane=Student("Jane","22","Advanced")
# Jane.avgscore(48,43,39)
# Jane.speak()


# Goal: “Create a Budget class that can instantiate objects based on different budget categories like food,
# clothing, and entertainment. These objects should allow for depositing and withdrawing funds from each
# category, as well computing category balances and transferring balance amounts between categories”

# class Budget:
#     def __init__(self,category,balance):
#         self.category=category
#         self.balance=balance
#     def deposit(self,amount):
#         self.balance+=amount
#     def withdraw(self,amount):
#         self.balance-=amount
#     def transfer(self,destination,amount):
#         destination.balance+=amount
#         self.balance-=amount
#     def checkbalance(self):
#         print(self.balance)

# account1=Budget('Clothes',100)
# account2=Budget('Food',200)
# account3=Budget('Entertainment',100)

# account2.withdraw(50)
# account2.checkbalance()

# account1.transfer(account3,20)
# account1.checkbalance()
# account3.checkbalance()

#Create some classes under superclass bird

# from abc import ABC, abstractmethod
# class Bird(ABC):
#     fly=True
#     babies=0
#     def noise(self):
#         return 'Squawk'
#     def reproduce(self):
#         self.babies+=1
#     @abstractmethod
#     def eat(self):
#         pass
#     extinct=False

# class Owl(Bird):
#     def reproduce(self):
#         self.babies+=6
#     def eat(self):
#         return 'Peck peck'

#We've used polymorphism to override the reproduce method, abstraction with the eat method, and inheritance
# in this child class

# class Dodo(Bird):
#     fly=False
#     extinct=True
#     def eat(self):
#         return'Nom nom'
#     def reproduce(self):
#         if not self.extinct:
#             self.babies+=1

#We have used polymorphism to override the reproduce method, aand flt and extinct variables, encapsulation
#to keep the babies variable from being directly accessed as well as inheritance again


#Goal: “Create class and sub-class objects which represent different geometrical shapes, such as Rectangles and Squares”

# from abc import ABC, abstractmethod
# from math import sqrt

# class RegularPolygon(ABC):
#     def __init__(self):
#         self.sides=0.0
#         self.sidelength=0.0
#     def perimeter(self):
#         print(self.sides * self.sidelength)
#     @abstractmethod
#     def area(self):
#         pass

# class Triangle(RegularPolygon):
#     def __init__(self,sidelength):
#         self.sides=3
#         self.sidelength=sidelength
#     def area(self):
#         print(((sqrt(3))/4)*(self.sidelength**2))

# class Square(RegularPolygon):
#     def __init__(self,sidelength):
#         self.sides=4
#         self.sidelength=sidelength
#     def area(self):
#         print(self.sidelength**2)

# class Pentagon(RegularPolygon):
#     def __init__(self,sidelength):
#         self.sides=5
#         self.sidelength=sidelength
#     def area(self):
#         print(0.25 * sqrt( 25+ (10*sqrt(5) ) ) * ( (self.sidelength)**2) )

# pent=Pentagon(5)

