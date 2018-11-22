"""

JsonEncoderDecoder - module for exchange between DataBaseWorker and functional modules.

Examples of exchange:

1. Data to JSON

Input (request in the 'author' field):

[['Omon Ra', 'Viktor Pelevin', 1991, '978-5-91339-723-2', '145x205', 144, 36, 'hard cover', 'Eksmo',
    'Comilfo. Comics of Russian authors', None],
    ['Generation "P"', 'Viktor Pelevin', 2009, '978-5-699-37905-7', '115x180', 352, 88, 'soft cover', 'Eksmo',
    'Pocket Book', None]]

Output (JSON):

{
  "BookName": "Omon Ra",
  "Author": "Viktor Pelevin",
  "YearOfPublishing": 1991,
  "ISBN": "978-5-91339-723-2",
  "Format": "145x205",
  "NumberOfPages": 144,
  "NumberOfPrintedSheets": 36,
  "Bind": "hard cover",
  "Publisher": "Eksmo",
  "BookSeries": "Comilfo. Comics of Russian authors",
  "NumberInSeries": None
}


"""