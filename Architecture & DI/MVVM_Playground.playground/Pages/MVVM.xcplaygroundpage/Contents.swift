//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: [Previous](@previous)

//View Controller
class PersonViewController:UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
        self.view.backgroundColor = UIColor.blue
    }
    
}

protocol PersonProtocol{
    
    var name: String{get}
    var gender: String {get}
    var title: String {get set}
    
    func greetingMessage() -> String
}
class Person: PersonProtocol{
    
    var name: String = ""
}

PlaygroundPage.current.needsIndefiniteExecution = true
let viewController = PersonViewController()
let container = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
PlaygroundPage.current.liveView = container
container.addSubview(viewController.view)

