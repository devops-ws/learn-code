---
description: 回文数
rank: 1
link: https://leetcode.cn/problems/palindrome-number/
---

```golang
func isPalindrome(num int) bool {
    if num < 0 {
        return false
    }
    if num == 0 {
        return true
    }
    nums := make([]int, 0)
    var token int
    var count int

    for num != 0 {
		token = num % 10
		nums = append(nums, token)
        count++
		num /= 10
	}

    for i := 0; i < count / 2; i++ {
        if nums[i] != nums[count-i-1] {
            return false
        }
    }
    return true
}
```
