import std/rdstdin
import std/tables
import std/unicode

import ./kana

const t: Table[string, string] = {
  "あ": "安",
  "い": "以",
  "う": "宇",
  "え": "衣",
  "お": "於",

  "か": "加",
  "き": "機",
  "く": "久",
  "け": "計",
  "こ": "己",
  
  "さ": "左",
  "し": "之",
  "す": "寸",
  "せ": "世",
  "そ": "曾",
  
  "た": "太",
  "ち": "知",
  "つ": "川",
  "て": "天",
  "と": "止",
  
  "な": "奈",
  "に": "仁",
  "ぬ": "奴",
  "ね": "祢",
  "の": "乃",
  
  "は": "波",
  "ひ": "比",
  "ふ": "不",
  "へ": "部",
  "ほ": "保",
  
  "ま": "末",
  "み": "美",
  "む": "武",
  "め": "女",
  "も": "毛",

  "や": "也",
  "ゆ": "由",
  "よ": "與",
  
  "ら": "良",
  "り": "利",
  "る": "留",
  "れ": "礼",
  "ろ": "呂",
  
  "わ": "和",
  "ゐ": "為",
  "ゑ": "恵",
  "を": "遠",

  "ん": "无",
}.toTable

when isMainModule:
  var running = true

  setControlCHook do:
    running = false

  while running:
    let line = readLineFromStdin("> ")
    for r in line.runes:
      let c = $r.toBase
      if t.hasKey(c):
        stdout.write(t[c])
      else:
        stdout.write(c)
    stdout.write('\n')
