effect customEff {
  ctl op1(msg: string) : ()
  ctl op2() : ()
  }

//You can't do other effectful operations such as print
fun effectfulOp(x : string) : customEff () {
  // Handle `op1` with a control operator `with ctl`

  match x {
    case op1(msg) -> println("")
    case op2()
    
  }
  
  with ctl op1(msg) {
    with ctl op2() 
      println("handling op2")
      resume()  // Resume without any return value
    
    println("context for op1")
    resume("done")  // Resume the continuation with "done"
  
  }
  // Handle `op2` with a control operator `with ctl`
  println("continuing after both operations")
}

// I think handler is only defined in the context of with


fun main(){
  helloThere()
}