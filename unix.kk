
effect io
  fun write(output : string, file: int) : ()

fun bio(io_effect : () -> <io|e> a) : e (string,a)
  var buf := ""
  with return(y) 
    (buf,y)
  with fun write(f,y) 
    buf := buf ++ f
  io_effect()

fun wrapped_write(f)
  with bio
  f()

fun main() 
  //wrapped_write(write("example input", 1))
  

  with bio
  write("first write", 2)
  write("second write", 1)

  
  with handler 
    fun bio(arg) fn() { } // what goes in here, state, effects?
  write(" ",1)
