---
rank: 1
description:
link: 
---

```golang
func longestCommonPrefix(strs []string) string {
    if len(strs) == 0 {
        return ""
    } else if len(strs) == 1 {
        return strs[0]
    }

    lastIndex := -1
    var breakLoop bool
    for i, c := range strs[0] {
        for j := 1; j < len(strs); j++ {
            if i + 1 > len(strs[j]) {
                breakLoop = true
                break
            }

            if c != rune(strs[j][i]) {
                breakLoop = true
                break
            }
        }

        if breakLoop {
            break
        }
        lastIndex = i
    }
    if lastIndex == -1 {
        return ""
    }
    return strs[0][0: lastIndex + 1]
}
```
