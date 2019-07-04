# Example 1: Addition
def add(a):
    return lambda b: a + b
addThree = add(3)
print(addThree(4))

# Example 2: String Prefixing
# An alternative way of currying in Python
addPrefix = lambda a: lambda b: f'[{a}] {b}'
prefixWithWarning = addPrefix("WARNING")
print(prefixWithWarning("All is well."))

# Output:
# $ python main.py
# > 7
# > [WARNING] All is well.