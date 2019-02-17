setscreen ("graphics:500;400")

Music.PlayFileLoop ("123")

procedure randomCircle
    var radius : int := Rand.Int (20, 50)
    var x : int := Rand.Int (0, maxx)
    var y : int := Rand.Int (0, 300) 
    var c : int := Rand.Int (31, 103)
    drawfilloval (x, y, radius, radius, c)
    delay (25)
end randomCircle

var xmouse, ymouse, button : int
var counter : int := 2
var endgame :=false

var a1 : string := "empty"
var a2 : string := "empty"
var a3 : string := "empty"
var b1 : string := "empty"
var b2 : string := "empty"
var b3 : string := "empty"
var c1 : string := "empty"
var c2 : string := "empty"
var c3 : string := "empty"

procedure checkendgame
if (a1="x" and a1=a2 and a2=a3) then
    put "player ", a1, " won"
    endgame :=true

    elsif (a1="o" and a1=a2 and a2=a3) then
    put "player ", a1, " won"
    endgame :=true

elsif (b1="x" and b1=b2 and b2=b3) then
    put "player ", b1, " won"
    endgame :=true

    elsif (b1="o" and b1=b2 and b2=b3) then
    put "player ", b1, " won"
    endgame :=true
    
elsif (c1="x" and c1=c2 and c2=c3) then
    put "player ", c1, " won"
    endgame :=true
    
    elsif (c1="o" and c1=c2 and c2=c3) then
    put "player ", c1, " won"
    endgame :=true

elsif (a1="x" and a1=b1 and b1=c1) then
    put "player ", a1 ," won"
    endgame :=true
    
    elsif (a1="o" and a1=b1 and b1=c1) then
    put "player ", a1 ," won"
    endgame :=true

elsif (a2="x" and a2=b2 and b2=c2) then
    put "player ", a2 ," won"
    endgame :=true

    elsif (a2="o" and a2=b2 and b2=c2) then
    put "player ", a2 ," won"
    endgame :=true
    
elsif (a3="x" and a3=b3 and b3=c3) then
    put "player ", a3 ," won"
    endgame :=true
    
    elsif (a3="o" and a3=b3 and b3=c3) then
    put "player ", a3 ," won"
    endgame :=true

elsif (a3="x" and a3=b2 and b2=c1) then
    put "player ", a3, " won"
    endgame :=true
    
    elsif (a3="o" and a3=b2 and b2=c1) then
    put "player ", a3, " won"
    endgame :=true

elsif (a1="x" and a1=b2 and b2=c3) then
    put "player ", a1, " won"
    endgame :=true
    
    elsif (a1="o" and a1=b2 and b2=c3) then
    put "player ", a1, " won"
    endgame :=true
end if
end checkendgame

locate (1, 27)
put "Tic tac toe"

%board
%v1
Draw.ThickLine (175, 50, 175, 350, 3, 7)
%v2
Draw.ThickLine (325, 50, 325, 350, 3, 7)
%h1
Draw.ThickLine (50, 140, 450, 140, 3, 7)
%h2
Draw.ThickLine (50, 260, 450, 260, 3, 7)

loop
    mousewhere (xmouse, ymouse, button)
