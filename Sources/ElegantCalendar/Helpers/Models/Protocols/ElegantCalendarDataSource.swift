// Kevin Li - 5:19 PM - 6/14/20

import SwiftUI

public protocol ElegantCalendarDataSource: MonthlyCalendarDataSource, YearlyCalendarDataSource { }

public protocol MonthlyCalendarDataSource {

    func calendar(backgroundColorOpacityForDate date: Date) -> Double
    func calendar(canSelectDate date: Date) -> Bool
    func calendar(viewForSelectedDate date: Date, dimensions size: CGSize) -> AnyView
    
    func calendar(textColorForDate date: Date) -> Color
    func backgroundForToday() -> AnyView

}


public extension MonthlyCalendarDataSource {

    func calendar(backgroundColorOpacityForDate date: Date) -> Double { 1 }

    func calendar(canSelectDate date: Date) -> Bool { true }

    func calendar(viewForSelectedDate date: Date, dimensions size: CGSize) -> AnyView {
        EmptyView().erased
    }
    
    func calendar(textColorForDate date: Date) -> Color { Color.primary }
    func backgroundForToday() -> AnyView {
        Color.primary.erased
    }
    

}

// TODO: Depending on future design choices, this may need some functions and properties
public protocol YearlyCalendarDataSource { }
