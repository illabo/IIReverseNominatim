# IIReverseNominatim

## Yet another Nominatim reverse geocoder. The little difference from others that it requests data in GeocodeJSON format.

Nothing special here.
```swift
let nominatim = IIReverseNominatim()
nominatim.reverseGeocode(lat: 52.2620898, lon: 104.3203629){
    switch $0 {
    case .success(let resp):
        guard let s = resp.features, s.count > 0 else { return }
        print(geocoding?.label ?? geocoding?.name ?? "")
    case .failure(let e):
        print(e)
    }
}
```
### To install
* with Cocoa Pods:
```ruby
pod 'IIReverseNominatim'
```
* with Swift PM:
```swift
.package(url: "https://github.com/illabo/IIReverseNominatim.git", from: "0.1.1")
```
