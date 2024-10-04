
pub fun twice(f)
  f()
  f()

pub fun example1()
  with twice
  with twice
  println("hi")

// The above is equivalent to:
pub fun example1-expanded()
  twice
    twice
      println("hi")

// Without using layout, the fully expanded version is:
pub fun example1-fully-expanded() {
  twice( fn(){
    twice( fn(){
      println("hi")
    })
  })
}

pub fun example2()
  with x <- list(1,10).map
  println(x)

pub fun exp_example2()
  list(1,10).map fn (x) {println(x)}


fun main()
  example2()

  exp_example2()