# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: "Dribbble Invite Thank You"
	author: "Diana Yun"
	twitter: ""
	description: "Dribbble"


Canvas.backgroundColor = "#ea4c80"

# Create layers
background = new BackgroundLayer
	backgroundColor: "#ffffff"

ball = new Layer
	y: Align.center
	x: Align.left(50)
	image: "images/ball.png"

hello = new Layer
	backgroundColor: "transparent"
	x: Align.center(20)
	y: Align.center(25)
	opacity: 0
hello.html = "Hello Dribbble!"

circle = new Layer
	y: Align.center
	x: Align.left(50)
	borderRadius: 100
	opacity: 0
	backgroundColor: "#ea4c80"

fill = new Layer
	y: Align.center
	x: Align.center
	opacity: 0
	backgroundColor: "#ea4c80"
	width: 100
	height: 100

fillWhite = new Layer
	y: Align.center
	x: Align.center
	opacity: 0
	backgroundColor: "#ffffff"
	width: 100
	height: 100
	
firstShot = new Layer
	backgroundColor: "transparent"
	x: Align.center
	y: Align.center
	opacity: 0
	width: 450
firstShot.html = "My first shot"

lineTop = new Layer
	backgroundColor: "#ffffff"
	x: Align.center
	y: Align.top(425)
	height: 2
	width: 10
	opacity: 0

lineBottom = new Layer
	backgroundColor: "#ffffff"
	x: Align.center
	y: Align.bottom(-400)
	height: 2
	width: 10
	opacity: 0

# Save origins
lineTopOriginX = lineTop.x
lineBottomOriginX = lineBottom.x
fillWhiteOriginX = fillWhite.x
fillWhiteOriginY = fillWhite.y
fillORiginX = fill.x
fillOriginY = fill.y

thanks = new Layer
	backgroundColor: "transparent"
	x: Align.center
	y: Align.center(150)
	opacity: 0
	width: 400
thanks.html = "Thanks, @Oltitsa"

# Style the text
hello.style = 
	"font-size" : "80px"
	"font-weight" : "400"
	"font-family" : "proxima nova"
	"line-height" : "80px"
	"color" : "#ea4c80"

firstShot.style = 
	"font-size" : "80px"
	"font-weight" : "400"
	"font-family" : "proxima nova"
	"line-height" : "80px"
	"color" : "#ffffff"

thanks.style = 
	"font-size" : "50px"
	"font-weight" : "400"
	"font-family" : "proxima nova"
	"line-height" : "80px"
	"color" : "#ffffff"

# Add states
ball.states.add
	two:
		rotation: ball.rotation + 360
		options:
			curve: "spring"

hello.states.add
	two: opacity: 1
hello.states.animationOptions = delay: .7

circle.states.add
	two: 
		opacity: 1
circle.states.animationOptions = 
	delay: .5
	curve: "spring"

fill.states.add
	two:
		opacity: 1
		height: screen.height + 700
		width: screen.width
		x: fillWhiteOriginX - 500
		y: fillWhiteOriginY - 700

fill.states.animationOptions = 
	delay: 2
	curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	time: .25
	
firstShot.states.add
	two:
		opacity: 1
firstShot.states.animationOptions =
	delay: 2.3

thanks.states.add
	two:
		opacity:1
thanks.states.animationOptions =
	delay: 2.9

lineTop.states.add
	two:
		opacity: 1
		width: 300
		x: lineTopOriginX - 150
lineTop.states.animationOptions =
	delay: 2

lineBottom.states.add
	two:
		opacity: 1
		width: 300
		x: lineTopOriginX - 150
lineBottom.states.animationOptions =
	delay: 2

fillWhite.states.add
	two:
		opacity: 1
		height: screen.height + 700
		width: screen.width
		x: fillWhiteOriginX - 500
		y: fillWhiteOriginY - 700

fillWhite.states.animationOptions = 
	delay: 4.8
	curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	time: .25
	

# Events: rotate on click
ball.onClick ->
	ball.states.switch('two')
	hello.states.switch('two')
	fill.states.switch('two')
	firstShot.states.switch('two')
	thanks.states.switch('two')
	lineTop.states.switch('two')
	lineBottom.states.switch('two')
	fillWhite.states.switch('two')




