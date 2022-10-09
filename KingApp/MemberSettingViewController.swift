//
//  MemberSettingViewController.swift
//  KingApp
//
//  Created by ２ iPhone on 2022/10/07.
//

import UIKit

class MemberSettingViewController: UIViewController {
    
    let def = UserDefaults.standard
    var num = 3
    var playerNames:[String] = ["player1","player2","player3","player4","player5","player6","player7","player8","player9","player10"]
    
    @IBOutlet weak var leftBtnLbl: UIButton!
    @IBOutlet weak var rightBtnLbl: UIButton!
    @IBOutlet weak var numLbl: UILabel!
    @IBOutlet var allTF: [UITextField]!
    @IBOutlet weak var TF1: UITextField!
    @IBOutlet weak var TF2: UITextField!
    @IBOutlet weak var TF3: UITextField!
    @IBOutlet weak var TF4: UITextField!
    @IBOutlet weak var TF5: UITextField!
    @IBOutlet weak var TF6: UITextField!
    @IBOutlet weak var TF7: UITextField!
    @IBOutlet weak var TF8: UITextField!
    @IBOutlet weak var TF9: UITextField!
    @IBOutlet weak var TF10: UITextField!
    
    @IBAction func TF1(_ sender: UITextField) {
        TF1.text = sender.text
    }
    @IBAction func TF2(_ sender: UITextField) {
        TF2.text = sender.text
    }
    @IBAction func TF3(_ sender: UITextField) {
        TF3.text = sender.text
    }
    @IBAction func TF4(_ sender: UITextField) {
        TF4.text = sender.text
    }
    @IBAction func TF5(_ sender: UITextField) {
        TF5.text = sender.text
    }
    @IBAction func TF6(_ sender: UITextField) {
        TF6.text = sender.text
    }
    @IBAction func TF7(_ sender: UITextField) {
        TF7.text = sender.text
    }
    @IBAction func TF8(_ sender: UITextField) {
        TF8.text = sender.text
    }
    @IBAction func TF９(_ sender: UITextField) {
        TF9.text = sender.text
    }
    @IBAction func TF10(_ sender: UITextField) {
        TF10.text = sender.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField()
        setName()
    }
    
    @IBAction func backBtnAct(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func leftBtnAct(_ sender: UIButton) {
        num -= 1
        textField()
    }
    
    @IBAction func rightBtnAct(_ sender: UIButton) {
        num += 1
        textField()
    }
    
    @IBAction func startBtnAct(_ sender: UIButton) {
        playerNames[0] = TF1.text! as String
        playerNames[1] = TF2.text! as String
        playerNames[2] = TF3.text! as String
        playerNames[3] = TF4.text! as String
        playerNames[4] = TF5.text! as String
        playerNames[5] = TF6.text! as String
        playerNames[6] = TF7.text! as String
        playerNames[7] = TF8.text! as String
        playerNames[8] = TF9.text! as String
        playerNames[9] = TF10.text! as String
        def.set(playerNames, forKey: "PlayerNames")
        def.set(num, forKey: "num")
    }
    
    func textField(){
        if num == 3 {
            leftBtnLbl.isHidden = true
        } else if num == 10 {
            rightBtnLbl.isHidden = true
        } else {
            leftBtnLbl.isHidden = false
            rightBtnLbl.isHidden = false
        }
        switch num {
        case 3:
            isHiddenTF(n: 2)
            break
        case 4:
            isHiddenTF(n: 3)
            break
        case 5:
            isHiddenTF(n: 4)
            break
        case 6:
            isHiddenTF(n: 5)
            break
        case 7:
            isHiddenTF(n: 6)
            break
        case 8:
            isHiddenTF(n: 7)
            break
        case 9:
            isHiddenTF(n: 8)
            break
        case 10:
            isHiddenTF(n: 9)
            break
        default:
            break
        }
        numLbl.text = "\(num)"
    }
    
    func isHiddenTF(n:Int) {
        for i in 0..<10{
            if(i > n){
                allTF[i].isHidden = true
            } else {
                allTF[i].isHidden = false
            }
        }
    }
    
    func setName() {
        TF1.text = playerNames[0]
        TF2.text = playerNames[1]
        TF3.text = playerNames[2]
        TF4.text = playerNames[3]
        TF5.text = playerNames[4]
        TF6.text = playerNames[5]
        TF7.text = playerNames[6]
        TF8.text = playerNames[7]
        TF9.text = playerNames[8]
        TF10.text = playerNames[9]
    }

}
