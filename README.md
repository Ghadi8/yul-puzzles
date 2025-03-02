# Yul Puzzles by RareSkills

## How to play

Open `src/ReturnBool.sol` and `test/ReturnBool.t.sol`. Your goal is to write assembly code in each puzzle that makes the test pass. You may only write assembly code.

Run the test with

```shell
forge test --mp test/ReturnBool.t.sol
```

Now repeat this with the other puzzles.

## Suggested order of the Puzzles

Go through the puzzles sequentially

0. [ReturnBool](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnBool.sol) (_solved_)
1. [SimpleRevert](https://github.com/RareSkills/yul-puzzles/blob/main/src/SimpleRevert.sol) (_solved_)
2. [RevertWithSelector](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithSelector.sol) (_solved_)
3. [Return42](https://github.com/RareSkills/yul-puzzles/blob/main/src/Return42.sol) (_solved_)
4. [RevertWithError](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithError.sol) (_solved_)
5. [RevertWithSelectorPlusArgs](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithSelectorPlusArgs.sol) (_solved_)
6. [RevertWithPanic](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithPanic.sol) (_solved_)
7. [Double](https://github.com/RareSkills/yul-puzzles/blob/main/src/Double.sol) (_solved_)
8. [Calculator](https://github.com/RareSkills/yul-puzzles/blob/main/src/Calculator.sol) (_solved_)
9. [DoubleOrNothing](https://github.com/RareSkills/yul-puzzles/blob/main/src/DoubleOrNothing.sol) (_solved_)
10. [MaxOfTwoValues](https://github.com/RareSkills/yul-puzzles/blob/main/src/MaxOfTwoValues.sol) (_solved_)
11. [IsPrime](https://github.com/RareSkills/yul-puzzles/blob/main/src/IsPrime.sol) (_solved_)
12. [CalldataLength](https://github.com/RareSkills/yul-puzzles/blob/main/src/CalldataLength.sol) (_solved_)
13. [KeccakX](https://github.com/RareSkills/yul-puzzles/blob/main/src/KeccakX.sol) (_solved_)
14. [KeccakFirstCalldata](https://github.com/RareSkills/yul-puzzles/blob/main/src/KeccakFirstCalldata.sol) (_solved_)
15. [KeccakSecondCalldata](https://github.com/RareSkills/yul-puzzles/blob/main/src/KeccakSecondCalldata.sol) (_solved_)
16. [LengthOfDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/LengthOfDynamicArray.sol) (_solved_)
17. [MaxOfArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/MaxOfArray.sol) (_solved_)
18. [ReadFromStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromStorage.sol) (_solved_)
19. [WriteToStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToStorage.sol) (_solved_)
20. [ReadFromFixedArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromFixedArray.sol) (_solved_)
21. [Tenary](https://github.com/RareSkills/yul-puzzles/blob/main/src/Tenary.sol) (_solved_)
22. [WriteToFixedArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToFixedArray.sol) (_solved_)
23. [ReadFromDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromDynamicArray.sol) (_solved_)
24. [WriteToDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToDynamicArray.sol) (_solved_)
25. [ReadFromMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromMapping.sol) (_solved_)
26. [WriteToMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToMapping.sol) (_solved_)
27. [PushToDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/PushToDynamicArray.sol) (_solved_)
28. [PopFromDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/PopFromDynamicArray.sol) (_solved_)
29. [ReadFromDoubleMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromDoubleMapping.sol) (_solved_)
30. [ReadFromDynamicArrayAndRevertOnFailure](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromDynamicArrayAndRevertOnFailure.sol) (_solved_)
31. [WriteToDoubleMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToDoubleMapping.sol) (_solved_)
32. [WriteDynamicArrayToStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteDynamicArrayToStorage.sol) (_solved_)
33. [WriteTwoDynamicArraysToStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteTwoDynamicArraysToStorage.sol) (_solved_)
34. [ReadFromPacked128](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromPacked128.sol) (_solved_)
35. [WriteToPacked128](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToPacked128.sol) (_solved_)
36. [ReadFromPacked64](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromPacked64.sol) (_solved_)
37. [WriteToPacked64](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToPacked64.sol) (_solved_)
38. [WriteToPackedDynamicArray64](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToPackedDynamicArray64.sol) (_solved_)
39. [ReadFromMappingInStruct](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromMappingInStruct.sol) (_solved_)
40. [EventWithoutData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithoutData.sol) (_solved_)
41. [EventWithData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithData.sol) (_solved_)
42. [EventWithIndexedData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithIndexedData.sol) (_solved_)
43. [EventWithMultipleData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithMultipleData.sol) (_solved_)
44. [AnonymonusEventWithoutData](https://github.com/RareSkills/yul-puzzles/blob/main/src/AnonymonusEventWithoutData.sol) (_solved_)
45. [AnonymonusEventWithData](https://github.com/RareSkills/yul-puzzles/blob/main/src/AnonymonusEventWithData.sol) (_solved_)
46. [AnonymonusEventWithIndexedData](https://github.com/RareSkills/yul-puzzles/blob/main/src/AnonymonusEventWithIndexedData.sol) (_solved_)
47. [AnonymonusEventWithComplexData](https://github.com/RareSkills/yul-puzzles/blob/main/src/AnonymonusEventWithComplexData.sol) (_solved_)
48. [EventWithComplexData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithComplexData.sol) (_solved_)
49. [BatchEvents](https://github.com/RareSkills/yul-puzzles/blob/main/src/BatchEvents.sol) (_solved_)
50. [CalculatorInFallback](https://github.com/RareSkills/yul-puzzles/blob/main/src/CalculatorInFallback.sol) (_solved_)
51. [ReturnOppositeBool](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnOppositeBool.sol) (_solved_)
52. [ReturnTwoBools](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnTwoBools.sol) (_solved_)
53. [ReturnArrayOfUint256](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnArrayOfUint256.sol) (_solved_)
54. [ReturnString](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnString.sol) (_solved_)
55. [ReturnBytes](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnBytes.sol) (_solved_)
56. [FizzBuzz](https://github.com/RareSkills/yul-puzzles/blob/main/src/FizzBuzz.sol) (_solved_)
57. [ReturnTupleOfString](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnTupleOfString.sol) (_solved_)
58. [ReturnSimpleStruct](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnSimpleStruct.sol) (_solved_)
59. [ReturnTupleOfUint256String](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnTupleOfUint256String.sol) (_solved_)
60. [ReturnTupleOfStringUnit256](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnTupleOfStringUnit256.sol) (_solved_)
61. [SendEther](https://github.com/RareSkills/yul-puzzles/blob/main/src/SendEther.sol) (_solved_)
62. [SendAllEther](https://github.com/RareSkills/yul-puzzles/blob/main/src/SendAllEther.sol) (_solved_)
63. [PaymentSplitter](https://github.com/RareSkills/yul-puzzles/blob/main/src/PaymentSplitter.sol) (_solved_)
64. [SendBack](https://github.com/RareSkills/yul-puzzles/blob/main/src/SendBack.sol) (_solved_)
65. [BasicBank](https://github.com/RareSkills/yul-puzzles/blob/main/src/BasicBank.sol) (_solved_)
66. [SimpleCall](https://github.com/RareSkills/yul-puzzles/blob/main/src/SimpleCall.sol) (_solved_)
67. [SimpleCallWithValue](https://github.com/RareSkills/yul-puzzles/blob/main/src/SimpleCallWithValue.sol) (_solved_)
68. [Approve](https://github.com/RareSkills/yul-puzzles/blob/main/src/Approve.sol) (_solved_)
69. [TransferFrom](https://github.com/RareSkills/yul-puzzles/blob/main/src/TransferFrom.sol) (_solved_)
70. [BalanceOf](https://github.com/RareSkills/yul-puzzles/blob/main/src/BalanceOf.sol) (_solved_)
71. [CreateSimple](https://github.com/RareSkills/yul-puzzles/blob/main/src/CreateSimple.sol) (_solved_)
72. [CreateSimplePayable](https://github.com/RareSkills/yul-puzzles/blob/main/src/CreateSimplePayable.sol) (_solved_)
73. [CreateSimpleCalldata](https://github.com/RareSkills/yul-puzzles/blob/main/src/CreateSimpleCalldata.sol) (_solved_)
74. [DeployOneByte](https://github.com/RareSkills/yul-puzzles/blob/main/src/DeployOneByte.sol) (_solved_)
75. [DeployNBytes](https://github.com/RareSkills/yul-puzzles/blob/main/src/DeployNBytes.sol) (_solved_)
76. [SquareRoot](https://github.com/RareSkills/yul-puzzles/blob/main/src/SquareRoot.sol) (_solved_)
77. [Division](https://github.com/RareSkills/yul-puzzles/blob/main/src/Division.sol) (_solved_)
78. [AbsoluteValue](https://github.com/RareSkills/yul-puzzles/blob/main/src/AbsoluteValue.sol) (_solved_)
79. [SetBit](https://github.com/RareSkills/yul-puzzles/blob/main/src/SetBit.sol) (_solved_)
80. [Log2](https://github.com/RareSkills/yul-puzzles/blob/main/src/Log2.sol) (_solved_)

## Acknowledgement

This work was funded by a [grant from the Ethereum Foundation](https://blog.ethereum.org/2025/02/06/allocation-q4-24#:~:text=Set%20of%2080%20puzzles%20for%20players%20to%20become%20comfortable%20with%20writing%20Yul%20assembly%20where%20players%20fill%20out%20a%20code%20block%20and%20see%20if%20the%20unit%20tests%20pass.).
