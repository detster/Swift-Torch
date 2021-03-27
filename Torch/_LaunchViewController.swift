import UIKit

class _LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let isUserLog = UserDefaults.standard.bool(forKey: "isUserLog")
        if isUserLog{
            goToTorch()
        }else{
            goToLogin()
        }
    }
    
    func goToLogin(){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "login") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    func goToTorch(){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "torch") as! TorchViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
