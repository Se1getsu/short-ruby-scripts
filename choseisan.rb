# 【内容】
# 調整さんの日程メーカー。
# Usage:
#   9,10行目に日付と時間帯を入力して以下のコマンドを実行する。
#   ruby choseisan.rb | pbcopy

require "date"

# 日程の書式ヒント （今月を4月とする）
# 01 -> 4/1
# 12 -> 4/12
# 5/1 -> 5/1
日程 = %w(12 13 14 15 16)
時間帯 = %w(13:00~ 14:00~ 15:00~ 16:00~ 17:00~)

for d in 日程.map{Date.parse(_1)}
    for t in 時間帯
        y="日月火水木金土"[d.wday]
        puts d.strftime"%-m/%-d(#{y}) #{t}"
    end
end
