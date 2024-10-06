# Mini Project- OOPs

# Exercise:1- Write a python program to replicate a Banking system. The following features are mandatory:
# 1. Account login
# 2. Amount Depositing
# 3. Amount Withdrawal
class ISO_Bank_Account:
    print("Welcome to ISO Bank !")

    def __init__(self, username, password):
        self.username = username
        self.password = password
        self.balance = 25000.00

    def login(self, username, password):
        return self.username == username and self.password == password

    def deposit(self, amount):
        self.balance += amount
        print("Amount of Rs", amount, "Deposited Successfully.", "\n THANK YOU!")
        self.display_balance()

    def withdrawal(self, amount):
        if amount > self.balance:
            print("SORRY!", "\n You have Insufficient Balance")
        else:
            self.balance -= amount
            print("Amount Rs,", amount, "Withdrawn Successfully.", "\n THANK YOU")
            self.display_balance()

    def display_balance(self):
        print("Your Current Balance: Rs.", self.balance, "\n THANK YOU")

def main():
    print("\n***Login Details***")

    username = input("username: ")
    password = input("Password: ")
    account = ISO_Bank_Account(username, password)

    if account.login(username, password):
        print("Login success!")
    else:
        print("Invalid Username / Password. Please Try Again !")
        return

    while True:
        print("Select Your Transaction:")
        print("1. Deposit")
        print("2. Withdraw")
        print("3. Check Balance")
        print("4. Exit")

        choice = input("Enter your choice: ")

        if choice == "1":
            amount = float(input("Enter the Amount : "))
            account.deposit(amount)
        elif choice == "2":
            amount = float(input("Enter the Amount : "))
            account.withdrawal(amount)
        elif choice == "3":
            account.display_balance()
        elif choice == "4":
            print("Thank you for using our Banking System! \n SEE YOU AGAIN")
            break
        else:
            print("Invalid choice.")

if __name__ == "__main__":
    main()