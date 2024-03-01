import UIKit

class ViewController: UIViewController {
    let diceOne = #imageLiteral(resourceName: "DiceOne")
    let diceTwo = #imageLiteral(resourceName: "DiceTwo")
    let diceThree = #imageLiteral(resourceName: "DiceThree")
    let diceFour = #imageLiteral(resourceName: "DiceFour")
    let diceFive = #imageLiteral(resourceName: "DiceFive")
    let diceSix = #imageLiteral(resourceName: "DiceSix")
    
    @IBOutlet weak var diceViewOne: UIImageView!
    
    @IBOutlet weak var diceViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollDice(_ sender: Any) {
        let firstRandomNumber = Int.random(in: 1...6)
        let secondRandomNumber = Int.random(in: 1...6)
        print(firstRandomNumber,secondRandomNumber)
        let numDice = self.getNumDice()
        diceViewOne.image = numDice[firstRandomNumber - 1]
        diceViewTwo.image = numDice[secondRandomNumber - 1]
        
    }
    
    func getNumDice() -> Array<UIImage> {
        return [
            self.diceOne, 
            self.diceTwo,
            self.diceThree,
            self.diceFour,
            self.diceFive,
            self.diceSix,
        ]
    }
}

