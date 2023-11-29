//
//  WeatherModel.swift
//  WillItRain
//
//  Created by James Attersley on 09/11/2023.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName   : String
    let temperature: Double
    let description: String
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var descriptionString: String {
        return description.capitalized
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "cloud"
        }
    }
    
        var backgroundImage: String {
       
        switch conditionId {
        case 200...232:
            return "stormBackground"
        case 300...321:
            return "rainBackground"
        case 500...531:
            return "rainBackground"
        case 600...622:
            return "snowBackground"
        case 701...781:
            return "cloudBackground"
        case 800:
            return "sunBackground"
        case 801...804:
            return "cloudBackground"
        default:
            return "cloudBackground"
        }
    }
    
    var conditionDetail: String {
        
        switch conditionId {
        case 200...232:
            return "Thunderstorm"
        case 300...321:
            return "Drizzle"
        case 500...531:
            return "Rain"
        case 600...622:
            return "Snow"
        case 701...781:
            return "Fog"
        case 800:
            return "Clear"
        case 801...804:
            return "Cloud"
        default:
            return ""
        }
        
    }
}

