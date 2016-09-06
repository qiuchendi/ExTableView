//
//  ExTableViewDataSource.swift
//  TableViewDemo1
//
//  Created by qiu on 16/3/31.
//  Copyright © 2016年 longchen.d0. All rights reserved.
//

import UIKit


extension ExTableView : UITableViewDataSource
{
//    override convenience init(frame: CGRect, style: UITableViewStyle) {
//
//        self.dataSource = self
//    }
    
    
    //MARK:代理方法：分组中cell的数量
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let closureNumberOfRowsInSectionExist = closureNumberOfRowsInSection
        {
            return closureNumberOfRowsInSectionExist(tableView: tableView, section: section)
        }
        return 1
    }
    
    //MARK: 代理方法：创建cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        ///如果自定义Cell的闭包存在，则返回自定义cell
        if let closureCellForRowAtIndexPathExist = closureCellForRowAtIndexPath
        {
            return closureCellForRowAtIndexPathExist(tableView: tableView, indexPath: indexPath)
        }
        
        let pool = "cell"
        
        ///如果自定义cell不存在，则创建cell
        var cell = tableView.dequeueReusableCellWithIdentifier(pool)
        
        if cell == nil
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: pool)
        }
        else
        {
            for view in (cell?.contentView.subviews)!
            {
                view.removeFromSuperview()
            }
        }
        
        if let closureViewForRowAtIndexPathExist = closureViewForRowAtIndexPath
        {
            closureViewForRowAtIndexPathExist(cell: cell!, indexPath: indexPath)
        }
        
        return cell!
    }
    
    //MARK: 代理方法：cell的高度
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {

        if let closureHeightForRowAtIndexPathExist = closureHeightForRowAtIndexPath
        {
             return closureHeightForRowAtIndexPathExist(tableView: tableView, indexPath: indexPath)
        }
        
       return tableView.rowHeight
    }
    
    //MARK: 方法：tableView中分组的数量
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        if let closureNumberOfSectionsInTableViewExist = closureNumberOfSectionsInTableView
        {
            return closureNumberOfSectionsInTableViewExist(tableView: tableView)
        }
        return 1
    }

    //MARK: 代理方法：分组头部的高度
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if  let closureHeightForHeaderInSectionExist = closureHeightForHeaderInSection
        {
            return closureHeightForHeaderInSectionExist(tableView: tableView, section: section)
        }
        return 0
    }
    

    //MARK:代理方法：分组头部的视图
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        if let closureViewForHeaderInSectionExist = closureViewForHeaderInSection
        {
            return closureViewForHeaderInSectionExist(tableView: tableView,section: section)
        }
        return nil
    }
    
    //MARK:代理方法：分组尾部高度
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {

        if let closureHeightForFooterInSectionExist = closureHeightForFooterInSection
        {
            return closureHeightForFooterInSectionExist(tableView: tableView, section: section)
        }
        return 0
    }
    
    //MARK:代理方法：分组尾部视图
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {

        if let closureViewForFooterInSectionExist = closureViewForFooterInSection
        {
                return closureViewForFooterInSectionExist(tableView: tableView, section: section)
        }
        return nil
    }

    //MARK ： 代理方法：当前选择的Cell
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        if let closureDidSelectRowAtIndexPathExist = closureDidSelectRowAtIndexPath
        {
            closureDidSelectRowAtIndexPathExist(tableView: tableView, indexPath: indexPath)
        }
    }

    //MARK: 代理方法：将要显示顶部视图
    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        if let closureWillDisplayHeaderViewExist = closureWillDisplayHeaderView
        {
            closureWillDisplayHeaderViewExist(tableView: tableView,view:  view,section:  section)
        }
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {

        if let closureCanEditRowAtIndexPathExist = closureCanEditRowAtIndexPath
        {
            return closureCanEditRowAtIndexPathExist(tableView: tableView, indexPath: indexPath)
        }
        
        return false
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        
        if let closureCanMoveRowAtIndexPathExist = closureCanMoveRowAtIndexPath
        {
            return closureCanMoveRowAtIndexPathExist(tableView: tableView, indexPath: indexPath)
        }
        
        return false
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        
        if let closureEditingStyleExist = closureEditingStyle
        {
           return  closureEditingStyleExist(tableView: tableView,  indexPath: indexPath)
        }
        return UITableViewCellEditingStyle.Delete
    }
 
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if let closureCommitEditingStyleExist = closureCommitEditingStyle
        {
            closureCommitEditingStyleExist(tableView: tableView, editingStyle: editingStyle, indexPath: indexPath)
        }
        
    }

    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        
        if let closureMoveRowAtIndexPathExist = closureMoveRowAtIndexPath
        {
            closureMoveRowAtIndexPathExist(tableView: tableView, sourceIndexPath: sourceIndexPath, destinationIndexPath: destinationIndexPath)
        }
    }

}
