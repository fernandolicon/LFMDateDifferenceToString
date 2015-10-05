//
//  LFMDateDifferenceToString.swift
//  DateDifferenceExample
//
//  Created by Luis Fernando Mata on 4/10/15.
//  Copyright © 2015 Luis Fernando Mata. All rights reserved.
//

import Foundation

class LFMDateDifferenceToString: NSObject {
    
    class func getStringOfDifferenceFromToday(differenceDate: NSDate) -> String{
        let today = NSDate()
        let timeInterval = self.getDateDifferenceFromDates(differenceDate, endDate: today)
        return self.transformDifferenceToString(timeInterval)
    }
    
    //MARK: Own methods
    
    private class func transformDifferenceToString(var timeInterval: NSTimeInterval) -> String{
        
        var intValue = Int(timeInterval)
        
        //Firs calculate if time is less than 1 hour
        if timeInterval < 1{
            return "<1m"
        }else if timeInterval < 60{
            return "\(intValue)m"
        }else{
            //If timeInterval is more than hour, transform the data to hours and check if it is less than 1 day
            timeInterval = round(timeInterval / 60)
            intValue = Int(timeInterval)
            if timeInterval < 2{
                return "1h"
            }else if timeInterval < 24{
                return "\(intValue)h"
            }else{
                //If it's more than one day, then check if it was yesterday or other days ago
                timeInterval = round(timeInterval / 24)
                intValue = Int(timeInterval)
                if timeInterval < 2{
                    return "Yesterday"
                }else{
                    return "\(intValue) days ago"
                }
            }
        }
    }
    
    private class func getDateDifferenceFromDates(beginDate: NSDate, endDate: NSDate) -> NSTimeInterval{
        var dateDifference = endDate.timeIntervalSinceDate(beginDate)
        //Transform time interval to minutes
        dateDifference /= 60
        return dateDifference;
    }
}
