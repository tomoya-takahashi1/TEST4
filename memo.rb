require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
    puts"拡張子を除いたファイルを入力してください"
    
    file_name = gets.chomp
    
    puts"メモ内容記入"
    puts"完了したらCtri+Dを押してください"
    
    
    memo = STDIN.read
    
    CSV.open("#{file_name}.csv","w") do |csv|
        csv << ["#{memo}"]
    end
    
elsif  memo_type == 2
    puts"既存のファイル名を記入してください"
    
     file_name = gets.chomp
     
    puts"メモ内容記入"
    puts"完了したらCtri+Dを押してください"
    
     memo = STDIN.read
      
    CSV.open("#{file_name}.csv","w") do |csv|
        csv << ["#{memo}"]
    end
    
end
