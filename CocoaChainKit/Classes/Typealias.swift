// 
//  Typealias.swift
//  CocoaChainKit
//
//  Created by Pircate on 2018/9/18
//  
//
//  @author: Pircate(gao497868860@gmail.com)
//

#if swift(>=4.2)
public typealias AttributedStringKey = NSAttributedString.Key
public typealias ControlState = UIControl.State
public typealias ControlEvent = UIControl.Event
public typealias ActivityIndicatorViewStyle = UIActivityIndicatorView.Style
public let CollectionViewElementKindSectionHeader = UICollectionView.elementKindSectionHeader
public let CollectionViewElementKindSectionFooter = UICollectionView.elementKindSectionFooter
public typealias CollectionViewScrollDirection = UICollectionView.ScrollDirection
public typealias DatePickerMode = UIDatePicker.Mode
public typealias SwipeGestureRecognizerDirection = UISwipeGestureRecognizer.Direction
public typealias ProgressViewStyle = UIProgressView.Style
public typealias SegmentedControlSegment = UISegmentedControl.Segment
public typealias TableViewCellSeparatorStyle = UITableViewCell.SeparatorStyle
public typealias TextFieldBorderStyle = UITextField.BorderStyle
public typealias TextFieldViewMode = UITextField.ViewMode
public typealias ViewContentMode = UIView.ContentMode
@available(iOS 11.0, *)
public typealias ScrollViewContentInsetAdjustmentBehavior = UIScrollView.ContentInsetAdjustmentBehavior
#else
public typealias AttributedStringKey = NSAttributedStringKey
public typealias ControlState = UIControlState
public typealias ControlEvent = UIControlEvents
public typealias ActivityIndicatorViewStyle = UIActivityIndicatorViewStyle
public let CollectionViewElementKindSectionHeader = UICollectionElementKindSectionHeader
public let CollectionViewElementKindSectionFooter = UICollectionElementKindSectionFooter
public typealias CollectionViewScrollDirection = UICollectionViewScrollDirection
public typealias DatePickerMode = UIDatePickerMode
public typealias SwipeGestureRecognizerDirection = UISwipeGestureRecognizerDirection
public typealias ProgressViewStyle = UIProgressViewStyle
public typealias SegmentedControlSegment = UISegmentedControlSegment
public typealias TableViewCellSeparatorStyle = UITableViewCellSeparatorStyle
public typealias TextFieldBorderStyle = UITextBorderStyle
public typealias TextFieldViewMode = UITextFieldViewMode
public typealias ViewContentMode = UIViewContentMode
@available(iOS 11.0, *)
public typealias ScrollViewContentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentBehavior
#endif
