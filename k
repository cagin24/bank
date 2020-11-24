Map={} 
class BCash:
    def __init__(self, mb, username, password,balance=0):
        self.__password=password
        self.username=username
        self.__mb=mb
        self.balance=balance    
        
    def asdict(self):
        
        return {"username" : self.username,"object":self}
    
    def getbalance(self): # balance inquiry 
        return self.balance
    def setbalance(self,x): # recharge 
        self.balance+=x
    def result(self):
        print("Username : {}\nMobile No: {}\nBalance: {}".format(self.username,self.__mb,self.balance)) # Result
        
    def getps(self):
        return self.__password
from getpass import getpass as gp
class user(BCash):
    def __init__(self,mb,username, pwd,balance=0):
        super().__init__(mb,username,pwd)
    def recharge(self, x):
        super().setbalance(x)
        return "operation successful"
    def getbalance(self):
        return super().getbalance()
        
    def show(self):
        super().result()
    
    
            
    def getps(self):
        return super().getps()
  def usermanu(x):
    print("Hey , {}".format(x["username"]))
    
    print("Choose any option from the list\n")
    print("1.Send Money\n2.Balance Inquiry\n3.Mobile Recharge\n4.Logout")
    k=int(input("\nEnter your choice: "))
    return k
    
    def usercontrol(x):
    
    k=1
    while k!=4:
        ob=Map[x]["object"] # OBJECT of the user 
        k=usermanu(Map[x])
        if k==1:
            ok=1
            other= input("Enter the username to send the money\n")
            if other not in Map.keys():
                print("Sorry no such users\n")
                t= input("Enter the username to send the money\n")
                if t not in Map.keys():
                    print("Sorry no such users\nReturning to the console\n")
                    ok=0
                    break
            if ok==0:
                k=usermanu(Map[x])

            else:
                pay=int(input("Enter the amount to pay: "))

                if ob.balance<pay:
                    print("Unsufficient Balance\n")
                else:
                    ob.setbalance(-pay)
                    adj= Map[other]['object']
                    adj.setbalance(pay)
                    print("Payment done!")
        elif k==2:
            print("Your current balance is {}\n".format(ob.balance))
        elif k==3:
            inp=int(input("Enter the amount you want to recharge : \n"))
            ob.recharge(inp)    
            print("Recharge successful\n")
            print("Your current balance is {}\n".format(ob.balance))                      
def menu():
    print("=========================================\n\n   Welcome to the BCash payment system\n\n=========================================")
    print("Choose the option from the list\n")
    print("1. Sign up")
    print("2. Sign in")
    print("3. Exit")
    typ= int(input("Enter your option : "))
    return typ
typ=0    
def passvali(x):
    u,l,n=0,0,0
'''
    for i in x:
        if i=='a'  
            l=1
        else if i=='A' 
            u=1
        else if i=
            n=1
    return l==1 and u==1 and n==1 and len(x)>=6 
        

'''
while typ!=3:
    typ=menu()

    if typ==1:
        
        ok=0
        while ok!=1:
            username=input("Enter username: ").strip()
        
            if username not in Map.keys():
                ok=1
            else:
                print("Username already exists")
                
                
        mb=input("Enter mobile number: ").strip()
        pwd=gp("Enter password: ").strip()
#        pwd=gp("Enter password: ").strip()
 #       while passval(pwd)==0:
            
        
                    
        confirm= gp("Confirm password: ").strip()
        
        # Some scope to extend the work . How?
        # Using password validation [ One uppercase, One lowercase, one number]
        while(pwd!=confirm):
            print("Password does not match\nEnter the password again\n")
            confir=gp("Enter password: ")
        print("New Account is successfully created\n")
        x=user(mb,username, pwd)
        Map[username]=x.asdict()
      #  usercontrol(username)
            
    elif typ==2: 
        ok=0
        username=input("Enter username: ").strip()
        if username not in Map.keys():
            print("No such users")
            typ=menu()
        else:

            x=Map[username]["object"]
            ps=x.getps()
#           
            for i in range(3):
                pwd=gp("Enter password: ").strip()
                
                if ps==pwd:
                    ok=1
                    break
                    
        if ok==0:
                print("Unsuccessful login\nTaking back to the menu")
                typ=menu()
        else:
                print("Successful logged in\n")
        usercontrol(username)
                
        
        
    
