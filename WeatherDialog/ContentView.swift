//
//  ContentView.swift
//  WeatherDialog
//
//  Created by Courtlyn on 10/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                DayForecast(day: "Mon", weather: "sunny", high: 70, low: 50)
                DayForecast(day: "Tue", weather: "rainy", high: 60, low: 40)
                DayForecast(day: "Wed", weather: "cloudy", high: 80, low: 55)
                DayForecast(day: "Thu", weather: "cloudy", high: 75, low: 50)
                DayForecast(day: "Fri", weather: "sunny", high: 75, low: 50)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let weather: String
    let high: Int
    let low: Int
    
    var iconName: String {
        switch weather {
        case "cloudy":
            return "cloud.fill"
        case "rainy":
            return "cloud.rain.fill"
        case "sunny":
            return "sun.max.fill"
        default:
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        switch weather {
        case "cloudy":
            return Color.gray
        case "rainy":
            return Color.blue
        default:
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.largeTitle)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(.semibold)
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
