//
//  test_mobile_projectTests.swift
//
//  Created by Damir Zaripov on 25.10.2023.
//

import XCTest
import UIKit
@testable import test_mobile_project

final class test_mobile_projectTests: XCTestCase {
    var loginService: LoginService!
    
    override func setUp() {
        loginService = LoginService()
    }
    
    override func tearDown() {
        loginService = nil
    }
    
    func testInvalidLogin() {
        let result = loginService.checkCredentials(login: "invalid", password: "123456", password2: "123456")
        XCTAssertEqual(result, .invalidLogin)
    }
    
    func testShortPassword() {
        let result = loginService.checkCredentials(login: "test@example.com", password: "12345", password2: "12345")
        XCTAssertEqual(result, .shortPassword)
    }
    
    func testPasswordMissingDigits() {
        let result = loginService.checkCredentials(login: "test@example.com", password: "password", password2: "password")
        XCTAssertEqual(result, .passworNotHaveDigits)
    }
    
    func testPasswordMissingLowercase() {
        let result = loginService.checkCredentials(login: "test@example.com", password: "PASSWORD1", password2: "PASSWORD1")
        XCTAssertEqual(result, .passwordNotLowercased)
    }
    
    func testPasswordMissingUppercase() {
        let result = loginService.checkCredentials(login: "test@example.com", password: "password1", password2: "password1")
        XCTAssertEqual(result, .passwordNotUppercased)
    }
    
    func testPasswordHasIllegalCharacters() {
        let result = loginService.checkCredentials(login: "test@example.com", password: "Passw@rd1", password2: "Passw@rd1")
        XCTAssertEqual(result, .passwordHasIllegalCharacters)
    }
    
    func testPasswordsMismatch() {
        let result = loginService.checkCredentials(login: "test@example.com", password: "Password1", password2: "password1")
        XCTAssertEqual(result, .passwordsMismatch)
    }
    
    func testValidCredentials() {
        let result = loginService.checkCredentials(login: "test@example.com", password: "Password1", password2: "Password1")
        XCTAssertEqual(result, .correct)
    }

}
