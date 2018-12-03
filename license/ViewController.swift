//
//  ViewController.swift
//  license
//
//  Created by User15 on 2018/11/29.
//  Copyright © 2018 ee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    struct qna{
        
        let question:String
        let options:[String]
        let answer:Int
        
    }
    
  
    @IBOutlet weak var front: UIImageView!
    @IBOutlet weak var logo: UILabel!
    @IBOutlet weak var nextbtn: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var numberlabel: UILabel!
    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet weak var questionlabel: UILabel!
   
    @IBOutlet weak var restart: UIButton!
    
        var number = 0
        var ans=0
        var score=0
    
    
        
    var questionarray=[qna(question:"駕駛人酒精濃度超過規定標準，駕車肇事致人重傷或死亡者，依照道路交通管理處罰條例應處",options:["吊扣駕駛執照","罰鍰、吊銷駕駛執照並終身不得再考領（但符合特定條件，且所受吊銷駕駛執照處分，執行已逾相關規定期間者，不在此限）","罰鍰"],answer:2),qna(question:"機車消音器損壞後， 不加修復仍然行駛者， 依道路交通管理處罰條例應處",options:["罰鍰並責令改正","交通警察告誡","罰鍰吊扣牌照"],answer:1),qna(question:"機車超速行車，依道路交通管理處罰條例應處",options:["罰鍰並記點","吊扣牌照","吊扣駕駛執照"],answer:1),qna(question:"將駕照借供他人駕車， 處罰吊扣駕照",options:["1個月","2個月","3個月"],answer:3),qna(question:"駕駛人在道路上以蛇行或僅以後輪著地等危險方式駕車因而肇事者，應處",options:["罰鍰並吊銷駕照","吊扣駕照","罰鍰。"],answer:1),qna(question:"利用機車犯罪，經判決有期徒刑以上之刑確定者，除吊銷駕駛執照外",options:["1年內不得考領","3年內不得考領","終身不得考領"],answer:3),qna(question:"違反道路交通安全規則，因而肇事致人重傷者，吊扣其駕照",options:["3個月至6個月","1個月至2個月","2個月至4個月"],answer:1),qna(question:"駕駛人如肇事致人重傷或死亡，應即時處理，並向警察機關報告，不得逃逸，違者應處罰 ",options:["吊銷駕駛執照，並終身不得再考領（但符合特定條件，且所受吊銷駕駛執照處分，執行已逾相關規定時間者，不在此限）","應予罰鍰","吊扣駕駛執照1年"],answer:1),qna(question:"機車駕駛人行駛於道路時，以手持方式使用行動電話、電腦或其他相類功能裝置進行撥接、通話、數據通訊或其他有礙駕駛安全之行為者，處新臺幣",options:["1，000元"," 1，500元","2，000元"],answer:1),qna(question:"在平交道上超車、迴車、倒車或停車，除罰鍰外並記違規點",options:["1點"," 3點","5點"],answer:2),qna(question:"駕駛人在6個月內，違規記點共達6點以上者，吊扣駕駛執照",options:["6個月","1個月","1年"],answer:2),qna(question:"駕駛人因違規記點，1年內經吊扣駕駛執照2次，再違反記點規定者，處以",options:["罰鍰","吊扣駕照1個月","吊銷駕照"],answer:3),qna(question:"臨時停車規定時間",options:["不得超過3分鐘，並保持立即行駛之狀態","不得超過10分鐘，駕駛人亦可離開座位","只要不超過5分鐘即可"],answer:1)]
        
        
    
    @IBAction func next(_ sender: Any) {


        
            
            restart.isHidden = false
            
            
        
        
        if number < 12{
            
            front.isHidden = true
            logo.isHidden = true
            questionlabel?.text=questionarray[number].question
            ans = questionarray[number].answer
            
            b1.setTitle(questionarray[number].options[0],for:.normal)
            b2.setTitle(questionarray[number].options[1],for:.normal)
            b3.setTitle(questionarray[number].options[2],for:.normal)
        }
        
        if number > 12{
            
            warning()
            
            
        }
        
        number = number + 1
        numberlabel.text = "Q\(number)"
        
        b1.isHidden = false
        b2.isHidden = false
        b3.isHidden = false
        questionlabel.isHidden = false
        numberlabel.isHidden = false
        

    }
    @IBAction func bt1(_ sender: Any) {
        
        if ans == 1{
            score += 1
            
        }
        
        b2.isHidden = true
        b3.isHidden = true
        scorelabel.text = "分數： \(score)"
        
    }
    
    
    @IBAction func bt2(_ sender: Any) {
        
        if ans == 2{
            score += 1
        }
        
        b1.isHidden = true
        b3.isHidden = true
        scorelabel.text = "分數： \(score)"
        
        
    }
    
    
    @IBAction func bt3(_ sender: Any) {
        
        if ans == 3{
            score += 1
        }
        b1.isHidden = true
        b2.isHidden = true
        scorelabel.text = "分數： \(score)"
        
    }
    
    @IBAction func restart(_ sender: Any) {
        
        re()
        
    }
    
    func re(){
        
        questionlabel.isHidden = true
        numberlabel.isHidden = true
        logo.isHidden = false
        front.isHidden = false
        b1.isHidden = true
        b2.isHidden = true
        b3.isHidden = true
        restart.isHidden = true
        
        number = 0
        score = 0
        scorelabel.text = "分數："
        
    }
    
    func warning () {
        var note = ""
        if  score <= 7{
            note = "ㄏ 你還是不要上路吧"
        }else {
            note = "你蠻棒的喔"
        }
        let alert =  UIAlertController(title: note, message: "\(score)分", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "重考加油", style: .default, handler:{ UIAlertAction in self.re()})
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        questionarray.shuffle()
        
        restart.isHidden = true
     
        
    }
        
    
    
        
    }


