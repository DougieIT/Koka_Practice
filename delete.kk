fun runIncrement() : int {
  // Handle the state effect using `handle`
  // Initial state is set to 0
  val result = handler {
    // The initial state is 0
    var initialState := 0;

    // Run the effectful operation `increment` which modifies state
    val finalState = increment();

    // Return the final state
    return finalState
  }

  // Return the result from the handler
  return result;
}

fun main() {
  // Run the state-handling function and print the result
  val result = runIncrement();
  println("Final state after increment: \(result)");
}