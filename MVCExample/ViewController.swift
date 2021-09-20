//
//  ViewController.swift
//  MVCExample
//
//  Created by Никита on 20.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let person = Person(firstName: "Jack", lastName: "Smith", gender: "male", location: Location(city: "CaliforniA", country: "USA"), age: 40, weight: 95.3, height: 175.3)

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let myView = ViewExample(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        myView.center = view.center
        myView.configure(with: "\(person.firstName) \(person.lastName) ")
        view.addSubview(myView)
    }


}

struct Person{
    let firstName: String
    let lastName: String
    let gender: String
    let location: Location
    let age: Int
    let weight: Double
    let height: Double
    
}
struct  Location {
    let city: String
    let country: String
}
