//
//  Constants.swift
//
//  Created by Damir Zaripov on 25.10.2023.
//

import UIKit

enum Constants {
    enum ElementIDs {
        static var loginFieldId: String = "loginTextField"
        static var password1FieldId: String = "password1TextField"
        static var password2FieldId: String = "password2TextField"
        static var registerButtonId: String = "registerButton"
    }
    
    enum InputTexts {
        static var validEmailInputText: String = "test@example.com"
        static var invalidEmailInputText: String = "test"
        
        static var validPasswordInputText: String = "Password1"
        static var validPasswordSecondInputText: String = "Password2"
        static var sixCharPasswordInputText: String = "Pass"
        static var uppercaseCharPasswordInputText: String = "password1"
        static var lowercaseCharPasswordInputText: String = "PASSWORD1"
        static var oneDigitPasswordInputText: String = "Password"
        static var incorrectSymbolsPasswordInputText: String = "P@ass word1"
    }
    
    enum Messages {
        static var successfullRegistrationMessage: String = "You are successfully registered!"
        static var enterCorrectEmailMessage: String = "Enter correct email"
        static var passwordSixCharactersMessage: String = "Password should be more than 6 symbols"
        static var passwordUppercaseMessage: String = "Password should have at least one upper letter"
        static var passwordLowercaseMessage: String = "Password should have at least one lower letter"
        static var passwordDigitMessage: String = "Password should have at least one digit"
        static var passwordIncorrectSymbolsMessage: String = "Password contains illegal characters"
        static var passwordIdenticalMessage: String = "Passwords are not identical"
    }
}
