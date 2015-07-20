//
//  TMClient.swift
//  TourManager
//
//  Created by Chris Larsen on 7/18/15.
//  Copyright (c) 2015 tigerbomb. All rights reserved.
//

import Foundation

class TMClient {
    
    /*
    TODO : Update to get info from bandsInTown, etc
    */
    
    /*
    TODO : Update to save info and pull from saved info
    */
    
    static func getBands() -> Array<Band> {
        
        let bandName: [String] = ["Banquets", "Suburban Scum", "The Banner", "Extinction AD", "Torche", "The Menzingers"]
        
        var bands: [Band] = []
        
        for var i = 0; i < bandName.count; i++
        {
            var name = bandName[i]
            
            var band = Band(name: name)
            
            bands.append(band)
        }
        
        return bands
    }
    
    static func getBandById(id: Int) -> Band? {
        
        var bands: Array = TMClient.getBands()
        
        if id > bands.count
        {
            return nil
        }
        
        var band: Band = bands[id]
        
        return band
    }
    
}