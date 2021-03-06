//
//  SongCell.swift
//  Playor
//
//  Created by Behrad Kazemi on 6/21/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {

	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var artworkImage: UIImageView!
	@IBOutlet weak var container: UIView!
	static let cellID = "SongCell"
	static let defaultCellHeight = CGFloat(64)
	var viewModel: SongCellViewModelProtocol! {
		didSet {
			titleLabel.text = viewModel.title
			artworkImage.image = UIImage(contentsOfFile: viewModel.backgroundArtwork.dataPath)
		}
	}
	override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
	func setupUI(){
		titleLabel.font = Appearance.Fonts.Regular.cellTitle()
		container.clipsToBounds = true
		container.layer.borderColor = UIColor(white: 1, alpha: 0.5).cgColor
		container.layer.borderWidth = 0.5
		container.layer.cornerRadius = container.bounds.height / 2
		artworkImage.layer.cornerRadius = artworkImage.bounds.height / 2
		artworkImage.clipsToBounds = true
	}
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
