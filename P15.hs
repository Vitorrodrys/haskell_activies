repli_helper [] repeat_times actual_time result = result
repli_helper list repeat_times actual_time result =
    if actual_time == 0 then
        repli_helper (tail list) repeat_times repeat_times result
    else
        repli_helper list repeat_times (actual_time-1) (result ++ [head list])


repli list repeat_times = repli_helper list repeat_times repeat_times []

main = do
    print (repli "abc" 3)
    print (repli "abcda" 2)
    print (repli "abc" 0)
    print (repli "abc" 1)
    print (repli [1,2,3] 1)
    print (repli [1,2,3] 5)