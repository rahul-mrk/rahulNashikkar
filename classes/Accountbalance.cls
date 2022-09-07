public class Accountbalance {
	public integer Balance;
    public Accountbalance (){
        Balance = 0;   //non parameterised
    }
    public Accountbalance (integer AccountBalance){
        Balance = AccountBalance;
    }
    public void getBalance(){
        system.debug('Your Account Balance is : ' + Balance);
    } 
    public void deposit(integer Deposit){
        Balance = Balance + Deposit;
    system.debug('Updated Balance is : ' + Balance);
	}
    public void withdrow(integer withdrow){
        if(withdrow > Balance){
            system.debug('insufficient balance');
            return;
        }
        Balance = Balance - withdrow;
        system.debug('Updated Balance is : '+ Balance);
    }
	public static list<contact> conlist(){
	return [select lastname from contact limit 10];
	}
}