%a1
if (xmouse >= 50 and xmouse <= 175 and ymouse >= 50 and ymouse <= 140 and button = 1 and a1 = "empty" and counter rem 2 = 0) then
	drawline (75, 65, 140, 125, 7)
	drawline (75, 125, 140, 65, 7)
	a1 := "x"
	counter += 1
	delay (200)
    elsif (xmouse >= 50 and xmouse <= 175 and ymouse >= 50 and ymouse <= 140 and button = 1 and a1 = "empty" and counter rem 2 = 1) then
	drawoval (100, 90, 40, 40, 7)
	a1 := "o"
	counter += 1
	delay (200)

	%a2
    elsif (xmouse >= 50 and xmouse <= 175 and ymouse >= 140 and ymouse <= 250 and button = 1 and a2 = "empty" and counter rem 2 = 0) then
	drawline (75, 165, 140, 225, 7)
	drawline (75, 225, 140, 165, 7)
	a2 := "x"
	counter += 1
	delay (200)
    elsif (xmouse >= 50 and xmouse <= 125 and ymouse >= 140 and ymouse <= 250 and button = 1 and a2 = "empty" and counter rem 2 = 1) then
	drawoval (100, 200, 40, 40, 7)
	a2 := "o"
	counter += 1
	delay (200)

	%a3
    
	elsif (xmouse >= 50 and xmouse <= 175 and ymouse >= 250 and ymouse <= 350 and button = 1 and a3 = "empty" and counter rem 2 = 0) then
	drawline (75, 280, 140, 340, 7)
	drawline (75, 340, 140, 280, 7)
	a3 := "x"
	counter += 1
	delay (200)
    elsif (xmouse >= 50 and xmouse <= 175 and ymouse >= 250 and ymouse <= 350 and button = 1 and a3 = "empty" and counter rem 2 = 1) then
	drawoval (100, 310, 40, 40, 7)
	a3 := "o"
	counter += 1
	delay (200)

	%b1
    elsif (xmouse >= 175 and xmouse <= 325 and ymouse >= 50 and ymouse <= 140 and button = 1 and b1 = "empty" and counter rem 2 = 0) then
	drawline (220, 65, 285, 125, 7)
	drawline (220, 125, 285, 65, 7)
	b1 := "x"
	counter += 1
	delay (200)
    elsif (xmouse >= 175 and xmouse <= 325 and ymouse >= 50 and ymouse <= 140 and button = 1 and b1 = "empty" and counter rem 2 = 1) then
	drawoval (250, 90, 40, 40, 7)
	b1 := "o"
	counter += 1
	delay (200)

	%b2
    elsif (xmouse >= 175 and xmouse <= 325 and ymouse >= 140 and ymouse <= 250 and button = 1 and b2 = "empty" and counter rem 2 = 0) then
	drawline (220, 225, 285, 165, 7)
	drawline (220, 165, 285, 225, 7)
	b2 := "x"
	counter += 1
	delay (200)
    elsif (xmouse >= 175 and xmouse <= 325 and ymouse >= 140 and ymouse <= 250 and button = 1 and b2 = "empty" and counter rem 2 = 1) then
	drawoval (250, 200, 40, 40, 7)
	b2 := "o"
	counter += 1
	delay (200)

	%b3
    elsif (xmouse >= 175 and xmouse <= 325 and ymouse >= 250 and ymouse <= 350 and button = 1 and b3 = "empty" and counter rem 2 = 0) then
	drawline (220, 280, 285, 340, 7)
	drawline (220, 340, 285, 280, 7)
	b3 := "x"
	counter += 1
	delay (200)
    elsif (xmouse >= 175 and xmouse <= 325 and ymouse >= 250 and ymouse <= 350 and button = 1 and b3 = "empty" and counter rem 2 = 1) then
	drawoval (250, 320, 40, 40, 7)
	b3 := "o"
	counter += 1
	delay (200)

	%c1
    elsif (xmouse >= 325 and xmouse <= 450 and ymouse >= 50 and ymouse <= 140 and button = 1 and c1 = "empty" and counter rem 2 = 0) then
	drawline (350, 125, 415, 65, 7)
	drawline (350, 65, 415, 125, 7)
	c1 := "x"
	counter += 1
	delay (200)
    elsif (xmouse >= 325 and xmouse <= 450 and ymouse >= 50 and ymouse <= 140 and button = 1 and c1 = "empty" and counter rem 2 = 1) then
	drawoval (390, 90, 40, 40, 7)
	c1 := "o"
	counter += 1
	delay (200)

	%c2
    elsif (xmouse >= 325 and xmouse <= 450 and ymouse >= 140 and ymouse <= 250 and button = 1 and c2 = "empty" and counter rem 2 = 0) then
	drawline (350, 225, 415, 165, 7)
	drawline (350, 165, 415, 225, 7)
	c2 := "x"
	counter += 1
	delay (200)
    elsif (xmouse >= 325 and xmouse <= 450 and ymouse >= 140 and ymouse <= 250 and button = 1 and c2 = "empty" and counter rem 2 = 1) then
	drawoval (390, 200, 40, 40, 7)
	c2 := "o"
	counter += 1
	delay (200)

	%c3
    elsif (xmouse >= 325 and xmouse <= 450 and ymouse >= 250 and ymouse <= 350 and button = 1 and c3 = "empty" and counter rem 2 = 0) then
	drawline (350, 280, 415, 340, 7)
	drawline (350, 340, 415, 280, 7)
	c3 := "x"
	counter += 1
	delay (200)
    elsif (xmouse >= 325 and xmouse <= 450 and ymouse >= 250 and ymouse <= 350 and button = 1 and c3 = "empty" and counter rem 2 = 1) then
	drawoval (390, 320, 40, 40, 7)
	c3 := "o"
	counter += 1
	delay (200)
    end if
checkendgame
exit when endgame=true
end loop

if (endgame=true)
then
loop
randomCircle
end loop
end if
