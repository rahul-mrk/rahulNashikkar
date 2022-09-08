public with sharing class AccountSelectListClass {
    public Id acid {set;get;}
    public Id conid {set;get;}
    
   public List<SelectOption>  getOptions()
    {
        List<SelectOption> accList = new List<SelectOption>();
        accList.add(new SelectOption('--select--','--Select Account--'));
        List<Account> accs =  [select name ,id from account];
        for(Account ac : accs){
            accList.add(new SelectOption(ac.id,ac.name));
        }
         
        return accList;
    }
    
    public List<SelectOption>  getOptions2()
    {
        List<SelectOption> accList = new List<SelectOption>();
        accList.add(new SelectOption('--select--','--Select Account--'));
        List<Contact> accs =  [select name ,id from Contact where Accountid =:acid];
        for(Contact ac : accs){
            accList.add(new SelectOption(ac.id,ac.name));
        }
         
        return accList;
    }
    
    
    public List<Account> getAccs()
    {
        return [select name,website,rating,ownership from account where id = :acid];
    }
    
    public List<Contact> getCon()
    {
        return [select firstName, lastName, Phone from Contact where id = :conid];
    }
}