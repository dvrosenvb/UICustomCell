//
//  RankingCustomCell.swift
//  UICustomCell
//
//  Created by Rosendo Vazquez on 12/05/23.
//

import UIKit

class RankingCustomCell: UITableViewCell {
  static let identifier = "RankingCustomCell"
  
  lazy var imgAvatar : UIImageView = {
    let img = UIImageView()
    img.image = UIImage(named: "star")
    img.clipsToBounds = true
    img.contentMode = .scaleAspectFill
    return img
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    contentView.addSubview(imgAvatar)
    imgAvatar.translatesAutoresizingMaskIntoConstraints = false
    imgAvatar.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
    imgAvatar.widthAnchor.constraint(equalToConstant: 100).isActive = true
    imgAvatar.heightAnchor.constraint(equalToConstant: 100).isActive = true
    contentView.backgroundColor = .red
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
