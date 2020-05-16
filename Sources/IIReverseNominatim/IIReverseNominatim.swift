

import Foundation

public class IIReverseNominatim {
    private let email: String?
    private let nominatimURL: URL
    
    public init(withEmail email: String? = nil) {
        self.email = email
        self.nominatimURL = URL(string: Constants.nominatimHost+Constants.endpoint)!
    }
    
    public func reverseGeocode(lat: Double, lon: Double, addressDetails: Int = 0, zoom: Int = 18, language: String? = nil, completion: @escaping (Result<FeatureCollection, Error>)->Void){
        var req = ReverseGeocodeRequest(lat: lat, lon: lon)
        req.email = email
        req.acceptLanguage = language
        req.zoom = zoom
        req.addressdetails = addressDetails
        reverseGeocode(request: req, completion: completion)
    }
    
    public func reverseGeocode(request: ReverseGeocodeRequest, completion: @escaping (Result<FeatureCollection, Error>)->Void){
        guard let request = request.buildRequest(baseURL: nominatimURL) else {
            completion(
                .failure(
                    NSError(domain: "IIReverseNominatim failed create request",
                            code: 0,
                            userInfo: nil)
                )
            )
            return
        }
        let session = URLSession.shared
        session.dataTask(with: request){data,response,error in
            
            if let error = error {
                completion(.failure(error))
                return
            }
            if let response = (response as? HTTPURLResponse), (200...299 ~= response.statusCode) == false {
                completion(.failure(NSError(domain: "Dadata HTTP response", code: response.statusCode, userInfo: ["description": response.description])))
                return
            }
            guard let data = data else {
                completion(.failure(NSError(domain: "Dadata HTTP response", code: -1, userInfo: ["description": "missing data in response"])))
                return
            }
            do {
                let result = try JSONDecoder().decode(FeatureCollection.self, from: data)
                completion(.success(result))
                return
            } catch let e {
                completion(.failure(e))
                return
            }
        }.resume()
    }
    
}
