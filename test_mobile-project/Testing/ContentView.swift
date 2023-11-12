import SwiftUI

struct ContentView: View {
    @State var login: String = ""
    @State var password: String = ""
    @State var password2: String = ""
    @State var message: String = ""
    
    let loginService = LoginService()
    
    var body: some View {
        TextField("", text: $login, prompt: Text("enter login"))
                .frame(width: 200)
                .padding()
                .accessibility(label: Text("loginTextField"))
        TextField("", text: $password, prompt: Text("enter password"))
                .frame(width: 200)
                .padding()
                .accessibility(label: Text("password1TextField"))
        TextField("", text: $password2, prompt: Text("repeat password"))
                .frame(width: 200)
                .padding()
                .accessibility(label: Text("password2TextField"))
        if message.isEmpty {
            Text(" ").padding()
        } else {
            Text(message).padding()
        }
        Button("Register", action: register)
            .accessibility(label: Text("registerButton"))
    }
    
    func register() {
        let result = loginService.checkCredentials(
            login: login,
            password: password,
            password2: password2
        )
        
        switch result {
        case .invalidLogin:
            message = "Enter correct email"
        case .shortPassword:
            message = "Password should be more than 6 symbols"
        case .passworNotHaveDigits:
            message = "Password should have at least one digit"
        case .passwordNotUppercased:
            message = "Password should have at least one upper letter"
        case .passwordNotLowercased:
            message = "Password should have at least one lower letter"
        case .passwordHasIllegalCharacters:
            message = "Password contains illegal characters"
        case .passwordsMismatch:
            message = "Passwords are not identical"
        case .correct:
            message = "You are successfully registered!"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
