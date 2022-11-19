SET ServerOutput ON;
DECLARE
year NUMBER := &year;
mod4 NUMBER;
mod100 NUMBER;
mod400 NUMBER;

BEGIN

mod4 := MOD(year, 4);
mod100 := MOD(year, 100);
mod400 := MOD(year, 400);

if ((mod4 = 0 and mod100 != 0) or mod400 = 0)
then dbms_output.put_line(year || ' is a LEAP YEAR.');
else dbms_output.put_line(year || ' is not a LEAP YEAR.');
end if;

END;
/


OUTPUT :

Enter value for year: 1700
old   2: year NUMBER := &year;
new   2: year NUMBER := 1700;
1700 is not a LEAP YEAR.
