
// Created on: Sept , 2018
// Created by: Brody MacNeil
// Created for: ICS3U
// This program is the UIKit solution it will have a 3 buttons showing the names of the cities and when hit shows the name for that cities football and hockey team.
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let multiLabel2 = UILabel()
    let multiLabel : UILabel = UILabel()
    let pittsburghButton = UIButton()
    let bostonButton = UIButton()
    let newyorkButton = UIButton()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        //englishLabel.text = "Hello World"
        multiLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(multiLabel)
        multiLabel.translatesAutoresizingMaskIntoConstraints = false
        multiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor ).isActive = true
        multiLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor ).isActive = true
        multiLabel2.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(multiLabel2)
        multiLabel2.translatesAutoresizingMaskIntoConstraints = false
        multiLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor ).isActive = true
        multiLabel2.centerYAnchor.constraint(equalTo: view.centerYAnchor , constant : 20).isActive = true
        
        
        bostonButton.setTitle("Boston", for: UIControlState.normal)
        bostonButton.setTitleColor(.blue, for: .normal)
        bostonButton.addTarget(self, action: #selector(bostonText), for: .touchUpInside)
        view.addSubview(bostonButton)
        bostonButton.translatesAutoresizingMaskIntoConstraints = false
        bostonButton.topAnchor.constraint(equalTo: view.topAnchor , constant : 20).isActive = true
        bostonButton.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant : 20).isActive =
        true
        newyorkButton.setTitle("New York", for: UIControlState.normal)
        newyorkButton.setTitleColor(.blue, for: .normal)
        newyorkButton.addTarget(self, action: #selector(newyorkText), for: .touchUpInside)
        view.addSubview(newyorkButton)
        newyorkButton.translatesAutoresizingMaskIntoConstraints = false
        newyorkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        newyorkButton.topAnchor.constraint(equalTo: view.topAnchor , constant : 20).isActive =
        true
        pittsburghButton.setTitle("Pittsburgh", for: UIControlState.normal)
        pittsburghButton.setTitleColor(.blue, for: .normal)
        pittsburghButton.addTarget(self, action: #selector(pittsburghText), for: .touchUpInside)
        view.addSubview(pittsburghButton)
        pittsburghButton.translatesAutoresizingMaskIntoConstraints = false
        pittsburghButton.topAnchor.constraint(equalTo: view.topAnchor , constant : 20).isActive = true
        pittsburghButton.rightAnchor.constraint(equalTo: view.rightAnchor , constant : -20).isActive =
        true
        
    }
    @objc func bostonText() {
        // show the team names for bostons nfl and nhl teams.
        multiLabel.text = "Bruins"
        multiLabel2.text = "Patriots"
    }
    @objc func newyorkText() {
        // show the team names for New York's nfl and nhl teams.
        multiLabel.text = "Ranger/Islanders"
        multiLabel2.text = "Giants/Jets"
    }
    @objc func pittsburghText() {
        // show the team names for Pittsburgh nfl and nhl teams.
        multiLabel.text = "Penguins"
        multiLabel2.text = "Steelers"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()


