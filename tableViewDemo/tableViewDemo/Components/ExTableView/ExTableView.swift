//
//  ExTableView.swift
//  TableViewDemo1
//
//  Created by qiu on 16/3/30.
//  Copyright © 2016年 longchen.d0. All rights reserved.
//



import UIKit

class ExTableView: UITableView  {
    
    override init(frame:CGRect, style:UITableViewStyle) {
        
        super.init(frame: frame, style: style)
        
        dataSource = self
        
        delegate = self
    }
    


    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        dataSource = self
        
        delegate = self
        
//        fatalError("init(coder:) has not been implemented")
        
    }
    
    //MARK: 位于UITableViewDataSource中的代理闭包
    typealias TypeClosureNumberOfRowsInsection = (tableView: UITableView, section: Int) -> Int
    lazy var closureNumberOfRowsInSection = TypeClosureNumberOfRowsInsection?()
    
    typealias TypeClosureCellForRowAtIndexPath = (tableView: UITableView, indexPath: NSIndexPath) -> UITableViewCell
    lazy var closureCellForRowAtIndexPath = TypeClosureCellForRowAtIndexPath?()
    
    typealias TypeClosureViewForRowAtIndexPath = (cell: UITableViewCell, indexPath: NSIndexPath) -> ()
    lazy var closureViewForRowAtIndexPath = TypeClosureViewForRowAtIndexPath?()

    typealias TypeClosureHeightForRowAtIndexPath = (tableView: UITableView, indexPath: NSIndexPath) -> CGFloat
    lazy var closureHeightForRowAtIndexPath = TypeClosureHeightForRowAtIndexPath?()
    
    typealias TypeClosureNumberOfSectionsInTableView = (tableView: UITableView) -> Int
    lazy var closureNumberOfSectionsInTableView = TypeClosureNumberOfSectionsInTableView?()
    
    typealias TypeClosureHeightForHeaderInSection = (tableView: UITableView, section: Int) -> CGFloat
    lazy var closureHeightForHeaderInSection = TypeClosureHeightForHeaderInSection?()
    
    typealias TypeClosureViewForHeaderInSection = (tableView: UITableView, section: Int) -> UIView
    lazy var closureViewForHeaderInSection = TypeClosureViewForHeaderInSection?()
    
    typealias TypeClosureHeightForFooterInSection = (tableView: UITableView,  section: Int) -> (CGFloat)
    lazy var closureHeightForFooterInSection = TypeClosureHeightForFooterInSection?()
    
    typealias TypeClosureViewForFooterInSection = (tableView: UITableView,  section: Int) -> (UIView?)
    lazy var closureViewForFooterInSection = TypeClosureViewForFooterInSection?()
    
    
    typealias TypeClosureDidSelectRowAtIndexPath = (tableView: UITableView, indexPath: NSIndexPath) -> ()
    lazy var closureDidSelectRowAtIndexPath = TypeClosureDidSelectRowAtIndexPath?()
    
    typealias TypeClosureWillDisplayHeaderView = (tableView: UITableView, view: UIView, section: Int) -> ()
    lazy var closureWillDisplayHeaderView = TypeClosureWillDisplayHeaderView?()
    
    //MARK: 以下是UIScrollView的代理闭包
    typealias TypeClosureScrollViewWillBeginDragging = (scrollView: UIScrollView) -> ()
    lazy var closureScrollViewWillBeginDragging = TypeClosureScrollViewWillBeginDragging?()
    
    typealias TypeClosureScrollViewWillEndDragging = (scrollView: UIScrollView, velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) -> ()
    lazy var closureScrollViewWillEndDragging = TypeClosureScrollViewWillEndDragging?()
    
    typealias TypeClosureScrollViewDidEndDragging = (scrollView: UIScrollView, decelerate: Bool) -> ()
    lazy var closureScrollViewDidEndDragging = TypeClosureScrollViewDidEndDragging?()
    
    typealias TypeClosureScrollViewWillBeginDecelerating = (scrollView: UIScrollView) -> ()
    lazy var closureScrollViewWillBeginDecelerating = TypeClosureScrollViewWillBeginDecelerating?()
    
    typealias TypeClosureScrollViewDidScroll = (scrollView: UIScrollView) -> ()
    lazy var closureScrollViewDidScroll = TypeClosureScrollViewDidScroll?()
    
    typealias TypeClosureScrollViewDidEndDecelerating = (scrollView: UIScrollView) -> ()
    lazy var closureScrollViewDidEndDecelerating = TypeClosureScrollViewDidScroll?()
    
    
    
    
    
    typealias TypeClosureCanEditRowAtIndexPath = (tableView: UITableView, indexPath: NSIndexPath) -> (Bool)
    lazy var closureCanEditRowAtIndexPath = TypeClosureCanEditRowAtIndexPath?()
    
    typealias TypeClosureCanMoveRowAtIndexPath = (tableView: UITableView, indexPath: NSIndexPath) -> (Bool)
    lazy var closureCanMoveRowAtIndexPath = TypeClosureCanEditRowAtIndexPath?()
    
    typealias TypeClosureEditingStyle = (tableView: UITableView,  indexPath: NSIndexPath) -> UITableViewCellEditingStyle
    lazy var closureEditingStyle = TypeClosureEditingStyle?()
    
    typealias TypeClosureCommitEditingStyle = (tableView: UITableView, editingStyle: UITableViewCellEditingStyle, indexPath: NSIndexPath) -> ()
    lazy var closureCommitEditingStyle = TypeClosureCommitEditingStyle?()
    
    typealias TypeClosureMoveRowAtIndexPath = (tableView: UITableView, sourceIndexPath: NSIndexPath, destinationIndexPath: NSIndexPath) -> ()
    lazy var closureMoveRowAtIndexPath = TypeClosureMoveRowAtIndexPath?()
}

extension NSObject{

    class func tableViewCreater(createTableView: (tableView: ExTableView) ->() ) ->ExTableView
    {
        let tableView = ExTableView(frame: CGRectZero, style: UITableViewStyle.Plain)
        
        createTableView(tableView: tableView)
        
        return tableView
    }
}