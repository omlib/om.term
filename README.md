
# OM|TERM

---

## Block Elements

```
┌─┬┐  ╔═╦╗  ╓─╥╖  ╒═╤╕
│ ││  ║ ║║  ║ ║║  │ ││
├─┼┤  ╠═╬╣  ╟─╫╢  ╞═╪╡
└─┴┘  ╚═╩╝  ╙─╨╜  ╘═╧╛
┌───────────────────┐
│  ╔═══╗ Some Text  │▒
│  ╚═╦═╝ in the box │▒
╞═╤══╩══╤═══════════╡▒
│ ├──┬──┤           │▒
│ └──┴──┘           │▒
└───────────────────┘▒
 ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

```


### Character Table

Code | | Description
------------- |-------------
U+2580 | ▀ | Upper half block
U+2581 | ▁ | Lower one eighth block
U+2582 | ▂ | Lower one quarter block
U+2583 | ▃ | Lower three eighths block
U+2584 | ▄ | Lower half block
U+2585 | ▅ | Lower five eighths block
U+2586 | ▆ | Lower three quarters block
U+2587 | ▇ | Lower seven eighths block
U+2588 | █ | Full block
U+2589 | ▉ | Left seven eighths block
U+258A | ▊ | Left three quarters block
U+258B | ▋ | Left five eighths block
U+258C | ▌ | Left half block
U+258D | ▍ | Left three eighths block
U+258E | ▎ | Left one quarter block
U+258F | ▏ | Left one eighth block
U+2590 | ▐ | Right half block
U+2591 | ░ | Light shade
U+2592 | ▒ | Medium shade
U+2593 | ▓ | Dark shade
U+2594 | ▔ | Upper one eighth block
U+2595 | ▕ | Right one eighth block
U+2596 | ▖ | Quadrant lower left
U+2597 | ▗ | Quadrant lower right
U+2598 | ▘ | Quadrant upper left
U+2599 | ▙ | Quadrant upper left and lower left and lower right
U+259A | ▚ | Quadrant upper left and lower right
U+259B | ▛ | Quadrant upper left and upper right and lower left
U+259C | ▜ | Quadrant upper left and upper right and lower right
U+259D | ▝ | Quadrant upper right
U+259E | ▞ | Quadrant upper right and lower left
U+259F | ▟ | Quadrant upper right and lower left and lower right


### Compact Character Table

| 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F
- | -
U+258x | ▀ | ▁ | ▂ | ▃ | ▄ | ▅ | ▆ | ▇ | █ | ▉ | ▊ | ▋ | ▌ | ▍ | ▎ | ▏
U+259x | ▐ | ░ | ▒ | ▓ | ▔ | ▕ | ▖ | ▗ | ▘ | ▙ | ▚ | ▛ | ▜ | ▝ | ▞ | ▟


### Box Drawing Characters

| Directory     | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F
| ------------- |-------------
| U+250x        | ─ | ━ | │ | ┃ | ┄ | ┅ | ┆ | ┇ | ┈ | ┉ | ┊ | ┋ | ┌ | ┍ | ┎ | ┏
| U+251x        | ┐ | ┑ | ┒ | ┓ | └ | ┕ | ┖ | ┗ | ┘ | ┙ | ┚ | ┛ | ├ | ┝ | ┞ | ┟
| U+252x        | ┠ | ┡ | ┢ | ┣ | ┤ | ┥ | ┦ | ┧ | ┨ | ┩ | ┪ | ┫ | ┬ | ┭ | ┮ | ┯
| U+253x        | ┰ | ┱ | ┲ | ┳ | ┴ | ┵ | ┶ | ┷ | ┸ | ┹ | ┺ | ┻ | ┼ | ┽ | ┾ | ┿
| U+254x        | ╀ | ╁ | ╂ | ╃ | ╄ | ╅ | ╆ | ╇ | ╈ | ╉ | ╊ | ╋ | ╌ | ╍ | ╎ | ╏
| U+255x        | ═ | ║ | ╒ | ╓ | ╔ | ╕ | ╖ | ╗ | ╘ | ╙ | ╚ | ╛ | ╜ | ╝ | ╞ | ╟
| U+256x        | ╠ | ╡ | ╢ | ╣ | ╤ | ╥ | ╦ | ╧ | ╨ | ╩ | ╪ | ╫ | ╬ | ╭ | ╮ | ╯
| U+257x        | ╰ | ╱ | ╲ | ╳ | ╴ | ╵ | ╶ | ╷ | ╸ | ╹ | ╺ | ╻ | ╼ | ╽ | ╾ | ╿


---


## ANSI Codes

