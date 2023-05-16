//
//  ProfileHeaderViewModel.swift
//  Instagram
//
//  Created by Jędrzej Dudzicz on 22/01/2023.
//

import UIKit

struct ProfileHeaderViewModel {
    let user : User
    
    var fullname : String { // computed property
        return user.fullname
    }
    
    var profileImageUrl : URL? {
        return URL(string: user.profileImageUrl)
    }
    
    var followButtonText: String{
        if user.isCurrentUser{
            return "Edit Profile"
        }
        return user.isFollowed ? "Following" : "Follow"
    }
    
    var followButtonBackgroundColor : UIColor {
        return user.isCurrentUser ? .white : .systemBlue
    }
    
    var followButtonTextColor : UIColor {
        return user.isCurrentUser ? .black : .white
    }

    init(user: User) {
        self.user = user
    }
    
    var numberOfFollowers : NSAttributedString {
        return attributedStatText(value: user.stats.followers, label: "followers")
    }
    
    var numberOfFollowing : NSAttributedString {
        return attributedStatText(value: user.stats.following, label: "following")
    }
    
    var numberOfPosts : NSAttributedString {
        return attributedStatText(value: user.stats.posts, label: "posts")
    }
    
    func attributedStatText(value: Int, label: String) -> NSAttributedString{
        let attributedText = NSMutableAttributedString(string: "\(value)\n", attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: label, attributes: [.font: UIFont.systemFont(ofSize: 14), .foregroundColor: UIColor.lightGray]))
        
        return attributedText
    }
}
