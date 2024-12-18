# drawj2d -Tscr -W157 -H209 -X10 -Y10 write-unicode.hcl textfile.txt

if {< $argc 1} {
  puts {usage: drawj2d write.hcl textfile}
  return
}

set textfile [lindex $argv 0]
set color    [lindex $argv 1]
set f        [open $textfile]

font Lines bold 4
pen $color
text {} 138
while {$f hasnext} {
  text [$f readln]
}
