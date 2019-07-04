package main

import "fmt"

// Example 1: Addition
func add(a int) func(int) int {
	return func(b int) int {
		return a + b
	}
}

var addThree = add(3)

// Example 2: Prefixing a String
func addPrefix(a string) func(string) string {
	return func(b string) string {
		return fmt.Sprintf("[%v] %v", a, b)
	}
}

var prefixWithWarning = addPrefix("WARNING")

/**
Output:
> ✗ go run main.go
> 7
> [WARNING] All is well.
*/
func main() {
	fmt.Println(addThree(4))
	fmt.Println(prefixWithWarning("All is well."))
}
