//
//  AmenuVC.swift
//  try MathQuiz v1
//
//  Created by UFO Xcode on 2020/1/20.
//  Copyright © 2020 UFO Xcode. All rights reserved.
//

import UIKit
import AVFoundation

class AmenuVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayNumbers.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(arrayNumbers[row])
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        userPickNumberString = String(row)
        labelNumber.text = userPickNumberString
    }
    
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var imageQuiz: UIImageView!
    @IBOutlet var myView: UIView!
    
    @IBOutlet weak var b1Home: UIButton!
    @IBOutlet weak var b1Reload: UIButton!
    @IBOutlet weak var b1Next: UIButton!
    
    
    
    
    @IBAction func btnReload(_ sender: UIButton) {
        popDown()
    }
    
    
    @IBAction func btnNext(_ sender: UIButton) {
        displayQuestion(index: indexQuestion)
        popDown()
        
    }
    
    @IBAction func btnHome(_ sender: UIButton) {
        let presentBy = presentingViewController as? ViewController
        presentBy?.showTotal()
        dismiss(animated: true, completion: nil)
    }
    
    var indexQuestion = 0
    let arrayNumbers = Array(0...36)
    var arrayAnswer = ["0","12","32","22","16","2","9","11","7","6","7","11","4","4","0","0","0","0","0","0","0"]
    var userPickNumberString = ""
    
    let levelNo = UserDefaults.standard
    
    var  player : AVAudioPlayer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //button 的圖片 是無法從 storyBoard 改為 fit 必須透過程式碼。。
        b1Home.imageView?.contentMode = .scaleAspectFit
        b1Reload.imageView?.contentMode = .scaleAspectFit
        b1Next.imageView?.contentMode = .scaleAspectFit
        picker.delegate = self
        picker.dataSource = self
        displayQuestion(index: indexQuestion)
        
   
    }
    func displayQuestion(index: Int){
        label1.text = String(indexQuestion)
        imageQuiz.image = UIImage(named: String(indexQuestion))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.addSubview(myView)
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.heightAnchor.constraint(equalToConstant: 480).isActive = true
        myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        myView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        let c = myView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 480)
        c.identifier = "bottom"
        c.isActive = true
        
        super.viewWillAppear(animated)
    }
    
    

  

    @IBAction func btnEnter(_ sender: UIButton) {
        
            if userPickNumberString == String(arrayAnswer[indexQuestion]){
                b1Next.isEnabled = true
                b1Next.alpha = 1
                
            
            print("correct")
                sound(soundFile: "win")
                indexQuestion += 1
                writeInData(writeIn: indexQuestion)
           popup()
                
        } else {
                b1Next.isEnabled = false
                b1Next.alpha = 0.5
                sound(soundFile: "wrong")
            popup()
            print("wrong")
        }
        
        }
        
        func writeInData (writeIn: Int ){
            levelNo.set(writeIn, forKey: "index")
            print("write in \(indexQuestion)")
            
        }
        
        func popup(){
            for c in view.constraints{
                if c.identifier == "bottom"{
                    c.constant = -50
                }
            }
            UIView.animate(withDuration: 0.5){
                self.view.layoutIfNeeded()
            }
        }
        func popDown(){
         for c in view.constraints{
                if c.identifier == "bottom" {
                c.constant = 480
                break
            }
        }
        }
    
    func sound(soundFile: String){
        let url = Bundle.main.url(forResource: soundFile , withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()

    }
}
