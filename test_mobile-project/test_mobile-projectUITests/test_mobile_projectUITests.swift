//
//  test_mobile_projectUITests.swift
//
//  Created by Damir Zaripov on 25.10.2023.
//

import XCTest
@testable import test_mobile_project

final class test_mobile_projectUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        app.terminate()
    }
    
    func testLoginIsValidEmail() throws {
        // Given
        let loginField = app.textFields[Constants.ElementIDs.loginFieldId]
        let password1Field = app.textFields[Constants.ElementIDs.password1FieldId]
        let password2Field = app.textFields[Constants.ElementIDs.password2FieldId]
        let registerButton = app.buttons[Constants.ElementIDs.registerButtonId]
        
        loginField.tap()
        loginField.typeText(Constants.InputTexts.invalidEmailInputText)
        
        password1Field.tap()
        password1Field.typeText(Constants.InputTexts.validPasswordInputText)
        
        password2Field.tap()
        password2Field.typeText(Constants.InputTexts.validPasswordInputText)
        
        registerButton.tap()
        
        // Then
        XCTAssertTrue(app.staticTexts[Constants.Messages.enterCorrectEmailMessage].exists)
    }
    
    func testPasswordIsIncludingSixCharacters() throws {
        // Given
        let loginField = app.textFields[Constants.ElementIDs.loginFieldId]
        let password1Field = app.textFields[Constants.ElementIDs.password1FieldId]
        let password2Field = app.textFields[Constants.ElementIDs.password2FieldId]
        let registerButton = app.buttons[Constants.ElementIDs.registerButtonId]
        
        loginField.tap()
        loginField.typeText(Constants.InputTexts.validEmailInputText)
        
        password1Field.tap()
        password1Field.typeText(Constants.InputTexts.sixCharPasswordInputText)
        
        password2Field.tap()
        password2Field.typeText(Constants.InputTexts.sixCharPasswordInputText)
        
        registerButton.tap()
        
        // Then
        XCTAssertTrue(app.staticTexts[Constants.Messages.passwordSixCharactersMessage].exists)
    }
    
    func testPasswordIsIncludingUppercase() throws {
        // Given
        let loginField = app.textFields[Constants.ElementIDs.loginFieldId]
        let password1Field = app.textFields[Constants.ElementIDs.password1FieldId]
        let password2Field = app.textFields[Constants.ElementIDs.password2FieldId]
        let registerButton = app.buttons[Constants.ElementIDs.registerButtonId]
        
        loginField.tap()
        loginField.typeText(Constants.InputTexts.validEmailInputText)
        
        password1Field.tap()
        password1Field.typeText(Constants.InputTexts.uppercaseCharPasswordInputText)
        
        password2Field.tap()
        password2Field.typeText(Constants.InputTexts.uppercaseCharPasswordInputText)
        
        registerButton.tap()
        
        // Then
        XCTAssertTrue(app.staticTexts[Constants.Messages.passwordUppercaseMessage].exists)
    }
    
    func testPasswordIsIncludingLowercase() throws {
        // Given
        let loginField = app.textFields[Constants.ElementIDs.loginFieldId]
        let password1Field = app.textFields[Constants.ElementIDs.password1FieldId]
        let password2Field = app.textFields[Constants.ElementIDs.password2FieldId]
        let registerButton = app.buttons[Constants.ElementIDs.registerButtonId]
        
        loginField.tap()
        loginField.typeText(Constants.InputTexts.validEmailInputText)
        
        password1Field.tap()
        password1Field.typeText(Constants.InputTexts.lowercaseCharPasswordInputText)
        
        password2Field.tap()
        password2Field.typeText(Constants.InputTexts.lowercaseCharPasswordInputText)
        
        registerButton.tap()
        
        // Then
        XCTAssertTrue(app.staticTexts[Constants.Messages.passwordLowercaseMessage].exists)
    }
    
    func testPasswordIsIncludingOneDigit() throws {
        // Given
        let loginField = app.textFields[Constants.ElementIDs.loginFieldId]
        let password1Field = app.textFields[Constants.ElementIDs.password1FieldId]
        let password2Field = app.textFields[Constants.ElementIDs.password2FieldId]
        let registerButton = app.buttons[Constants.ElementIDs.registerButtonId]
        
        loginField.tap()
        loginField.typeText(Constants.InputTexts.validEmailInputText)
        
        password1Field.tap()
        password1Field.typeText(Constants.InputTexts.oneDigitPasswordInputText)
        
        password2Field.tap()
        password2Field.typeText(Constants.InputTexts.oneDigitPasswordInputText)
        
        registerButton.tap()
        
        // Then
        XCTAssertTrue(app.staticTexts[Constants.Messages.passwordDigitMessage].exists)
    }
    
    func testPasswordIsIncludingIncorrectSymbols() throws {
        // Given
        let loginField = app.textFields[Constants.ElementIDs.loginFieldId]
        let password1Field = app.textFields[Constants.ElementIDs.password1FieldId]
        let password2Field = app.textFields[Constants.ElementIDs.password2FieldId]
        let registerButton = app.buttons[Constants.ElementIDs.registerButtonId]
        
        loginField.tap()
        loginField.typeText(Constants.InputTexts.validEmailInputText)
        
        password1Field.tap()
        password1Field.typeText(Constants.InputTexts.oneDigitPasswordInputText)
        
        password2Field.tap()
        password2Field.typeText(Constants.InputTexts.oneDigitPasswordInputText)
        
        registerButton.tap()
        
        // Then
        XCTAssertTrue(app.staticTexts[Constants.Messages.passwordDigitMessage].exists)
    }
    
    func testIdenticalPasswords() throws {
        // Given
        let loginField = app.textFields[Constants.ElementIDs.loginFieldId]
        let password1Field = app.textFields[Constants.ElementIDs.password1FieldId]
        let password2Field = app.textFields[Constants.ElementIDs.password2FieldId]
        let registerButton = app.buttons[Constants.ElementIDs.registerButtonId]
        
        loginField.tap()
        loginField.typeText(Constants.InputTexts.validEmailInputText)
        
        password1Field.tap()
        password1Field.typeText(Constants.InputTexts.validPasswordInputText)
        
        password2Field.tap()
        password2Field.typeText(Constants.InputTexts.validPasswordSecondInputText)
        
        registerButton.tap()
        
        // Then
        XCTAssertTrue(app.staticTexts[Constants.Messages.passwordIdenticalMessage].exists)
    }
    
    func testSuccessfulRegistration() throws {
        // Given
        let loginField = app.textFields[Constants.ElementIDs.loginFieldId]
        let password1Field = app.textFields[Constants.ElementIDs.password1FieldId]
        let password2Field = app.textFields[Constants.ElementIDs.password2FieldId]
        let registerButton = app.buttons[Constants.ElementIDs.registerButtonId]
        
        loginField.tap()
        loginField.typeText(Constants.InputTexts.validEmailInputText)
        
        password1Field.tap()
        password1Field.typeText(Constants.InputTexts.validPasswordInputText)
        
        password2Field.tap()
        password2Field.typeText(Constants.InputTexts.validPasswordInputText)
        
        registerButton.tap()
        
        // Then
        XCTAssertTrue(app.staticTexts[Constants.Messages.successfullRegistrationMessage].exists)
    }


}
