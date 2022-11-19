SET ServerOutput ON;
DECLARE
num NUMBER := &num;
num2 NUMBER := 1;
ans NUMBER := 0;

BEGIN

WHILE num2 < num
LOOP
if MOD(num, num2) = 0
then ans := ans + num2;
end if;
num2 := num2 + 1;
END LOOP;
    
if (ans = num)
then dbms_output.put_line(num || ' is a Perfect number.');
else dbms_output.put_line(num || ' is not a Perfect number.');
end if;

END;
/


OUTPUT :

Enter value for num: 6
old   2: num NUMBER := &num;
new   2: num NUMBER := 6;
6 is a Perfect number.
