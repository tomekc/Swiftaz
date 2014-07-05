Swiftaz
=======

This project intends to steal good parts of functional programming patterns from other languages. Created at first ever Swift hackathon, SwiftCrunch!


## Optional extensions

   
   	optionalValue.getOrElse(default_value)
   	
Returns *default_value* unless there is wrapped value in optional. Helps to avoid bulky if statements.


	optionalValue.when(closure)
	
	optionalValue.when { doSomethingWith($0) }
	
Gets the provided closure argument called when there is value in optional. Unwrapped value is provided as one and only parameter to the closure (*$0*).

## Caveats

Due to compiler bug, at moment of writing this code, it is not possible to use extensions placed in frameworks. Bummer: [from dev forums](https://devforums.apple.com/message/983747#983747)

For this reason, actual code is placed in SwiftazTests.swift, until the problem is resolved.
