//
//  ViewController.swift
//  calculator
//
//  Created by 小鱼🐟 on 16/6/27.
//  Copyright © 2016年 小鱼🐟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var a: UITextField!
    var  result=0.0
    var  num1=0.0
    var  num2=0.0
    var  assignment=false
    var  state=false
    var  dot=false


    @IBAction func one(sender: AnyObject) {
         shuru ("1")
    }
  
    @IBAction func two(sender: AnyObject) {
        shuru ("2")
    }

    @IBAction func thir(sender: AnyObject) {
        shuru ("3")
    }
    
    @IBAction func four(sender: AnyObject) {
        shuru ("4")
    }
    
    @IBAction func fiver(sender: AnyObject) {
        shuru ("5")
    }
    @IBAction func six(sender: AnyObject) {
        shuru ("6")
    }
    
    @IBAction func seven(sender: AnyObject) {
        shuru ("7")
    }
    
    @IBAction func eight(sender: AnyObject) {
        shuru ("8")
    }
    @IBAction func nine(sender: AnyObject) {
        shuru ("9")
    }
    
    @IBAction func zoer(sender: AnyObject) {
        if(state==false)
        {
            a.text="0"
        }
        else
        {
            a.text=a.text!+"0"
        }

    }
    
    @IBAction func AC(sender: AnyObject) {
        //显示缓存 = ""
        //self.x.text = ""
        result=0.0
        num1=0.0
        num2=0.0
        assignment=false
        state=false
        dot=false
        a.text="  "

      
    }
 
    
    func shuru (number:String)
    {
        if(state==false)
        {
            a.text=number
            state=true
        }
        else
        {
            a.text=a.text!+number
        }
    }
    func Assignment()
    {
        if(assignment==false)
        {
            num1=(a.text! as NSString).doubleValue
            assignment=true
        }
        else
        {
            num2=(a.text! as NSString).doubleValue
            assignment=true
        }
    }
   

    
    @IBAction func dot(sender: AnyObject) {
        if(state==false)
        {
            a.text="0."
            state=true
            dot=true
        }
        else if(dot==false)
        {
            a.text=a.text!+"."
            dot=true
        }
    
    }
    
    var flag:String=""
    func x(fu:String)
    {
        Assignment()
        flag=fu
        state=false
    }
    
    @IBAction func add(sender: AnyObject) {
        x("add")

    }
    @IBAction func jian(sender: AnyObject) {
       x("jian")

    }
    @IBAction func cheng(sender: AnyObject) {
        x("cheng")

    }
    @IBAction func except(sender: AnyObject) {
        x("except")
    }
    
    @IBAction func sign(sender: AnyObject) {
        x("sign")
        
    }
    
    @IBAction func sq(sender: AnyObject) {
        if(state==true)
        {
            result=(Double)(a.text!)!
            if result<0{
                a.text="❌"
            }
            else{
                a.text="\(sqrt(result))"
            }
        }
        else
        {
            a.text=a.text!
        }
    }
    
    @IBAction func equal(sender: AnyObject) {
        
        if(state==true)
        {
            num2=0
        }
        Assignment()
        if(flag=="add")
        {
            result=num1+num2
        }
        else if(flag=="jian")
        {
            result=num1-num2
        }
        else if(flag=="cheng")
        {
            result=num1*num2
        }
        else if(flag=="except")
        {
            result=num1/num2
        }
        else if(flag=="sign"){
            result=(Double)(a.text!)!/100
            a.text="\(result)"
        }
                else
        {
            result=num1
        }
      
        
        
        
        
        assignment=false
        state=false
        a.text="\(result)"
            }
    
    
    
    
}






    
    
   