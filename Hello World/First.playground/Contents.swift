/*let levelScore = 10
var gameScore = 0
gameScore += levelScore
print("The game score is \(gameScore)")
var levelBonusScore = 10.0
levelBonusScore = 20
print("The level's bonus score is \(levelBonusScore).")
gameScore += Int(levelBonusScore)
print("The game's final score is \(gameScore)")
let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10
let levelScoreDifference = levelHighestScore - levelLowestScore
let levelAveregeScore = Double(levelScoreDifference) / Double(levels)
print("The Averege Score is \(levelAveregeScore)")

var valorInicial = Double(0)
var valorMensal = Double(7000)
var taxa = Double(0.08)
var juros = Double(valorMensal) * Double((1 - taxa))
valorInicial += valorMensal * taxa
var jurosCompostos = Double(valorInicial)
print(jurosCompostos)
print(taxa)
print(juros)
print(valorInicial)*/

/*var tempo = 1.0
var taxaJuros = 0.08
var capitalInicial = 7000.0
var montante = Double()
var montante = capitalInicial * (1.0 - taxaJuros)
var montantefinal = montante ^ tempo
print(montante)

M = C (1+i)t.*/

/*let aString = "hi there"
let upper = aString.uppercased()
print(upper)

let bString = "Hi There"
let vCount = bString.count
print(vCount)

let mlString = """
COFFEE
                            LATTE
                            FLAT WHITE
                            CAPPUCCINO
TEA
HOT CHOCOLATE (VEGAN)
"""
print(mlString)
let day = "Monday"
let hour = "6"
let minutes = "15"
let period = "PM"
var time = hour + ":" + minutes + " " + period
print("Right now the clock is marking \(time). Today is \(day) Let's get up!")
let timezone = "PST"
time += " \(timezone)"
print("It is \(time) on \(day)")

let shortDay = day.prefix(3)
print(shortDay)

for numbers in 1 ... 2 {
    print(numbers)

var waterTemp = 92
if waterTemp >= 100 {
    print("The water is boiling")
}
else {
    print("The water is not boiling.")
}

var temperature = 69
if temperature >= 68 && temperature <= 72 {
    print("the temperature is just right")
*/
/*
let freeApp = true
if freeApp == true {
    print("You are using the free version. Buy The full version of the app to get acess to al of it's features")
}
let morningTemp = 70
let eveaningTemp = 80
if morningTemp < eveaningTemp {
    print("Colder in the morning")
}else {
    print("Colder in the evening")
}

let tempDegree = "Fahrenheit"
if tempDegree == "Fahrenheit" {
    print("The app works with Fahrenheit degrees")
}else if tempDegree == "Celsius"{
    print("The app works with Celsius degrees")
}

if tempDegree == "Fahrenheit" || tempDegree == "Celsius"{
    print("The weather is configured properly")
}else{
    print("The app isn't configured properly")
}

switch tempDegree {
case "Fahrenheit": print("Fahrenheit")
case "Celsius": print("Celsius")
default: print("Default")
}

for value in 1...5
{
    print("this is item \(value)")
}

let numbPlate = "WW87GP"
for character in numbPlate {
    print("Character is = \(character)")
}
*/
var totalturns = 13
var turnsleft = true

while turnsleft
{
    totalturns -= 1
    if totalturns < 1 {
        turnsleft = false
    }
    print("got another turn. \(totalturns) left.")
}
