//
//  ReverseGeocodeRequest.swift
//  IIReverseNominatim
//
//  Created by Yachin Ilya on 16.05.2020.
//

import Foundation

public struct ReverseGeocodeRequest {
    private let format = "geocodejson"
    let lat: Double
    let lon: Double
    var addressdetails = 0
    ///Preferred language order for showing search results, overrides the value specified in the "Accept-Language" HTTP header.
    ///Either use a standard RFC2616 accept-language string or a simple comma-separated list of language codes.
    var acceptLanguage: String?
    ///Level of detail required for the address. Default: 18. This is a number that corresponds roughly to the zoom level used in map frameworks like Leaflet.js,
    ///Openlayers etc. In terms of address details the zoom levels are as follows:
    ///  - 3  :  country
    ///  - 5  :  state
    ///  - 8  :  county
    ///  - 10 :   city
    ///  - 14 :   suburb
    ///  - 16 :   major streets
    ///  - 17 :   major and minor streets
    ///  - 18 :   building
    var zoom = 18
    ///If you are making large numbers of request please include an appropriate email address to identify your requests.
    ///See Nominatim's [Usage Policy](https://operations.osmfoundation.org/policies/nominatim/) for more details.
    var email: String?
    
    init(lat: Double, lon: Double){
        self.lat=lat
        self.lon=lon
    }
    
    public func buildRequest(baseURL: URL) -> URLRequest? {
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        components?.queryItems = [
            URLQueryItem(name: "format", value: format),
            URLQueryItem(name: "lat", value: String(lat)),
            URLQueryItem(name: "lon", value: String(lon)),
            URLQueryItem(name: "addressdetails", value: {
                switch addressdetails{
                case let d where d > 1:
                    return String(1)
                case let d where d < 0:
                    return String(0)
                default:
                    return String(addressdetails)
                }
            }()),
            URLQueryItem(name: "accept-language", value: acceptLanguage),
            URLQueryItem(name: "zoom", value: {
                switch zoom{
                case let z where z > 18:
                    return String(18)
                case let z where z < 0:
                    return String(0)
                default:
                    return String(zoom)
                }
            }()),
            URLQueryItem(name: "email", value: email)
        ]
        guard let url = components?.url else { return  nil }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        return request
    }
}
