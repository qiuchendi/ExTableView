//
//  ExTableViewProperty.swift
//  cartoon
//
//  Created by qiu on 16/4/14.
//  Copyright © 2016年 longchen.d0. All rights reserved.
//

import UIKit

extension ExTableView
{
    func set_TableHeaderView(view: UIView) -> ExTableView
    {
        tableHeaderView = view
        
        return self
    }
    
    func set_TableFooterView(view: UIView) -> ExTableView
    {
        tableFooterView = view
        
        return self
    }
    
    func set_BackgroundColor(color: UIColor) -> ExTableView
    {
        backgroundColor = color
        
        return self
    }
    
    func set_CornerRadius(value: CGFloat) -> ExTableView
    {
        self.clipsToBounds = true
        
        self.layer.cornerRadius = value
        
        return self
    }
    
    func set_Alpha(value: CGFloat) -> ExTableView
    {
        self.alpha = value
        
        return self
    }
    
    func set_AddSubview(view: UIView) -> ExTableView
    {
        self.addSubview(view)
        
        return self
    }
    func set_Frame(frame:CGRect) -> ExTableView
    {
        self.frame = frame
        
        return self
    }
    
    func set_dataSource(dataSourc: UITableViewDataSource?) -> ExTableView
    {
        dataSource = dataSourc
        
        return self
    }
    
    func set_delegate(delegat : UITableViewDelegate?) -> ExTableView
    {
        delegate = delegat
        
        return self
    }
    
    func set_RowHeight(value: CGFloat) -> ExTableView
    {
        rowHeight = value
        
        return self
    }
    
    func set_SectionHeaderHeight(value: CGFloat) -> ExTableView
    {
        sectionHeaderHeight = value
        
        return self
    }
    
    func set_SectionFooterHeight(value: CGFloat) -> ExTableView
    {
        sectionFooterHeight = value
        
        return self
    }
    
    func set_EstimatedRowHeight(value: CGFloat) -> ExTableView
    {
        estimatedRowHeight = value
        
        return self
    }
    
    func set_EstimatedSectionFooterHeight(value: CGFloat) -> ExTableView
    {
        estimatedSectionFooterHeight = value
        
        return self
    }
    
    func set_EstimatedSectionHeaderHeight(value: CGFloat) -> ExTableView
    {
        estimatedSectionHeaderHeight = value
        
        return self
    }

    func set_SeparatorInset(insets: UIEdgeInsets) -> ExTableView
    {
        separatorInset = insets
        
        return self
    }
    
    func set_BackgroundView(view: UIView) -> ExTableView
    {
        backgroundView = view
        
        return self
    }
    
    func set_ReloadData() -> ExTableView
    {
        reloadData()
        
        return self
    }
    
    func set_ReloadSectionIndexTitles() -> ExTableView
    {
        reloadSectionIndexTitles()
    
        return self
    }

    func set_SeparatorStyle(style: UITableViewCellSeparatorStyle) -> ExTableView
    {
        separatorStyle = style
        
        return self
    }
    
    func  set_SeparatorColor(color: UIColor) -> ExTableView
    {
        separatorColor = color
        
        return self
    }
    
    func set_ShowsHorizontalScrollIndicator(value: Bool) -> ExTableView
    {
        showsHorizontalScrollIndicator = value
        
        return self
    }
    
    func set_ShowsVerticalScrollIndicator(value:Bool) ->ExTableView
    {
        showsVerticalScrollIndicator = value
        
        return self
    }

    ///滚动到指定的cell
    @nonobjc
    func set_ScrollToRowAtIndexPath(indexPath: NSIndexPath, atScrollPosition scrollPosition: UITableViewScrollPosition, animated: Bool) -> ExTableView
    {
        scrollToRowAtIndexPath(indexPath, atScrollPosition: scrollPosition, animated: animated)
        
        return self
    }


}
