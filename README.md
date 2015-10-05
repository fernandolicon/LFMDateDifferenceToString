# LFMDateDifferenceToString

## Description

This is a simple library that receives a date difference and returns it as a string.

For example, if you send a Date Difference of **300s**, the library will return **5m**.

Other examples:

* 7,200s - 2h
* 88,000 - Yesterday
* 172,800 - 2 days ago

## Methods

### Difference from today

Gets the difference between the date you're sending and today.
```swift
LFMDateDifferenceToString.getStringOfDifferenceFromToday(yourDate)
```
### Difference between two dates

This method would return you the difference between two different dates. If the start date is earlier than the end date the method will return a **<1m** string. (I'll be working on a way to avoid this).
```swift
LFMDateDifferenceToString.getStringOfDifferenceBetweenDates(initialDate, endDate: endDate)
```

More methods being developed.
