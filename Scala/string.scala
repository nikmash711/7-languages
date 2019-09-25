val list = List("nikkie", "mashian")
val sumLength = list.foldLeft(0)((sum, value) => sum + value.length)
println("The total length of " + list + " is " + sumLength)