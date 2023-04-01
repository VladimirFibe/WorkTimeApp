import UIKit
import UIComponents
import SnapKit

fileprivate extension Constants {
    static let horizontalOffset: CGFloat = 45
    static let buttonDividerOffset = 5
    static let interItemOffset = 58
    static let fieldHeight = 28
}
public final class AuthViewController: BaseViewController {
    private let contentView = UIView()
    private let loginTabButton = UIButton(type: .system)
    private let buttonDividerView = UILabel()
    private let signUpTabButton = UIButton(type: .system)
    private let usernameTextField = WTAuthTextField()
    private let passwordTextField = WTAuthTextField()
    private let loginButton = UIButton(type: .system)
    
    override public func setupViews() {
        view.backgroundColor = .systemBackground
        setupContentView()
        setupLoginTabButton()
        setupButtonDividerView()
        setupSignUpTabButton()
        setupUsernameTextField()
        setupPasswordTextField()
        setupLoginButton()
    }
}

private extension AuthViewController {
    func setupContentView() {
        view.addSubview(contentView)
//        contentView.backgroundColor = .red
        contentView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.horizontalEdges.equalToSuperview().inset(Constants.horizontalOffset)
        }
    }
    
    func setupLoginTabButton() {
        contentView.addSubview(loginTabButton)
        loginTabButton.setTitle("Login", for: .normal)
        loginTabButton.tintColor = .label
        loginTabButton.snp.makeConstraints {
            $0.top.leading.equalToSuperview()
        }
    }
    
    func setupButtonDividerView() {
        contentView.addSubview(buttonDividerView)
        buttonDividerView.text = "/"
        buttonDividerView.textColor = .label
        buttonDividerView.snp.makeConstraints {
            $0.centerY.equalTo(loginTabButton)
            $0.leading.equalTo(loginTabButton.snp.trailing).offset(Constants.buttonDividerOffset)
        }
    }
    
    func setupSignUpTabButton() {
        contentView.addSubview(signUpTabButton)
        signUpTabButton.setTitle("Sign up", for: .normal)
        signUpTabButton.tintColor = .label
        signUpTabButton.snp.makeConstraints {
            $0.centerY.equalTo(loginTabButton)
            $0.leading.equalTo(buttonDividerView.snp.trailing).offset(Constants.buttonDividerOffset)
        }
    }
    
    func setupUsernameTextField() {
        contentView.addSubview(usernameTextField)
        usernameTextField.placeholder = "Username"
        usernameTextField.snp.makeConstraints {
            $0.top.equalTo(loginTabButton.snp.bottom).offset(Constants.interItemOffset)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(Constants.fieldHeight)
        }
    }
    
    func setupPasswordTextField() {
        contentView.addSubview(passwordTextField)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(usernameTextField.snp.bottom).offset(Constants.interItemOffset)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(Constants.fieldHeight)
        }
    }
    
    func setupLoginButton() {
        contentView.addSubview(loginButton)
        loginButton.setTitle("Login", for: .normal)
        loginButton.tintColor = .white
        loginButton.backgroundColor = .systemBlue
        loginButton.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(Constants.interItemOffset)
            $0.trailing.bottom.equalToSuperview()
            
        }
    }
}
