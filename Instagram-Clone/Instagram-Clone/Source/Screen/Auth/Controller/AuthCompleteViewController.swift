//
//  AuthCompleteViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

final class AuthCompleteViewController: UIViewController {
    
    // MARK: - Properties
    var userName: String?
    
    // MARK: - UI Component Part
    @IBOutlet weak var welcomeMessageLabel: UILabel!
    @IBOutlet weak var completeButton: UIButton!
    @IBOutlet weak var addAccountButton: UIButton!
    
    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
//        setUI()
        setUserName()
    }
    
    // MARK: - IBAction Part
    @IBAction func completeBtnDidTap(_ sender: Any) {
        /// rootViewController를 TabBarMainViewController로 변경합니다,
        guard let rootVC = UIStoryboard(name: "TabBarMain", bundle: nil).instantiateViewController(withIdentifier: "TabBarMainViewController") as? TabBarMainViewController else { return }
        self.view.window?.rootViewController = rootVC
        self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func addAccountBtnDidTap(_ sender: Any) {
        /// dismiss
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Custom Method Part
    private func setUserName() {
        if let userName = userName {
            welcomeMessageLabel.text = "\(userName)님, Instagram에 오신 것을 환영합니다"
            self.welcomeMessageLabel.numberOfLines = 2
        }
    }
}
