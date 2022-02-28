# Gas Optimisation List

### Internal Function Call

Internal function calls consume less gas.

### Memory Storage

Using memory variables can save gas as you can reduce the amount of times you read/write from a storage variable, which is a gas intensive process.

### Operation

Math operations that are known to be safe from overflow errors can be wrapped in unchecked.

As of solidity ^0.8.0, solidity checks all math operations for overflows. Disabling this can save gas.

### Struct Packing

Ordering variables in storage slots such that they don't leave gaps saves gas over time.
