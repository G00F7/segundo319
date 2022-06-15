object fiboE{
	def main(args:Array[String]):Unit={
		println("Fibonacci Estructurada")
		print("Introduzca un N : ")
		val n = scala.io.StdIn.readInt()
		var a = -1
		var b = 1
		var c = 0
		var i = 0
		while(i < n){
			val aux = a + b + c
			a = b
			b = c 
			c = aux
			print(c)
			print(", ")
			i = i + 1
		}
	}
}