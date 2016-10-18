import Foundation
import UIKit


class DTO
{
    static let dto = DTO()
    
    var bodyPartChoice: String
    
    init() {
        bodyPartChoice = "Tummy"
    }
    
    func setBodyPartChoice(choice: String) {
        self.bodyPartChoice = choice
    }
    
    func getBodyPartChoice() -> String {
        return self.bodyPartChoice
    }
    
    
}
