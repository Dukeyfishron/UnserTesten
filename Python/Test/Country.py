import time

my_name = input("Name a Country and I'll tell you stuff about it (Just type the name next to me :)  )")

if   my_name == "United Kingdom":
        print("Nice, there is tea there")
elif my_name == "Czechia":
        print("I hate that bloody country...")
elif my_name == "France":
        print("HON HON HON BAGUETTEE!!, WHITE FLAG, HON HON HON")
elif my_name == "Germany":
        print("Ohh, Kaiserland!, here's a quiz for you!")
        time.sleep(1)
        Quiz1 = input("What is the capital of the Free State of Brandenburg?")
        if Quiz1 == "Potsdam":
                print("Good job!")
                time.sleep(2)
                Quiz2 = input("Now, the A10 is located around Berlin, true or false?")
                if Quiz2 == "True":
                        print("Good job, passed my test!")
                        time.sleep(60)
                        print("you know you can now restart for more countries right?")
                else:
                        print("Nope, try again!")
        else:
                print("Sorry, you just messed up!")
else:
        print("That country doesn't exist")

     