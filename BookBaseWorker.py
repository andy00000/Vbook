"""
BookBaseWorker - module for read/write data into DataBase.1 (DataBase of books)

DataBase structure:

1. Book name -> STRING
2. Book author (authors) -> LIST OF STRINGS
3. The year of publishing -> DATA
4. ISBN -> STRING
5. Format -> SET OF STRINGS
6. Number of pages -> INTEGER
7. Number of printed sheets -> INTEGER
8. Binding -> SET OF STRINGS
9. Publisher (publishing house) -> SET OF STRINGS
10. Book series -> SET OF STRINGS
11. Number in series -> INTEGER

2 - 'Book author' is a separate table in database
6 - 'Format' is a separate table in database
8 - 'Binding' is a separate table in database
9 - 'Publisher (publishing house)' is a separate table in database

"""

