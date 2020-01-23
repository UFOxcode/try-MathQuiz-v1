//
//  ViewController.swift
//  try MathQuiz v1
//
//  Created by UFO Xcode on 2020/1/19.
//  Copyright © 2020 UFO Xcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btn16: UIButton!
    @IBOutlet weak var btn17: UIButton!
    @IBOutlet weak var btn18: UIButton!
    @IBOutlet weak var btn19: UIButton!
    @IBOutlet weak var btn20: UIButton!
    
    @IBOutlet weak var check1: UIImageView!
    @IBOutlet weak var check2: UIImageView!
    @IBOutlet weak var check3: UIImageView!
    @IBOutlet weak var check4: UIImageView!
    @IBOutlet weak var check5: UIImageView!
    @IBOutlet weak var check6: UIImageView!
    @IBOutlet weak var check7: UIImageView!
    @IBOutlet weak var check8: UIImageView!
    @IBOutlet weak var check9: UIImageView!
    @IBOutlet weak var check10: UIImageView!
    @IBOutlet weak var check11: UIImageView!
    @IBOutlet weak var check12: UIImageView!
    @IBOutlet weak var check13: UIImageView!
    @IBOutlet weak var check14: UIImageView!
    @IBOutlet weak var check15: UIImageView!
    @IBOutlet weak var check16: UIImageView!
    @IBOutlet weak var check17: UIImageView!
    @IBOutlet weak var check18: UIImageView!
    @IBOutlet weak var check19: UIImageView!
    @IBOutlet weak var check20: UIImageView!
    
    
    
    
    
    
    
    
    
    let levelNo = UserDefaults.standard
    var levelIndex = 0
    
    
    
    
    
    
    var indexbtn = 0
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        clear()
        startWrteOnce()
