Healper
===
[back](../README.md)

Table of Contents

<!--ts-->
   * [Healper](helper.md#healper)
      * [dd](helper.md#dd)

<!-- Added by: runner, at: Thu Jul 30 09:22:35 UTC 2020 -->

<!--te-->

## dd
```
proc dd(outputs:varges[string])
```
`dd()` is essentially adding a break point in your code which dumps the properties of an object to your browser.  
This proc is only available in develop mode.

```nim
var a = %*{
  "key1": "value1",
  "key2": "value2",
  "key3": "value3",
  "key4": "value4",
}
dd($a,　"abc",　this.request.repr)
```

![dd](helper-dd.jpg)