Name | decimal | octal | hex | C-escape | Ctrl-Key | Description
- |
BEL | 7 | 007 | 0x07 | \a | ^G | Terminal bell
BS | 8 | 010 | 0x08 | \b | ^H | Backspace
HT | 9 | 011 | 0x09 | \t | ^I | Horizontal TAB
LF | 10 | 012 | 0x0A | \n | ^J | Linefeed (newline)
VT | 11 | 013 | 0x0B | \v | ^K | Vertical TAB
FF | 12 | 014 | 0x0C | \f | ^L | Formfeed (also: New page NP)
CR | 13 | 015 | 0x0D | \r | ^M | Carriage return
ESC | 27 | 033 | 0x1B | <none> | ^[ | Escape character
DEL | 127 | 177 | 0x7F | none | none | Delete character

### Erasing text
ANSI | terminfo equivalent | Description
- |
`[ K\n[ 0 K` | el | Clear line from current cursor position to end of line
`[ 1 K` | el1 | Clear line from beginning to current cursor position
`[ 2 K` | el2:?: | Clear whole line (cursor position unchanged)

### General text attributes
ANSI | terminfo equivalent | Description
- |
[ 0 m |	sgr0 | Reset all attributes
[ 1 m |	bold | Set "bright" attribute
[ 2 m |	dim | Set "dim" attribute
[ 4 m |	set | smul unset rmul :?:	Set "underscore" (underlined text) attribute
[ 5 m |	blink | Set "blink" attribute
[ 7 m |	rev | Set "reverse" attribute
[ 8 m |	invis | Set "hidden" attribute

### Background Coloring
ANSI | terminfo equivalent | Description
- |
[ 4 0 m | setab 0 | black
[ 4 1 m | setab 1 | red
[ 4 2 m | setab 2 | green
[ 4 3 m | setab 3 | yellow
[ 4 4 m | setab 4 | blue
[ 4 5 m | setab 5 | magenta
[ 4 6 m | setab 6 | cyan
[ 4 7 m | setab 7 | white
[ 4 9 m | setaf 9 | Set default color as background color


---

```
─━│┃┄┅┆┇┈┉┊┋┌┍┎┏┐┑┒┓└┕┖┗┘┙┚┛├┝┞┟┠┡┢┣┤┥┦┧┨┩┪┫┬┭┮┯┰┱┲┳┴┵┶┷┸┹┺┻┼┽┾┿╀╁╂╃╄╅╆╇╈╉╊╋╌╍╎╏
═║╒╓╔╕╖╗╘╙╚╛╜╝╞╟╠╡╢╣╤╥╦╧╨╩╪╫╬╭╮╯╰╱╲╳╴╵╶╷╸╹╺╻╼╽╾╿
▀▁▂▃▄▅▆▇█▉▊▋▌▍▎▏▐░▒▓▔▕▖▗▘▙▚▛▜▝▞▟
■□▢▣▤▥▦▧▨▩▪▫▬▭▮▯▰▱▲△▴▵▶▷▸▹►▻▼▽▾▿◀◁◂◃◄◅◆◇◈◉◊○◌◍◎●◐◑◒◓◔◕◖◗◘
◙◚◛◜◝◞◟◠◡◢◣◤◥◦◧◨◩◪◫◬◭◮◯◰◱◲◳◴◵◶◷◸◹◺◻◼◽◾◿
```

```
☺☻✌✍✎✉☀☃☁☂★☆☮☯〠☎☏♕❏☐☑☒✓✗¢€£❤❣❦♣♤♥♦♧►❝❞☜☝☞☟☚☛☹త☣☠
✑✒÷‰√≠∞❛❜™©®✄✁✂✇✿❀“”„‟«»♪♫…◆◇✣✪✰✧✦☔☕☼☾❆❅❄✵♲♻♿⚅⚑⚐
←↑→↓↔↕⇄⇅↲↳↴↵↶↷↺ ↻➔➘➙➚➜➟➠➤➥➨➫➬➭➮➯➲➳➵➶➷➸➹➺➻➼➽➾◀▶◁▷◊
⚒⚓⚔⚕⚘⚖⚛⚚⚠⚡♀♂⚢⚣⚤⚰⚱☢☤✝☦☧☨☩☪☭♈♉♊♋♌♍♎♏♐♑♒♓⌚⌛⌨⏎✈♨☸⚭⚮⚯
```

```
∧∨∀∃∄¬∆∇∈∉∋∌∩∪⊂⊃⊄⊅⊆⊇∏∑Ω×±÷∅∗∙∂√∛∜∝∞∁∟∠∡∢∥∦⊕⊗≤≥≪≫
∫∬∭∮∯∰∱∲∳∴∵∻∼∽∾≀≁≈≂≃≅≡≢≣≉≊≋≌≍≎≏≐≑≒≓≖≗≘≙≚≛≜≝≞≟≠⊧⊥
¹²³⁴⁵ⁱ⁺⁻⁼⁽⁾ⁿℕℝℚℙℂℤ½¼¾αβγδεζηθλμξωΦΨ⊨⊭⊻⊼⊽⋅⅀⌀⌈⌉⌊⌋ₓ
♔♕♖♗♘♙♚♛♜♝♞♟℗♭♮♯♩☊♒☄✆ꁚꀪꀎꂔ℅℆℀℁№℮✜☇☈☉❖❶❷❸☘⌖ℹ⚀⚁⚂⚃⚄⚅
¡¿ÁáÀàÅåÄäÆæÇçÉéÈèÍíÌìÎîÑñÓóÒòÔôÖöØøÚúÙùÜüŽžß¥€£
```
