//
//  CommentViewModel.swift
//  Instagram
//
//  Created by Jędrzej Dudzicz on 24/01/2023.
//

import UIKit

struct CommentViewModel {
    private let comment : Comment
    
    var profileImageUrl : URL? { return URL(string: comment.profileImageUrl) }
    

    init(comment : Comment) {
        self.comment = comment
    }
    
    func commentLabelText() -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: "\(comment.username) ", attributes: [.font : UIFont.boldSystemFont(ofSize: 14)])
        
        attributedString.append(NSAttributedString(string: "\(comment.commentText)", attributes: [.font : UIFont.systemFont(ofSize: 14)]))
        print("comment.username : \(comment.username)")
        print("comment.commentText : \(comment.commentText)")
        return attributedString
    }
    
    func size(forWidth width : CGFloat) -> CGSize {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = comment.commentText
        label.lineBreakMode = .byWordWrapping
        label.setWidth(width)
        return label.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
    }
}
