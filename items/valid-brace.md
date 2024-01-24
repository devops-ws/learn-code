---
rank: 1
link: https://leetcode.cn/problems/valid-parentheses/submissions/498038213/
description: 有效的括号
---

```golang
func isValid(s string) bool {
    if len(s) % 2 != 0 {
        return false
    }

    braceMap := map[rune]rune{
        '(': ')',
        '{': '}',
        '[': ']',
    }

    for len(s) > 0 {
        var leftIndex int
        var leftBrace rune

        var a, b, c int
        for i, cc := range s {
            if cc == '(' {
                a += 1
                leftIndex = i
                leftBrace = cc
            } else if cc == ')' {
                a += -1
            } else if cc == '{' {
                b += 1
                leftIndex = i
                leftBrace = cc
            } else if cc == '}' {
                b += -1
            } else if cc == '[' {
                c += 1
                leftIndex = i
                leftBrace = cc
            } else if cc == ']' {
                c += -1
            }
        }
        if !(a == 0 && b == 0 && c == 0) {
            return false
        }

        if len(s) == leftIndex + 1 {
            // left brace in the last char
            return false
        }
        if braceMap[leftBrace] != rune(s[leftIndex + 1]) {
            return false
        }

        if len(s) == 2 {
            break
        }
        s = s[0:leftIndex] + s[leftIndex+2:]
    }
    return true
}
```
