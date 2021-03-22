import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let user = "LuisAntonio"
    let password = "ManjarrezTorres"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButton(_ sender: UIButton) {
        if userTextField.text == user && passwordTextField.text == password{
            UserDefaults.standard.setValue(true, forKey: "isUserLog")
            performSegue(withIdentifier: "torch", sender: nil)
        }else{
            let alerta = UIAlertController(title: "Error", message: "Bad user or password", preferredStyle: .alert)
            alerta.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alerta, animated: true, completion: nil)
        }
    }
    
}
