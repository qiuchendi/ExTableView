//
//  ExTableViewCallback.swift
//  cartoon
//
//  Created by qiu on 16/4/6.
//  Copyright © 2016年 longchen.d0. All rights reserved.
//

import UIKit

//Mark: UITableViewDelegate中的方法
extension ExTableView
{
    ///接口：scrollView将要开始拖拽

    func set_ScrollViewWillBeginDragging(closure: TypeClosureScrollViewWillBeginDragging) -> ExTableView
    {
        closureScrollViewWillBeginDragging = closure
        
        return self
    }
    
    ///接口：scrollView将要停止拖拽

    func set_ScrollViewWillEndDragging(closure: TypeClosureScrollViewWillEndDragging) -> ExTableView
    {
        closureScrollViewWillEndDragging = closure
        
        return self
    }
    
    ///接口：scrollView结束拖动后的回调

    func set_ScrollViewDidEndDragging(closure: TypeClosureScrollViewDidEndDragging) -> ExTableView
    {
        closureScrollViewDidEndDragging = closure
        
        return self
    }
    
    ///接口：scrollView开始滚动时回调的方法

    func set_ScrollViewWillBeginDecelerating(closure: TypeClosureScrollViewWillBeginDecelerating) -> ExTableView
    {
        closureScrollViewWillBeginDecelerating = closure
        
        return self
    }
    
    ///接口：scrollView滚动过程中不断回调的方法
    @nonobjc
    func set_ScrollViewDidScroll(closure: TypeClosureScrollViewDidScroll) -> ExTableView
    {
        closureScrollViewDidScroll = closure
        
        return self
    }
    
    ///接口：scrollViewx结束滚动时的回调方法

    func set_ScrollViewDidEndDecelerating(closure: TypeClosureScrollViewDidEndDecelerating) -> ExTableView
    {
        closureScrollViewDidEndDecelerating = closure
        
        return self
    }
}


//Mark: UITableViewDataSource中的方法
extension ExTableView
{
  
    func set_NumberOfRowsInSection(closure:TypeClosureNumberOfRowsInsection) -> ExTableView {
        
        closureNumberOfRowsInSection = closure
        
        return self
    }
    
    ///接口：创建Cell，手动创建，未做任何处理

    func set_CellForRowAtIndexPath(closure:TypeClosureCellForRowAtIndexPath) -> ExTableView{
        
        closureCellForRowAtIndexPath = closure
        
        return self
    }
    
    ///接口：创建Cell，创建完成并已清空，可直接复用，如果调用了cellForRowAtIndexPath，则不会再调用viewForRowAtIndexPath

    func set_ViewForRowAtIndexPath(closure:TypeClosureViewForRowAtIndexPath) -> ExTableView{
        
        closureViewForRowAtIndexPath = closure
        
        return self
    }
    
        ///接口：cell的高度
   
    func set_HeightForRowAtIndexPath(closure: TypeClosureHeightForRowAtIndexPath) -> ExTableView
    {
        closureHeightForRowAtIndexPath = closure
        
        return self
    }
    
        ///接口：tableView中分组的数量

    func set_NumberOfSectionsInTableView(closure: TypeClosureNumberOfSectionsInTableView) -> UITableView
    {
        closureNumberOfSectionsInTableView = closure
        
        return self
    }
    
    
    ///接口：分组头部的高度

    func set_HeightForHeaderInSection(closure: TypeClosureHeightForHeaderInSection) -> ExTableView
    {
        closureHeightForHeaderInSection = closure
        
        return self
    }
    
    ///接口：分组头部的视图

    func set_ViewForHeaderInSection(closure: TypeClosureViewForHeaderInSection) -> ExTableView
    {
        closureViewForHeaderInSection = closure
        
        return self
    }
    
    ///接口： 分组尾部的高度
    func set_HeightForFooterInSecion(closure: TypeClosureHeightForFooterInSection) -> ExTableView
    {
        closureHeightForFooterInSection = closure
        
        return self
    }
    
    ///接口：分组尾部的视图
    func set_ViewForFooterInSection(closure: TypeClosureViewForFooterInSection) -> ExTableView
    {
        closureViewForFooterInSection = closure
        
        return self
    }
    
    ///接口：当前选择的Cell
    @nonobjc
    func set_DidSelectRowAtIndexPath(closure: TypeClosureDidSelectRowAtIndexPath) -> ExTableView
    {
        closureDidSelectRowAtIndexPath = closure
        
        return self
    }
    
    ///接口：将要显示顶部视图
  
    func set_WillDisplayHeaderView(closure: TypeClosureWillDisplayHeaderView) -> ExTableView
    {
        closureWillDisplayHeaderView = closure
        
        return self
    }
    
    ///接口： cell是否可编辑
    func set_CanEditRowAtIndexPath(closure: TypeClosureCanEditRowAtIndexPath) -> ExTableView
    {
        closureCanEditRowAtIndexPath = closure
        
        return self
    }
    
    ///接口：cell是否可移动
    func set_CanMoveRowAtIndexPath(closure: TypeClosureCanMoveRowAtIndexPath) -> ExTableView
    {
        closureCanMoveRowAtIndexPath = closure
        
        return self
    }
    
    ///接口:返回编辑样式
    func set_EditingStyle(closure: TypeClosureEditingStyle) -> ExTableView
    {
        closureEditingStyle = closure
        
        return self

    }
    
    ///接口：编缉样式
    func set_CommitEditingStyle(closure: TypeClosureCommitEditingStyle) -> ExTableView
    {
        closureCommitEditingStyle = closure
        
        return self
    }
    
    ///接口：移动cell
    func set_MoveRowAtIndexPath(closure: TypeClosureMoveRowAtIndexPath) -> ExTableView
    {
        closureMoveRowAtIndexPath = closure
        
        return self
    }
}
