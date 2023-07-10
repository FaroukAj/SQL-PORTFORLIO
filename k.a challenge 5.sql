<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="" readonly="0" foreign_keys="" case_sensitive_like="" temp_store="" wal_autocheckpoint="" synchronous=""/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="617"/><column_width id="4" width="0"/></tab_structure><tab_browse><current_table name="0,0:"/><default_encoding codec=""/><browse_table_settings/></tab_browse><tab_sql><sql name="SQL 1">CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
    
INSERT INTO persons (name, age) VALUES (&quot;Bobby McBobbyFace&quot;, 12);
INSERT INTO persons (name, age) VALUES (&quot;Lucy BoBucie&quot;, 25);
INSERT INTO persons (name, age) VALUES (&quot;Banana FoFanna&quot;, 14);
INSERT INTO persons (name, age) VALUES (&quot;Shish Kabob&quot;, 20);
INSERT INTO persons (name, age) VALUES (&quot;Fluffy Sparkles&quot;, 8);
INSERT INTO persons (name, age) VALUES (&quot;Shiny Sparkles&quot;, 12);

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, &quot;drawing&quot;);
INSERT INTO hobbies (person_id, name) VALUES (1, &quot;coding&quot;);
INSERT INTO hobbies (person_id, name) VALUES (2, &quot;dancing&quot;);
INSERT INTO hobbies (person_id, name) VALUES (2, &quot;coding&quot;);
INSERT INTO hobbies (person_id, name) VALUES (3, &quot;skating&quot;);
INSERT INTO hobbies (person_id, name) VALUES (3, &quot;rowing&quot;);
INSERT INTO hobbies (person_id, name) VALUES (3, &quot;drawing&quot;);
INSERT INTO hobbies (person_id, name) VALUES (4, &quot;coding&quot;);
INSERT INTO hobbies (person_id, name) VALUES (4, &quot;dilly-dallying&quot;);
INSERT INTO hobbies (person_id, name) VALUES (4, &quot;meowing&quot;);
INSERT INTO hobbies (person_id, name) VALUES (3, &quot;sewing&quot;);


SELECT persons.name, hobbies.name FROM persons JOIN hobbies ON persons.id = hobbies.person_id;


SELECT persons.name, hobbies.name FROM persons JOIN hobbies ON persons.id = hobbies.person_id WHERE persons.name= 'Bobby McBobbyFace';</sql><current_tab id="0"/></tab_sql></sqlb_project>
