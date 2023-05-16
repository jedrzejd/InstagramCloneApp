//
//  AutheticationViewModel.swift
//  Instagram
//
//  Created by Jędrzej Dudzicz on 20/01/2023.
//

import UIKit


protocol AutheticationViewModel{
    var formIsValid: Bool {get}
    var buttonBackgroundColor: UIColor {get}
    var buttonTitleColor: UIColor {get}
}

protocol FormViewModel{
    func updateForm()
}


struct LoginViewModel: AutheticationViewModel{
    var email: String?
    var password: String?
    
    
    var formIsValid: Bool{
        return email?.isEmpty == false && password?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor{
        return formIsValid ? .magenta : .magenta.withAlphaComponent(0.3)
    }
    
    var buttonTitleColor: UIColor{
        return formIsValid ? .white : UIColor(white: 1.0, alpha: 0.667)
    }
}


struct RegistrationViewModel: AutheticationViewModel{
    var email: String?
    var password: String?
    var fullname: String?
    var username: String?
    
    var formIsValid: Bool{
        return email?.isEmpty == false && password?.isEmpty == false && fullname?.isEmpty == false && username?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor{
        return formIsValid ? .magenta : .magenta.withAlphaComponent(0.3)
    }
    
    var buttonTitleColor: UIColor{
        return formIsValid ? .white : UIColor(white: 1.0, alpha: 0.667)
    }
}

struct ResetPasswordViewModel: AutheticationViewModel{
    var email : String?
    
    var formIsValid: Bool { return email?.isEmpty == false}
    
    var buttonBackgroundColor: UIColor {
        return formIsValid ? #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1) : #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.5)
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
}
