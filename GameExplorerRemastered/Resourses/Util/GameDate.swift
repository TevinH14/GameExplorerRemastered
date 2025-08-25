//
//  GameDate.swift
//  GameExplorerRemastered
//
//  Created by Tevin Hamilton on 8/24/25.
//

import Foundation

struct GameDate {
    
    //MARK: - GetDate get today's date
    func GetDate() -> Date {
        let todayDate = Date()
        return todayDate
    }
    
    //MARK: - formatDate get the last days from todays date
    func formatDateYearMonthDay(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateString = dateFormatter.string(from: date)
        
        return dateString
    }
    
    //MARK: - getTheLast30Days get the last days from todays date
    func getTheLast30Days(_ date: Date) ->  String? {
        if let thirtyDaysAgo = Calendar.current.date(byAdding: .day, value: -30, to: date) {
            return formatDateYearMonthDay(thirtyDaysAgo)
        }
        return nil
    }
    
    //MARK: - getTheNext30Days get the next days from todays date
    func getTheNext30Days(_ date: Date) ->  String? {
        if let thirtyDaysAgo = Calendar.current.date(byAdding: .day, value: +30, to: date) {
            return formatDateYearMonthDay(thirtyDaysAgo)
        }
        return nil
    }
    
    //MARK: - getYearDates return year the start of the year and end of the year
    func getYearDates() -> (year: Int, startDate: String, endDate: String) {
        let calendar = Calendar.current
        let currentDate = Date()
        let currentYear = calendar.component(.year, from: currentDate)
        
        // Start of the year
        let startOfYear = calendar.date(from: DateComponents(year: currentYear, month: 1, day: 1))!
        
        // End of the year
        let endOfYear = calendar.date(from: DateComponents(year: currentYear, month: 12, day: 31))!
        
        return (currentYear, formatDateYearMonthDay( startOfYear), formatDateYearMonthDay(endOfYear))
    }
    
}
