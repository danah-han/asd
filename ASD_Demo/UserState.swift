import Foundation
import UIKit


class UserState
{
    static let sharedInstance = UserState()
    
    var bodyPartChoice = ""
    var shirtColorChoice = ""
    var skinColorChoice = ""
    var feelingSelectionChoice = ""
    var name = ""
    var image : UIImage? = nil
    var numberOfStarsEarned = 0;
    
    init() { }
    
    func setImage(image: UIImage?) {
        self.image = image
    }
    
    func getImage() -> UIImage? {
        if (self.image == nil) {
            print("broken")
        }
        return self.image
    }
    
    func setName(choice: String) {
        self.name = choice
    }
    
    func getName() -> String {
        return self.name
    }
    
    func setShirtColor(choice: String) {
        self.shirtColorChoice = choice
    }
    
    func getShirtColorChoice() -> String {
        return self.shirtColorChoice
    }
    
    func setSkinColorChoice(choice: String) {
        self.skinColorChoice = choice
    }
    
    func getSkinColorChoice() -> String {
        return self.skinColorChoice
    }
    
    func setFeelingSelectionChioce(choice: String) {
        self.feelingSelectionChoice = choice
    }
    
    func getFeelingSelectionChoice(choice: String) -> String {
        return self.feelingSelectionChoice
    }
    
    func setBodyPartChoice(choice: String) {
        self.bodyPartChoice = choice
    }
    
    func getBodyPartChoice() -> String {
        return self.bodyPartChoice
    }
}
