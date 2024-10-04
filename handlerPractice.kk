
effect cust_error
  ctl raise(msg: string) : a

fun manual_handler()
  // handler
  val h = handler
            ctl raise(msg) {println(msg);}
  
  // effectful op to handle
  h( fn() raise("manual handled"))


fun with_handler()
  with handler
    ctl raise(msg) {println(msg)}
  raise("with handled")

fun with_handler_sugar()
  with ctl raise(msg) {println(msg)}
  raise("sugared handle")

fun abstract_handler(f) 
  val h = handler
            ctl raise(msg){println(msg);}
  h(f)



fun effectful_func() : cust_error()
  raise("handled by outer scope")


fun main()
  manual_handler()
  with_handler()
  with_handler_sugar()

  // directly handles the effect
  abstract_handler(fn() raise("handled"))

  // handles a function which uses the effect
  abstract_handler(fn() effectful_func())