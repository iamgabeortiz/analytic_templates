# Postgres Snippets

This is a work in progress. Please Come again soon!

## Return a list of schemas


    SELECT distinct table_schema
    FROM information_schema.tables 
    where 
        table_schema not like 'pg_catalog' 
        and table_schema not like 'information_schema'
    ;


** Tables - public
   #+begin_src sql :engine postgresql :exports both :cmdline -h 208.105.139.234 -d WestVirginia -U achoens
     SELECT distinct table_name 
     FROM information_schema.tables 
     WHERE table_schema = 'public';  
   #+end_src

   #+RESULTS:
   | table_name |


   _Table 1_
   #+begin_src sql :engine postgresql :exports both :cmdline -h 208.105.139.234 -d WestVirginia -U achoens     
     SELECT column_name 
     FROM information_schema.columns 
     WHERE table_name ='provider';   
   #+end_src

   #+RESULTS:
   | column_name |
