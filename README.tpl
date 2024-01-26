# learn-code
Improve your code skills via LeetCode. There {{len .}} questions and answers below:

{{ $rankMap := dict "1" "简单" "2" "中等" "3" "困难" -}}

| 题目 | 难度 | 答案 |
|---|---|---|
{{- range $val := .}}
| [{{$val.description}}]({{$val.link}}) | {{index $rankMap (printf "%d" $val.rank)}} | [Read me]({{$val.fullpath}}) |
{{- end}}
