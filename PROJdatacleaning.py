# import string


# data = 'Jack and jill were walking up the hill on the way to the Supermarket to get some mineral water when Jack tripped over a pothole in the road.He fell down and broke his smartphone.    "Oh dear!" said jack;actually,he didn’t say "Oh dear",he used some words that Jill was sure his mother wouldn’t approve of and went on to make some descriptive comments on what he thought of the state of the roads leading up the hill.jill was so shocked that she didn’t look where she was going and fell down,too, tumbling all the way down the hill;  jack got up and went home to mend his phone.    jill suggested using her granny’s remedy of vinegar and brown paper to fix the phone; Jack replied with a comment that got him grounded for a week during which time he repaired his phone with duct tape and superglue but it was never the same again .'
# # ====================================
# # Do not change the code before this

# ## Add your functions here
# def clean(txt):
#     txt=txt.replace(';','.')
#     txt=txt.replace('jack','Jack')
#     txt=txt.replace('jill','Jill')
#     sentences0=txt.split('.')
#     sentences0.pop()
#     sentences1=[]
#     for a in sentences0:
#         sentences1.append(a.strip())
#     sentences2=[sentences1[0]]
#     sentences1[0]=sentences1[0].replace(sentences1[0][0],sentences1[0][0].upper(),1)
#     for b in sentences1[1:]:
#         sentences2.append(b.replace(b[0],'  '+b[0].upper(),1))
#     sentences3=[]
#     for c in sentences2:
#         sentences3.append(c+'.')
#     sentences4=[]
#     for d in sentences3:
#         phrases0=d.split(',')
#         phrases1=[phrases0[0]]
#         for e in phrases0[1:]:
#             phrases1.append(', '+e.strip())
#         full=''
#         for f in phrases1:
#             full+=f
#         sentences4.append(full)
#     sentences5=[]
#     for g in sentences4:
#         for h in g[1:]:
#             if h.isupper() and h!='J':
#                 i=g.replace(h,h.lower())
#             else:
#                 i=g
#         sentences5.append(i)
#     cleaned=''
#     for j in sentences5:
#         cleaned+=j
#     return cleaned

# clean(data)
            

        

