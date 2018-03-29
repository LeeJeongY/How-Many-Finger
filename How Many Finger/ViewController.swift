//
//  ViewController.swift
//  How Many Finger
//
//  Created by D7703_23 on 2018. 3. 29..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func guess(_ sender: Any) {
        let number = arc4random_uniform(6)
        print(number)
        let numberString = String(number)
        
        if input.text == numberString{
            resultLabel.text = "빙고!!!!"
        } else{
            resultLabel.text = "실패!!! Try again!!  숨겨진 숫자는 현재 \(number)"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        input.backgroundColor = UIColor.green
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        input.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}










