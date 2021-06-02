class Person: 
    def __init__(self, city, name, age):
        self.city = city
        self.name = name
        self.age = age
    
andrej = Person("Unterägeri","Andrej",14) 
print(andrej.name)
print(andrej.city)
print(andrej.age)

jacek = Person("Oberägeri","Jacek",19)
print(jacek.name)
print(jacek.city)
print(jacek.age)
