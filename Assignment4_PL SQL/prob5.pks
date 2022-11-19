SET ServerOutput ON;
DECLARE
num1 NUMBER := &num1;
num2 NUMBER := &num2;
num3 NUMBER := &num3;
lcm NUMBER;

BEGIN

lcm := num1;

WHILE (MOD(lcm, num1) != 0) or (MOD(lcm, num2) != 0) or (MOD(lcm, num3) != 0)
LOOP
lcm := lcm+1;
END LOOP;

dbms_output.put_line(lcm || ' is the LCM of ' || num1 || ', ' || num2 || ', ' || num3);
END;
/


OUTPUT :

Enter value for num1: 4
old   2: num1 NUMBER := &num1;
new   2: num1 NUMBER := 4;
Enter value for num2: 5
old   3: num2 NUMBER := &num2;
new   3: num2 NUMBER := 5;
Enter value for num3: 6
old   4: num3 NUMBER := &num3;
new   4: num3 NUMBER := 6;
60 is the LCM of 4, 5, 6
