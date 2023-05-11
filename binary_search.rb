# 【内容】
# 2年次必修『データ構造とアルゴリズム』の
# 二分探索 の課題を解かせるプログラムです。

l = 1,7,8,10,12,15,18,20,25,30
target = 19

s = 0; e = l.size-1
while true do
    if s == e then
        print "l[#{s}] = #{l[s]} "
        if l[s] == target then
            puts "== #{target}"
        else
            puts "≠ #{target}  よって、見つからない。"
        end
        break
    else
        mid = (s+e)/2
        print "mid = (#{s}+#{e})/2 = #{mid}, l[#{mid}] = #{l[mid]} "
        if l[mid] > target then
            puts "> #{target}"; e = mid-1
        elsif l[mid] < target then
            puts "< #{target}"; s = mid+1
        else
            puts "== #{target}"; break
        end
    end
end
