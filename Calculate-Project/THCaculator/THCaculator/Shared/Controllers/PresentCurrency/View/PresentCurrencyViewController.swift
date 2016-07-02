//
//  PresentCurrencyViewController.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 28..
//  Copyright © 2016년 mashup. All rights reserved.
//

import UIKit

class PresentCurrencyViewController: UIViewController, PresentCurrencyViewProtocol {
  @IBOutlet weak var currencyTableView: UITableView!
  
  var presenter: PresentCurrencyPresenterProtocol? = PresentCurrencyPresenter()

  override func viewDidLoad() {
    super.viewDidLoad()
    setTableDefaults()
    initialize()
  }
  
  func initialize() {
    presenter!.fetchLocalData { error in
      self.currencyTableView.reloadData()
    }
  }
  
  func setTableDefaults() {
    currencyTableView.dataSource = self
    currencyTableView.delegate = self
  }

  @IBAction func currencyTextFieldPressed(sender: UITextField) {
    
  }
  
  @IBAction func keyboardButtonPressed(sender: UIButton) {
    // TODO : should be improve feature next step
    let indexForStanardCurrency = 0
    presenter?.setCurrencyByPressedKeyboard(indexForStanardCurrency, tag: sender.tag) { error in }
    currencyTableView.reloadData()
  }
}

extension PresentCurrencyViewController: UITableViewDataSource {
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return presenter!.numberOfItems(inSection: section)
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = currencyTableView.dequeueReusableCellWithIdentifier("PresentCurrencyCell", forIndexPath: indexPath) as! PresentCurrencyTableViewCell
    presenter?.setContentToView(cell, index: indexPath)
    return cell
  }
}

extension PresentCurrencyViewController: UITableViewDelegate {
  func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
    let glasses = UITableViewRowAction(style: .Default, title: "추가") {action, index in print("glasses tapped") }
    let trash = UITableViewRowAction(style: .Default, title: "삭제") {action, index in print("trash tapped") }
    
    glasses.backgroundColor = UIColor.lightGrayColor()
    trash.backgroundColor = UIColor.darkGrayColor()
    
    return [trash, glasses]
  }
}