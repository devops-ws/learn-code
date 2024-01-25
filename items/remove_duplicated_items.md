---
description: 删除有序数组中的重复项
link: https://leetcode.cn/problems/remove-duplicates-from-sorted-array/description/
rank: 1
---

```golang
func removeDuplicates(nums []int) int {
    count := len(nums)
    if count <= 1 {
        return count
    }
    duplicated := map[int]struct{}{} // using a map to find the duplicated item easily
    for i := 0; i < len(nums); {
        num := nums[i]
        if _, ok := duplicated[num]; ok {
            nums = append(nums[0:i], nums[i+1:]...)
        } else {
            duplicated[num] = struct{}{}
            i++
        }
    }
    return len(nums)
}
```
