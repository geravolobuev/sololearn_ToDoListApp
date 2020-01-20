//
//  ViewController.swift
//  sololearn_ToDoListApp
//
//  Created by MAC on 20/01/2020.
//  Copyright © 2020 Gera Volobuev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
        if isInAddMode {
        dismiss(animated: true, completion: nil)
        } else {
            navigationController!.popViewController(animated: true)
        }
    }
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    var item: Item?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let item = item {
            nameTextField.text = item.name
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton {
            let name = nameTextField.text ?? ""
            item = Item(name: name)
        }
    }


}

