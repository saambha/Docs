//: [Previous](@previous)

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

enum Gender: Int{
    case Male = 0
    case Female
}
//: [Next](@next)

//View Controller
class PersonViewController:UIViewController, UITextFieldDelegate{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
        self.view.backgroundColor = UIColor.lightGray
        
        self.setUpTextViews()
    }
    
    func setUpTextViews(){
        
        let nameTxtView = UITextField(frame: CGRect(x: 40, y: 40, width: 240, height: 40))
        nameTxtView.backgroundColor = UIColor.white

        self.view .addSubview(nameTxtView)
        
        let genderTxtView = UITextField(frame: CGRect(x: 40, y: 100, width: 240, height: 40))
        genderTxtView.backgroundColor = UIColor.white
        self.view .addSubview(genderTxtView)
        
        let submitBtn = UIButton(frame: CGRect(x: 40, y: 160, width: 240, height: 40))
        submitBtn.backgroundColor = UIColor.brown
        self.view .addSubview(submitBtn)
        

        let greetingLabel = UILabel(frame: CGRect(x: 40, y: 220, width: 240, height: 160))
        greetingLabel.backgroundColor = UIColor.white
        self.view .addSubview(greetingLabel)
    }
}

class Person{
    
    var name: String
    var gender: Gender
    
    init(person name: String, whois gender:Gender) {
        self.name = name
        self.gender = gender
    }
}

PlaygroundPage.current.needsIndefiniteExecution = true
let viewController = PersonViewController()
let container = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
PlaygroundPage.current.liveView = container
container.addSubview(viewController.view)

