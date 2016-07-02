//
//  PresentCurrencyTableViewCell.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 30..
//  Copyright © 2016년 mashup. All rights reserved.
//

import UIKit

class PresentCurrencyTableViewCell: UITableViewCell {
  
  @IBOutlet weak var countryImageView: UIImageView!
  @IBOutlet weak var currencyCodeLabel: UILabel!
  @IBOutlet weak var currencyTextField: UITextField!
  @IBOutlet weak var currencyNameLabel: UILabel!

  
  override func awakeFromNib() {
    super.awakeFromNib()
  }

  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
}

extension PresentCurrencyTableViewCell: PresentCurrencyItemViewProtocol {
  func set(currencyTextField currency: String) {
    self.currencyTextField.text = currency
  }
  
  func set(imageName image: String) {
    self.countryImageView.image = UIImage(named: image)
  }
  
  func set(currencyCode code: String) {
    self.currencyCodeLabel.text = code
  }
  
  func set(currencyName name: String) {
    self.currencyNameLabel.text = name
  }
  
  func setTextFieldFixed() {
    self.currencyTextField.enabled = false
  }
  
  func setTextFiledEditable() {
    self.currencyTextField.enabled = true
  }
}
