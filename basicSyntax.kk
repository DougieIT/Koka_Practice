effect fun consoleIO (s : string) : ()

fun forLoop()
  for(1,10) fn(i)
    println(i)

fun myFunc()
  var myPrint := fn(){
    return "this is an anonymous func"
  }
  println(myPrint())

fun whileLoop()
  var i := 0
  while {i < 10}
    println(i)
    i := i + 1

fun witthexample(x, f)
  println(x)
  println("-------------------------------")
  f()
  println("-------------------------------")
  
fun main() {
  forLoop()
  myFunc()
  whileLoop()

  witFunc()
  println("outwith with context")
  
}

fun witFunc(){
  print("outside effect context")
  with witthexample("this is nested handling")
  println("handled in effect context")

  println("still within effect context")
}

