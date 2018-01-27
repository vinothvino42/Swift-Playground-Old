/*:
 # Two Phase Initializations
 > How can one init init the other ?
 */
struct NucleaRocket {
    var meters: Double
    var liters: Double
    
    //Init for indian
    init(meters: Double, liters: Double) {
        self.meters = meters
        self.liters = liters
    }
    
    //Init for American
    init(ft: Double, galloon: Double) {
        let convertedMeters = ft / 3.28
        let convertedLiters = galloon * 3.78
        
        self.init(meters: convertedMeters, liters: convertedLiters)
    }
}

//indian Scientist
var rocket = NucleaRocket(meters: 20, liters: 20)
rocket.liters
rocket.meters

// American Scientist
var newRocket = NucleaRocket(ft: 300, galloon: 2)
newRocket.liters
newRocket.meters
