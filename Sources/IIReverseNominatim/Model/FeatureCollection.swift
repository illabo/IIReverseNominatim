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
        public let features : [Feature]?
        public let geocoding : FeatureCollectionGeocoding?
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
public struct Feature : Decodable {
    public let geometry : Geometry?
    public let properties : Property?
    public let type : String?
}
public struct PropertyGeocoding : Decodable {
    public let accuracy : Int?
    public let admin : Admin?
    public let city : String?
    public let country : String?
    public let county : String?
    public let district : String?
    ///Geohash encoding of coordinates: [see tips](http://geohash.org/site/tips.html).
    public let geohash : String?
    public let housenumber : String?
    public let label : String?
    public let locality : String?
    public let name : String?
    public let postcode : String?
    public let state : String?
    public let street : String?
    public let type : String?
}
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
public struct Geometry : Decodable {
    public let coordinates : [Float]?
    public let type : String?
}
public struct Property : Decodable {
    public let geocoding : PropertyGeocoding?
}
