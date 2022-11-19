SET ServerOutput ON;
DECLARE
num1 NUMBER := &num1;
num2 NUMBER := &num2;
num3 NUMBER := &num3;
gcd NUMBER;
maxi NUMBER := 0;
i NUMBER := 1;

BEGIN
if (num1 > num3 and num2 > num3)
then maxi := num1;
elsif (num2 > num3 and num2 > num1)
then maxi := num2;
else maxi := num3;
end if;

FOR i in REVERSE 1 .. maxi
LOOP
if((MOD(num1, i) = 0) and (MOD(num2, i) = 0) and (MOD(num3, i) = 0))
then gcd := i; EXIT;
end if;
gcd := 1;
END LOOP;

dbms_output.put_line(gcd || ' is gcd of ' || num1 || ', ' || num2 || ', ' || num3);

END;
/


OUTPUT :

Enter value for num1: 5
old   2: num1 NUMBER := &num1;
new   2: num1 NUMBER := 5;
Enter value for num2: 10
old   3: num2 NUMBER := &num2;
new   3: num2 NUMBER := 10;
Enter value for num3: 15
old   4: num3 NUMBER := &num3;
new   4: num3 NUMBER := 15;
5 is gcd of 5, 10, 15
