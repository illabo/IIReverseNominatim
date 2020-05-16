//
//  FeatureCollection.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on May 16, 2020

import Foundation

/**
 FeatureCollection is Decodable struct and complis to GeocodeJSON revision 0.1.
 The following note describes GeocodeJSON specification.
 
 GeocodeJSON-spec
 Revision 0.1
 
 - Copyright : This work is licensed under a Creative Commons Attribution License (CC0)
 
 The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in RFC 2119.
 
 1. Purpose
 
 This specification attempts to create a standard for handling geocoding results.
 
 2. File format
 
 GeocodeJSON is a an extension of the [GeoJSON](http://geojson.org/) standard that aim to define places results.
 As such, files implementing GeocodeJSON MUST be valid GeoJSON and valid [JSON](http://json.org/) files.
 The JSON keys described here are not exclusive.
 
 ## Object
```
{
    // REQUIRED. GeocodeJSON result is a FeatureCollection.
    "type": "FeatureCollection",
    // REQUIRED. Namespace.
    "geocoding": {
        // REQUIRED. A semver.org compliant version number. Describes the version of
        // the GeocodeJSON spec that is implemented by this instance.
        "version": "0.1.0",
        // OPTIONAL. Default: null. The licence of the data. In case of multiple sources,
        // and then multiple licences, can be an object with one key by source.
        "licence": "ODbL",
        // OPTIONAL. Default: null. The attribution of the data. In case of multiple sources,
        // and then multiple attributions, can be an object with one key by source.
        "attribution": "OpenStreetMap Contributors",
        // OPTIONAL. Default: null. The query that has been issued to trigger the
        // search.
        "query": "24 allée de Bercy 75012 Paris"
    },
    // REQUIRED. As per GeoJSON spec.
    "features": [
        {
            // REQUIRED. As per GeoJSON spec.
            "properties": {
            // REQUIRED. Namespace.
                "geocoding": {
                    // REQUIRED. One of "house", "street", "locality", "city", "region", "country".
                    // TODO: make a clean list of common cases, plus make clear that the list
                    // isn't meant to be closed.
                    "type": "house",
                    // OPTIONAL. Result accuracy, in meters.
                    "accuracy": 20,
                    // RECOMMENDED. Suggested label for the result.
                    "label": "My Shoes Shop, 64 rue de Metz 59280 Armentières",
                    // OPTIONAL. Name of the place.
                    "name": "My Shoes Shop",
                    // OPTIONAL. Housenumber of the place.
                    // TODO: what about the suffix (64A, 64 bis, etc.)?
                    "housenumber": "64",
                    // OPTIONAL. Street of the place.
                    "street": "Rue de Metz",
                    // OPTIONAL. Locality of the place.
                    "locality": "Les Clarons",
                    // OPTIONAL. Postcode of the place.
                    "postcode": "59280",
                    // OPTIONAL. City of the place.
                    "city": "Armentières",
                    // OPTIONAL. District of the place.
                    "district": null,
                    // OPTIONAL. County of the place.
                    "county": null,
                    // OPTIONAL. State of the place.
                    "state": null,
                    // OPTIONAL. Country of the place.
                    "country": "France",
                    // OPTIONAL. Administratives boundaries the feature is included in,
                    // as defined in http://wiki.osm.org/wiki/Key:admin_level#admin_level
                    // TODO is there some still generic but less OSMish scheme?
                    "admin": {
                        "level2": "France",
                        "level4": "Nord-Pas-de-Calais",
                        "level6": "Nord"
                    },
                    // OPTIONAL. Geohash encoding of coordinates (see http://geohash.org/site/tips.html).
                    "geohash": "Ehugh5oofiToh9aWe3heemu7ighee8"
                }
            },
            // REQUIRED. As per GeoJSON spec.
            "type": "Feature",
            // REQUIRED. As per GeoJSON spec.
            "geometry": {
                "coordinates": [
                    2.889957,
                    50.687328
                ],
                "type": "Point"
            }
        }
    ]
}
```
*/
public struct FeatureCollection : Decodable {
    ///An array of feature objects.
    public let features : [Feature]?
    ///Namespace.
    public let geocoding : FeatureCollectionGeocoding?
    ///GeocodeJSON result is a FeatureCollection.
    public let type : String?
}
public struct FeatureCollectionGeocoding : Codable {
    ///Default: null. The attribution of the data. In case of multiple sources,
    ///and then multiple attributions, can be an object with one key by source.
    public let attribution : String?
    ///Default: null. The licence of the data. In case of multiple sources,
    ///and then multiple licences, can be an object with one key by source.
    public let licence : String?
    ///Default: null. The query that has been issued to trigger the
    ///search.
    public let query : String?
    ///A semver.org compliant version number. Describes the version of
    ///the GeocodeJSON spec that is implemented by this instance.
    public let version : String?
}
///As per GeoJSON spec.
public struct Feature : Decodable {
    ///As per GeoJSON spec.
    public let geometry : Geometry?
    ///As per GeoJSON spec.
    public let properties : Property?
    ///As per GeoJSON spec.
    public let type : String?
}
public struct PropertyGeocoding : Decodable {
    ///Result accuracy, in meters.
    public let accuracy : Int?
    ///Administratives boundaries the feature is included in.
    public let admin : Admin?
    ///City of the place.
    public let city : String?
    ///Country of the place.
    public let country : String?
    ///County of the place.
    public let county : String?
    ///District of the place.
    public let district : String?
    ///Geohash encoding of coordinates: [see tips](http://geohash.org/site/tips.html).
    public let geohash : String?
    ///Housenumber of the place.
    public let housenumber : String?
    ///Suggested label for the result.
    public let label : String?
    ///Locality of the place.
    public let locality : String?
    ///Name of the place.
    public let name : String?
    ///Postcode of the place.
    public let postcode : String?
    ///State of the place.
    public let state : String?
    ///Street of the place.
    public let street : String?
    ///One of "house", "street", "locality", "city", "region", "country".
    public let type : String?
}
///Administratives boundaries the feature is included in,
///as defined in
///[http://wiki.osm.org/wiki/Key:admin_level#admin_level](http://wiki.osm.org/wiki/Key:admin_level#admin_level).
public struct Admin : Decodable {
    public let level1 : String?
    public let level2 : String?
    public let level3 : String?
    public let level4 : String?
    public let level5 : String?
    public let level6 : String?
    public let level7 : String?
    public let level8 : String?
    public let level9 : String?
    public let level10 : String?
}
///As per GeoJSON spec.
public struct Geometry : Decodable {
    public let coordinates : [Float]?
    public let type : String?
}
///As per GeoJSON spec.
public struct Property : Decodable {
    public let geocoding : PropertyGeocoding?
}
