//
//  Band.swift
//  TourManager
//
//  Created by Chris Larsen on 7/18/15.
//  Copyright (c) 2015 tigerbomb. All rights reserved.
//

import Foundation

class Band {
    
    var name: String
    var tours: [Tour]
    
    init(name: String) {
        self.name = name
        self.tours = [] //Set to an empty array in init
    }
    
    
    func getTours() -> Array<Tour> {
        
        // TODO : Test Stuff, remove
        
        var testTour1: Tour = Tour(name: "Manboys on Tour")
        var testTour2: Tour = Tour(name: "Some shitty weekend")
        var testTour3: Tour = Tour(name: "Warped Tour")
        var testTour4: Tour = Tour(name: "Ressurection Tour")
        var testTour5: Tour = Tour(name: "Superfans weekend")
        
        tours = [testTour1, testTour2, testTour3, testTour4, testTour5]
        
        return self.tours
    }
    
    func addTour(tourToAdd: Tour) {
        tours.append(tourToAdd)
    }
    
    func removeTour(tourToRemove: Tour) {
        //TODO : Set up tour removal
    }
    
}