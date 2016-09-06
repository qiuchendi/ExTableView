//
//  ExTableViewDelegate.swift
//  TableViewDemo1
//
//  Created by qiu on 16/3/31.
//  Copyright © 2016年 longchen.d0. All rights reserved.
//

import UIKit

extension ExTableView : UITableViewDelegate
{
    //MARK: 代理方法：scrollView将要开始拖拽
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
        if let closureScrollViewWillBeginDraggingExist = closureScrollViewWillBeginDragging
        {
            closureScrollViewWillBeginDraggingExist(scrollView: scrollView)
        }
    }
    
    //MARK: 代理方法：scrollView将要停止拖拽
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        if let closureScrollViewWillEndDraggingExist = closureScrollViewWillEndDragging
        {
            closureScrollViewWillEndDraggingExist(scrollView: scrollView, velocity: velocity, targetContentOffset: targetContentOffset)
        }
    }

    //MARK: 代理方法：结束拖动后的回调
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
        if let closureScrollViewDidEndDraggingExist = closureScrollViewDidEndDragging
        {
            closureScrollViewDidEndDraggingExist(scrollView: scrollView, decelerate: decelerate)
        }
    }

    //MARK: 代理方法：开始滚动时回调的方法
    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) {
        
        if let closureScrollViewWillBeginDeceleratingExist = closureScrollViewWillBeginDecelerating
        {
            closureScrollViewWillBeginDeceleratingExist(scrollView: scrollView)
        }
    }

    //MARK: 代理方法：滚动过程中不断回调的方法
    func scrollViewDidScroll(scrollView: UIScrollView) {

        if let closureScrollViewDidScrollExist = closureScrollViewDidScroll
        {
            closureScrollViewDidScrollExist(scrollView: scrollView)
        }
    }

    //MARK: 代理方法：结束滚动时的回调方法
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        if let closureScrollViewDidEndDeceleratingExist = closureScrollViewDidEndDecelerating
        {
            closureScrollViewDidEndDeceleratingExist(scrollView: scrollView)
        }
    }
    

}
