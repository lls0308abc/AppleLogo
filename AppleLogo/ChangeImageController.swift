//
//  ChangeImageController.swift
//  AppleLogo
//
//  Created by Amatsukaze on 2018/5/2.
//  Copyright © 2018年 Amatsukaze. All rights reserved.
//

import UIKit

class ChangeImageController: UIViewController {

    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBOutlet weak var AlphaSlider: UISlider!
    @IBOutlet weak var RedValue: UILabel!
    @IBOutlet weak var GreenValue: UILabel!
    @IBOutlet weak var BlueValue: UILabel!
    @IBOutlet weak var AlphaValue: UILabel!
    @IBOutlet weak var AppleLogo: UIImageView!
    
    @IBAction func _Slider(_ sender: UISlider) {
        AppleLogo.backgroundColor = UIColor(
            red: CGFloat(RedSlider.value),
            green: CGFloat(GreenSlider.value),
            blue: CGFloat(BlueSlider.value),
            alpha: CGFloat(AlphaSlider.value))
        if sender == RedSlider
        {
            RedValue.text = "\((Int)(RedSlider.value * 255))"
        }
        else if sender == GreenSlider
        {
            GreenValue.text = "\((Int)(GreenSlider.value * 255))"
        }
        else if sender == BlueSlider
        {
            BlueValue.text = "\((Int)(BlueSlider.value * 255))"
        }
        else
        {
            AlphaValue.text = "\((Int)(AlphaSlider.value * 100))"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
