//
//  PostDetailViewController.swift
//  sample
//
//  Created by Tripat Singh Sidhu on 03/05/24.
//

import UIKit

class PostDetailViewController: UIViewController {

    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var body: UILabel!
    
    let postDetailVM = PostDetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userId.text = "\(postDetailVM.selectedPost?.userId ?? 0)"
        id.text = "\(postDetailVM.selectedPost?.id ?? 0)"
        titleLabel.text = postDetailVM.selectedPost?.title ?? ""
        body.text = postDetailVM.selectedPost?.body ?? ""
    }
    

}
