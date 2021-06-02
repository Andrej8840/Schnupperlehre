#programm a game
from random import randint


print("Welcome to my game. In this game two players gonna battle each other.")
name = input("Enter the name of player 1:")
print(name)
name2 = input("Enter the name of Player 2:")
print(name2)

class Player: 
    def __init__(self, maxAttack, maxDefense, health, name):
        self.maxAttack = maxAttack
        self.maxDefense = maxDefense
        self.health = health
        self.name = name

    def get_attack(self):     
        return randint(0, self.maxAttack)

    def get_defense(self):
        return randint(0, self.maxDefense)


player1 = Player(30,20,200,name)
player2 = Player(30,20,200,name2)

# attackPlayer1 = randint(1, player1.attack)

# print(player1.attack)
# print(player1.attack-player1.defense)
# print(player1.attack)

while player1.health > 0 and player2.health > 0:
    option = input("Choose what you want to do: \
    1.... attack \
    2.... defense")

    bonus = 10
    # print(f"this is player.get_attack:{player1.get_attack()}")
    # print(f"this is player.get_defense:{player2.get_defense()}")
    calculatedDamage = player1.get_attack() - player2.get_defense()
    calculatedDefense = player2.get_attack() - player1.get_defense()
    if option == 1:
        calculatedDamage +=bonus
    elif option == 2:
        calculatedDefense +=bonus
    if calculatedDamage <= 0:
        print("Die Attacke von dir wurde blockiert")
    else: 
        player2.health -=calculatedDamage
        print(f"Du hast / Sie haben so viel Schaden gemacht: {calculatedDamage}. Der Gegner hat noch so viel Leben:{player2.health}")
if player1.health > 0:
    print(f"Gratuliere {player1.name} zu deinem Sieg")
if player2.health > 0: 
    print(f"Gratuliere {player2.name}zu deinem Sieg")





# if player1 set attack :
#     player2.health - player1.attack


