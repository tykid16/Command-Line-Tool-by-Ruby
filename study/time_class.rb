#! ruby -Ku 
#!/home/taikid16/.rbenv/shims/ruby

time_1 = Time.new
print(time_1, "\n")

time_2 = Time.now
print(time_2, "\n")

print(time_2.year, "年", time_2.month, "月", time_2.day, "日\n")

strTime = time_2.strftime("現在時刻 %H時 %M分 %S秒")
print(strTime, "\n")

strDay = time_2.strftime("現在日時 %B,%d(%A) %Y %Z")
print(strDay, "\n")

#時刻要素を配列として取得する
time_value = %w[sec min hour mday mon year wday yday isday zone]
time_array = time_2.to_a

index = 0

time_array.each do |value|
  print(time_value[index], ":", value, "\n")
  index += 1
end

#起算時からの経過秒数を取得する
passed_time_1 = time_2.to_f
passed_time_2 = time_2.to_i
passed_time_3 = time_2.tv_sec
after_1_hour = passed_time_2 + 3600

print("to_f (起算時からの経過秒数を浮動小数点数で取得): ", passed_time_1, "\n")
print("to_i (起算時からの経過秒数を整数で取得): ", passed_time_2, "\n")
print("tv_sec (起算時からの経過秒数を整数で取得): ", passed_time_3, "\n")
print("1時間後の時刻：", after_1_hour, "\n")

#時刻の加減算
time_a = time_1 + 10
time_b = time_1 - 10
equation = time_a - time_b
print("  ", time_a, "\n")
print("-)", time_b, "\n")
print("-----------------\n")
print("  ", equation, "\n")

#協定世界時との時差を取得する
time_difference_1 = Time.now.utc_offset
time_difference_2 = Time.now.gmt_offset
time_difference_3 = Time.now.gmtoff

print("世界協定時刻との時差は、\n")
print("time_difference_1 : ", time_difference_1, "\n")
print("time_difference_2 : ", time_difference_2, "\n")
print("time_difference_3 : ", time_difference_3, "\n")