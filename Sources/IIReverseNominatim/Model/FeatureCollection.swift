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
 
        GeocodeJSON is a an extension of the GeoJSON standard that aim to define places results.
        As such, files implementing GeocodeJSON MUST be valid GeoJSON and valid JSON files.
        The JSON keys described here are not exclusive.
 */
public struct FeatureCollection : Decodable {
        ///GeocodeJSON result
        let features : [Feature]?
        let geocoding : FeatureCollectionGeocoding?
        let type : String?
}
struct FeatureCollectionGeocoding : Codable {
    ///Default: null. The attribution of the data. In case of multiple sources,
    ///and then multiple attributions, can be an object with one key by source.
    let attribution : String?
    ///Default: null. The licence of the data. In case of multiple sources,
    ///and then multiple licences, can be an object with one key by source.
    let licence : String?
    ///Default: null. The query that has been issued to trigger the
    ///search.
    let query : String?
    ///A semver.org compliant version number. Describes the version of
    ///the GeocodeJSON spec that is implemented by this instance.
    let version : String?
}
public struct Feature : Decodable {
    let geometry : Geometry?
    let properties : Property?
    let type : String?
}
public struct PropertyGeocoding : Decodable {
    let accuracy : Int?
    let admin : Admin?
    let city : String?
    let country : String?
    let county : String?
    let district : String?
    ///Geohash encoding of coordinates: [see tips](http://geohash.org/site/tips.html).
    let geohash : String?
    let housenumber : String?
    let label : String?
    let locality : String?
    let name : String?
    let postcode : String?
    let state : String?
    let street : String?
    let type : String?
}
public struct Admin : Decodable {
    let level1 : String?
    let level2 : String?
    let level3 : String?
    let level4 : String?
    let level5 : String?
    let level6 : String?
    let level7 : String?
    let level8 : String?
    let level9 : String?
    let level10 : String?
}
public struct Geometry : Decodable {
    let coordinates : [Float]?
    let type : String?
}
public struct Property : Decodable {
    let geocoding : PropertyGeocoding?
}
