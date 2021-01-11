//
//  FormatDate.swift
//  Refstock
//
//  Created by Mika Miyakawa on 2021/01/11.
//

import Foundation

func formatToday() -> String{
    let dt = Date()
    let formatter: DateFormatter = DateFormatter()

    formatter.locale = Locale(identifier: "en_US")
    formatter.dateStyle = .long
    
    return formatter.string(from: dt)
}
