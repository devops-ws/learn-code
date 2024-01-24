---
rank: 1
link: https://leetcode.cn/problems/roman-to-integer/
description: 罗马数字转整数
---

```golang
func romanToInt(s string) (num int) {
	var ok bool

	for len(s) > 0 {
		if s, ok = containAndRemove(s, "IV"); ok {
			num += 4
		} else if s, ok = containAndRemove(s, "IX"); ok {
			num += 9
		} else if s, ok = containAndRemove(s, "XL"); ok {
			num += 40
		} else if s, ok = containAndRemove(s, "XC"); ok {
			num += 90
		} else if s, ok = containAndRemove(s, "CD"); ok {
			num += 400
		} else if s, ok = containAndRemove(s, "CM"); ok {
			num += 900
		} else if s, ok = containAndRemove(s, "I"); ok {
			num += 1
		} else if s, ok = containAndRemove(s, "V"); ok {
			num += 5
		} else if s, ok = containAndRemove(s, "X"); ok {
			num += 10
		} else if s, ok = containAndRemove(s, "L"); ok {
			num += 50
		} else if s, ok = containAndRemove(s, "C"); ok {
			num += 100
		} else if s, ok = containAndRemove(s, "D"); ok {
			num += 500
		} else if s, ok = containAndRemove(s, "M"); ok {
			num += 1000
		} else {
			panic("unknown char: " + s)
		}
	}
	return
}

func containAndRemove(origin string, sub string) (result string, ok bool) {
	result = origin
	count := len(origin)
	for i := 0; i <= count-len(sub); i++ {
		if sub == origin[i:i+len(sub)] {
			result = origin[0:i] + origin[i+len(sub):]
			ok = true
			break
		}
	}
	return
}
```
