// Example 1: Addition
typealias Add = (Int) -> (Int) -> Int
let add: Add = { (a: Int) in { (b: Int) in a + b } }
let addThree = add(3)
print(addThree(4))

// Example 2: String Prefixing
typealias Prefix = (String) -> (String) -> String
let addPrefix = { (a: String) in { (b: String) in "[\(a)] \(b)" } }
let prefixWithWarning = addPrefix("WARNING")
print(prefixWithWarning("All is well."))

/**
OUTPUT:
$ swift Sources/sample/sample.swift
> 7
> [WARNING] All is well.
*/