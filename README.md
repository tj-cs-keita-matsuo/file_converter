# FileConverter

指定されたファイルと変換表のCSVを元にファイル内の文字列を変換し、出力する

## Installation and execution
1.elixirのインストール
2.Gitからclone
3.file_converterフォルダへ移動
4. 例：./file_converter --src=import.txt --csv=convert.csv

4がダメだった場合は、iexから実行
5.iex -S mixでコンパイルし、iexを起動
6.FileConverter.run("import.txt", "convert.csv")

export.txtというファイルがfile_converter配下にできます。
