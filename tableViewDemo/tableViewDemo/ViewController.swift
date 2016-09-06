//
//  ViewController.swift
//  tableViewDemo
//
//  Created by 邱陈弟陈 on 16/9/6.
//  Copyright © 2016年 邱陈弟陈. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //懒加载tableView
    lazy var myTableView:ExTableView =
        {
            let tableView = ExTableView(frame:CGRectMake(0, 0, CstmSize.screenWidth, CstmSize.screenHeight),style:UITableViewStyle.Plain)
            
            self.view.addSubview(tableView.set_ShowsVerticalScrollIndicator(true))
            
            return tableView
            
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //只要持有myTableView的对象,就可以在任何地方调用tableView的代理闭包,无需签订tableView的代理
        myTableView.set_NumberOfRowsInSection { (tableView, section) -> Int in//设置cell个数
            return 3
            
            }
            .set_HeightForRowAtIndexPath({ (tableView, indexPath) -> CGFloat in//设置cell的高度
                
                
                return 100
            })
        
        
        
        
        
            myTableView.set_ViewForRowAtIndexPath { (cell, indexPath) in //使用默认的cell
                
                cell.backgroundColor = UIColor.grayColor()
                
                //亦可自己创建新的View 调用cell.addSubview即可
                let  newView = UIView()
                newView.frame = CGRectMake(0, 0, CstmSize.screenWidth, 50)
                newView.backgroundColor = UIColor.orangeColor()
                cell.addSubview(newView)
                
            }
            
            .set_NumberOfSectionsInTableView { (tableView) -> Int in //分组
                return 1
        }
        

        
    }
    



}

