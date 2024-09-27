effect fun emit(msg: string) : ()


//You can't do other effectful operations such as print
fun effectfulOp(x : string): emit()
  emit(x)

fun helloThere() : console()
  with handler emitHandler{
    
  }
  effectfulOp("sdf")


// I think handler is only defined in the context of with


fun main(){
  helloThere()
}