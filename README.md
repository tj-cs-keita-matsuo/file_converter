# FileConverter

指定されたファイルと変換表のCSVを元にファイル内の文字列を変換し、出力する

## Installation and execution
- elixirのインストール
- Gitからclone
- file_converterフォルダへ移動
- コマンド実行
```code
Macの場合:
./file_converter --src=import.txt --csv=convert.csv
Windowsの場合:
escript ./file_converter --src=import.txt --csv=convert.csv
```

上記がダメだった場合は、iexから実行
- iex -S mixでコンパイルし、iexを起動
- FileConverter.run("import.txt", "convert.csv")

export.txtというファイルがfile_converter配下にできます。
