//
//  ViewController.swift
//  TestFirebasePreview
//
//  Created by Mac19 on 15/12/20.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let db = Firestore.firestore()
        
        // Creates if not exists or overwrite if does exist
        // db.collection("users").document("user1").setData(["name": "John", "lastname": "Thompson"])
        
        // Updates a field or set of fields
        db.collection("users").document("user1").setData(["lastname": "Wick"], merge: true)
    }


}

