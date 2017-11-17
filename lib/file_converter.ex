defmodule FileConverter do
  # 変換するファイルの読み込み
  def read_source(path) do
    case File.read(path)  do
      { :ok, body } -> body
    end
  end

  # CSVの変換表を読み込み
  def read_convert_csv(path) do
    File.stream!(path)
    |> Stream.map(&String.trim/1)
    |> Stream.map(&(String.split(&1, ",")))
    |> Stream.map(fn([bf, af]) -> %{ before_word: bf, after_word: af } end)
    |> Enum.to_list
  end

  # reduce的な処理
  def reduce([], value, _), do: value
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  # 処理実行
  def run(src_file, csv_file) do
    source = read_source(src_file)
    result = read_convert_csv(csv_file)
    |> reduce(source, fn(word, src) -> String.replace(src, word.before_word, word.after_word) end)
    File.write("export.txt", result)
  end

  # コマンドラインからの実行
  def main(args) do
    options = args |> parse_args
    run(options[:src], options[:csv])
  end

  # コマンドライン引数のパース
  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [src: :string, csv: :string]
    )
    options
  end
end
