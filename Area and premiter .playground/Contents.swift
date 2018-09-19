

// Created on: spt,14
// Created by: fawaz
// Created for: ICS3U
// This program does solves the premiter and area
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let area = UILabel()
    let problem = UILabel()
    let premiter = UILabel()
    let answerButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        //area.text = "area = \(4 * 2)"
        view.addSubview(area)
        area.translatesAutoresizingMaskIntoConstraints = false
        area.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        area.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //area.text = "area = \(4 * 2)"
        view.addSubview(premiter)
        premiter.translatesAutoresizingMaskIntoConstraints = false
        premiter.topAnchor.constraint(equalTo: view.topAnchor, constant: 240).isActive = true
        premiter.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        problem.text = "If the measurements of a rectangle is 4cm wide and 2cm long. What is the area and the premiter?"
        view.addSubview(problem)
        problem.translatesAutoresizingMaskIntoConstraints = false
        problem.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        problem.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("answer", for: UIControlState.normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(answer), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        answerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
    
    @objc func answer() {
        area.text = "area = \(2 * 4) cm^2"
        premiter.text = "premiter = \((2 + 4) * 2) cm^2"
    }
        
        
    }
    
    var prefersStatusBarHidden: Bool {
        return true
    }


// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()



