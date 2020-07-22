## Purpose
This script is used to findout the invalid email address from the given file which contains both valid and invalid email address.

## How to use steps:-
```console
1. check out the code to your local system
2. execute the shell script with the below syntax with command line argument passing the file which contains the list of email address.
     Syntax:- ./listinvalidemail.sh emailaddress.txt invalidemailaddressresult.txt
3. For the shell script we need to pass two parametes the first one is email address and the second parameter is the result file where we need to store the invalid email address.
```
## Testing
```console
  Scenario 1. Pass the filename with email address it works as expected.  
  Scenario 2. Pass the filename with 0 characters, it returns file is empty. 
  Scenario 3. Pass the filename which doesn't exist it says the file doesn't exist.
```

