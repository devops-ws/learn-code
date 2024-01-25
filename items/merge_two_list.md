---
description: 合并两个有序链表
link: https://leetcode.cn/problems/merge-two-sorted-lists/
rank: 1
---

```golang
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func mergeTwoLists(list1 *ListNode, list2 *ListNode) *ListNode {
    if list1 == nil {
        return list2
    } else if list2 == nil {
        return list1
    }

    result := &ListNode{
        Val: list1.Val,
    }
    tpl := result
    for list1 != nil {
        for list2 != nil {
            if list2.Val <= list1.Val {
                tpl.Val = list2.Val
                tpl.Next = &ListNode{
                    Val: list1.Val,
                }
                tpl = tpl.Next
            } else {
                break
            }
            list2 = list2.Next
        }
        list1 = list1.Next
        if list1 != nil {
            tpl.Next = &ListNode{
                Val: list1.Val,
            }
            tpl = tpl.Next
        }
    }

    // the rest link are bigger
    for list2 != nil {
        tpl.Next = &ListNode{
            Val: list2.Val,
        }
        tpl = tpl.Next
        list2 = list2.Next
    }
    return result
}
```