//        levelIndex = 20
        showTotal()
       
    }

    
    
    
    @IBAction func buttonsPressed(_ sender: UIButton) {
        
        indexbtn = sender.tag
        
        self.performSegue(withIdentifier: "goA", sender: self)
        

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goA" {
            let destiVC = segue.destination as! AmenuVC
            destiVC.indexQuestion = indexbtn
        }
    }
    func startWrteOnce(){
        print(levelIndex)
        if levelIndex == 0 {
            writeInData(writeIn: 1)
        }}
    
    func writeInData (writeIn: Int ){
        levelNo.set(writeIn, forKey: "index")
        
    }
    func getData()  {
        levelIndex = levelNo.integer(forKey: "index")
        print(levelIndex)
     
    }
    func showTotal (){
        getData()
        
        if levelIndex >= 1 {
            btn1.isEnabled = true
            btn1.backgroundColor = UIColor.systemYellow
        }
       if levelIndex >= 2 {
            btn2.isEnabled = true
            btn2.backgroundColor = UIColor.systemYellow
            check1.alpha = 1
        }
        if levelIndex >= 3 {
            btn3.isEnabled = true
            btn3.backgroundColor = UIColor.systemYellow
            check2.alpha = 1
        }
        if levelIndex >= 4 {
            btn4.isEnabled = true
            btn4.backgroundColor = UIColor.systemYellow
            check3.alpha = 1
        }
        if levelIndex >= 5 {
            btn5.isEnabled = true
            btn5.backgroundColor = UIColor.systemYellow
            check4.alpha = 1
        }
        if levelIndex >= 6 {
            btn6.isEnabled = true
            btn6.backgroundColor = UIColor.systemYellow
            check5.alpha = 1
        }
        if levelIndex >= 7 {
            btn7.isEnabled = true
            btn7.backgroundColor = UIColor.systemYellow
            check6.alpha = 1
        }
        if levelIndex >= 8 {
            btn8.isEnabled = true
            btn8.backgroundColor = UIColor.systemYellow
            check7.alpha = 1
        }
        if levelIndex >= 9 {
            btn9.isEnabled = true
            btn9.backgroundColor = UIColor.systemYellow
            check8.alpha = 1
        }
        if levelIndex >= 10 {
            btn10.isEnabled = true
            btn10.backgroundColor = UIColor.systemYellow
            check9.alpha = 1
        }
        if levelIndex >= 11 {
            btn11.isEnabled = true
            btn11.backgroundColor = UIColor.systemYellow
            check10.alpha = 1
        }
        if levelIndex >= 12 {
            btn12.isEnabled = true
            btn12.backgroundColor = UIColor.systemYellow
            check11.alpha = 1
        }
        if levelIndex >= 13 {
            btn13.isEnabled = true
            btn13.backgroundColor = UIColor.systemYellow
            check12.alpha = 1
        }
        if levelIndex >= 14 {
            btn14.isEnabled = true
            btn14.backgroundColor = UIColor.systemYellow
            check13.alpha = 1
        }
        if levelIndex >= 15 {
            btn15.isEnabled = true
            btn15.backgroundColor = UIColor.systemYellow
            check14.alpha = 1
        }
        if levelIndex >= 16 {
            btn16.isEnabled = true
            btn16.backgroundColor = UIColor.systemYellow
            check15.alpha = 1
        }
        if levelIndex >= 17 {
            btn17.isEnabled = true
            btn17.backgroundColor = UIColor.systemYellow
            check16.alpha = 1
        }
        if levelIndex >= 18 {
            btn18.isEnabled = true
            btn18.backgroundColor = UIColor.systemYellow
            check17.alpha = 1
        }
        if levelIndex >= 19 {
            btn19.isEnabled = true
            btn19.backgroundColor = UIColor.systemYellow
            check18.alpha = 1
        }
        if levelIndex >= 20 {
            btn20.isEnabled = true
            btn20.backgroundColor = UIColor.systemYellow
            check19.alpha = 1
        }
        if levelIndex >= 21 {
            btn20.isEnabled = true
            btn20.backgroundColor = UIColor.systemYellow
            check20.alpha = 1
            
        }
        
    }
    func clear(){
        
        btn1.backgroundColor = UIColor.lightGray
        btn2.backgroundColor = UIColor.lightGray
        btn3.backgroundColor = UIColor.lightGray
        btn4.backgroundColor = UIColor.lightGray
        btn5.backgroundColor = UIColor.lightGray
        btn6.backgroundColor = UIColor.lightGray
        btn7.backgroundColor = UIColor.lightGray
        btn8.backgroundColor = UIColor.lightGray
        btn9.backgroundColor = UIColor.lightGray
        btn10.backgroundColor = UIColor.lightGray
        btn11.backgroundColor = UIColor.lightGray
        btn12.backgroundColor = UIColor.lightGray
        btn13.backgroundColor = UIColor.lightGray
        btn14.backgroundColor = UIColor.lightGray
        btn15.backgroundColor = UIColor.lightGray
        btn16.backgroundColor = UIColor.lightGray
        btn17.backgroundColor = UIColor.lightGray
        btn18.backgroundColor = UIColor.lightGray
        btn19.backgroundColor = UIColor.lightGray
        btn20.backgroundColor = UIColor.lightGray
        

                 btn1.isEnabled = false
                 btn2.isEnabled = false
                 btn3.isEnabled = false
                 btn4.isEnabled = false
                 btn5.isEnabled = false
                 btn6.isEnabled = false
                 btn7.isEnabled = false
                 btn8.isEnabled = false
                 btn9.isEnabled = false
                btn10.isEnabled = false
                btn11.isEnabled = false
                btn12.isEnabled = false
                btn13.isEnabled = false
                btn14.isEnabled = false
                btn15.isEnabled = false
                btn16.isEnabled = false
                btn17.isEnabled = false
                btn18.isEnabled = false
                btn19.isEnabled = false
                btn20.isEnabled = false
  
        
        
        
        check1.alpha = 0.2
        check2.alpha = 0.2
        check3.alpha = 0.2
        check4.alpha = 0.2
        check5.alpha = 0.2
        check6.alpha = 0.2
        check7.alpha = 0.2
        check8.alpha = 0.2
        check9.alpha = 0.2
        check10.alpha = 0.2
        check11.alpha = 0.2
        check12.alpha = 0.2
        check13.alpha = 0.2
        check14.alpha = 0.2
        check15.alpha = 0.2
        check16.alpha = 0.2
        check17.alpha = 0.2
        check18.alpha = 0.2
        check19.alpha = 0.2
        check20.alpha = 0.2
        
        
        
        
        
        
        
       
        
        
        
        
        
        
        
              
        
//        check1.isHidden = true
//        check2.isHidden = true
//        check3.isHidden = true
//        check4.isHidden = true
//        check5.isHidden = true
//        check6.isHidden = true
//        check7.isHidden = true
//        check8.isHidden = true
//        check9.isHidden = true
//        check10.isHidden = true
//        check11.isHidden = true
//        check12.isHidden = true
//        check13.isHidden = true
//        check14.isHidden = true
//        check15.isHidden = true
//        check16.isHidden = true
//        check17.isHidden = true
//        check18.isHidden = true
//        check19.isHidden = true
//        check20.isHidden = true

    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        levelIndex = 0
        startWrteOnce()
        clear()
        showTotal()
        
    }
    
    
}

