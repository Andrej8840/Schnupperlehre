from random import*
print("Willkommen lieber nutzer. In diesem Spiel geht es darum, dass du die ausgewählte Zahl errätst. Viel Spass!")
print("Gib eine Zahl ein")
myNumber=101
randomNumber = randint(0, 100)
versuch = 0
while myNumber != randomNumber:
    myNumber= int(input("Gib eine Zahl ein:"))
    versuch +=1
    
    if myNumber > randomNumber:
        print("Die Zahl ist grösser als die gesuchte Zahl")
    elif myNumber < randomNumber:
        print ("Die Zahl ist kleiner als die gesuchte Zahl")
    
        
    
   
      
     
print(f"Gratuliere! {randomNumber} war die richtige Zahl. Du hattest {versuch} Versuche.")      

    
