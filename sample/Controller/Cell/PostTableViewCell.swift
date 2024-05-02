//
//  PostTableViewCell.swift
//  sample
//
//  Created by Tripat Singh Sidhu on 03/05/24.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configCell(post: PostModel) {
        id.text = "\(post.id)"
        titleLabel.text = post.title
    }
    
}
