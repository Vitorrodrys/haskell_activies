myLength list = if (null list) then 0 else 1 + (myLength (tail list))
lasts list tailIndex = if ((myLength list) == tailIndex) then list else lasts (tail list) tailIndex
firsts list headIndex = myReverse (lasts (myReverse list) headIndex)
myReverse list = if null list then [] else (myReverse (tail list))++[(head list)]
isPalindrome strOrList = myReverse (lasts strOrList (div (myLength strOrList) 2)) == firsts strOrList (div (myLength strOrList) 2) || null strOrList
main = print (isPalindrome "121121")