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
ans := rem*rem*rem + ans;
tempNum := FLOOR(tempNum/10);
END LOOP;

if (ans = num)
then dbms_output.put_line(ans || ' is an Armstrong number.');
else dbms_output.put_line(ans || ' is not an Armstrong number.');
end if;

END;
/


OUTPUT :

Enter value for num: 407
old   2: num NUMBER := &num;
new   2: num NUMBER := 407;
407 is an Armstrong number.
