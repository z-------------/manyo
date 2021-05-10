import std/unicode

const
  DakuKana = "がざだばぎじぢびぐずづぶげぜでべごぞどぼ".toRunes
  HandakuKana = "ぱぴぷぺぽ".toRunes
  SmallKana = "ゃゅょ".toRunes

func isDaku*(r: Rune): bool =
  DakuKana.contains(r)

func isHandaku*(r: Rune): bool =
  HandakuKana.contains(r)

func isSmall*(r: Rune): bool =
  SmallKana.contains(r)

func dakuToBase*(r: Rune): Rune =
  Rune(r.ord - 1)

func handakuToBase*(r: Rune): Rune =
  Rune(r.ord - 2)

func smallToBase*(r: Rune): Rune =
  Rune(r.ord + 1)

func toBase*(r: Rune): Rune =
  if r.isDaku:
    r.dakuToBase
  elif r.isHandaku:
    r.handakuToBase
  elif r.isSmall:
    r.smallToBase
  else:
    r
