SET ServerOutput ON;
DECLARE
word varchar2(100) := '&word';
i NUMBER := 1;
alphabet CHAR;
cnt NUMBER := 0;
cnt2 NUMBER := 0;

BEGIN

FOR i in 1 .. LENGTH(word)
LOOP
alphabet := SUBSTR(word, i, 1);
if alphabet in ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u') 
then cnt := cnt+1;
else cnt2 := cnt2+1;
end if;
END LOOP;

dbms_output.put_line('Number of vowels in ' || word || ' is : ' || cnt);
dbms_output.put_line('Number of consonants in ' || word || ' is : ' || cnt2);

END;
/


OUTPUT :

Enter value for word: Database Management Systems
old   2: word varchar2(100) := '&word';
new   2: word varchar2(100) := 'Database Management Systems';
Number of vowels in Database Management Systems is : 9
Number of consonants in Database Management Systems is : 18
