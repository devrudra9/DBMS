SET ServerOutput ON;
DECLARE
num NUMBER := &num;
tempNum NUMBER;
ans NUMBER := 0;
rem NUMBER;

BEGIN

tempNum := num;
WHILE (tempNum != 0)
LOOP
rem := MOD(tempNum, 10);
ans := ans*10 + rem;
tempNum := FLOOR(tempNum/10);
END LOOP;

if (ans = num) 
then dbms_output.put_line(ans || ' is a Palindrome.');
else dbms_output.put_line(ans || ' is not a Palindrome.');
end if;

END;
/


OUTPUT :

Enter value for num: 2002002
old   2: num NUMBER := &num;
new   2: num NUMBER := 2002002;
2002002 is a Palindrome
