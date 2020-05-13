//
//  ResultViewController.swift
//  GachaNew
//
//  Created by 森田貴帆 on 2020/05/13.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var backgroundimageView: UIImageView!
    @IBOutlet var monsterimageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        number = Int.random(in: 0...9)
        if number == 9{
            monsterimageView.image = UIImage(named: "monster010")
            backgroundimageView.image = UIImage(named: "bg_gold")
        }else if number > 7{
            monsterimageView.image = UIImage(named: "monster006")
            backgroundimageView.image = UIImage(named: "bg_red")
        }else{
            monsterimageView.image = UIImage(named: "monster003")
            backgroundimageView.image = UIImage(named: "bg_blue")
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
