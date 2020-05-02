#! ruby -Ku 
#!/home/taikid16/.rbenv/shims/ruby

#Dateクラスは組み込みクラスとはなっていない
require "date"

date_1 = Date.new(2020, 5, 2)
print(date_1, "\n")

today = Date.today
print(today, "\n")

#月末の日付でDateクラスのオブジェクトを作成する
date_2 = Date.new(2020, 5, -1)
print(date_2, "\n")

#年月日などの日付要素を取得する
print("今日は、", today.year, "年", today.month, "月", today.day, "日です。\n" )

#日付の加減算
before_month = today << 1
next_month = today >> 1
print("先月は、", before_month, "です。\n")
print("来月は、", next_month, "です。\n")

new_years_day = Date.new(2020, 1, 1)
print(new_years_day, "\n")

difference = today - new_years_day

print("正月から", difference , "日経過しました。\n")

#指定フォーマットで文字列に変換する
print(today.strftime("%Y年 %m月 %d日, %H:%M:%S"), "\n")

#DateTime class
date_3 = DateTime.new(2020, 5, 3, 1, 37, 52, 0.334)
print(date_3, "\n")

date_4 = DateTime.now
print("DateTime class : ", date_4, "\n")

#時分秒などの時刻要素を取得する
print(date_4.year, "年", date_4.month, "月", date_4.day, "日")
print(date_4.hour, "時", date_4.min, "分", date_4.sec, "秒", date_4.zone, "\n")

#時刻も含めて指定フォーマットで文字列に変換する
print(date_4.strftime("%Y年 %m月 %d日 %H時 %M分 %S秒\n"))