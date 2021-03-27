import UIKit
import AVFoundation

class TorchViewController: UIViewController {

    @IBOutlet weak var booIV: UIImageView!
    @IBOutlet weak var booShyIV: UIImageView!
    @IBOutlet weak var `switch`: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        turnOff()
        turnTorch(accion: false)
    }
    
    @IBAction func torchButton(_ sender: Any) {
        if view.backgroundColor == UIColor.black{
            turnOn()
            turnTorch(accion:true)
        }else{
            turnOff()
            turnTorch(accion:false)
        }
    }
    
    func turnTorch(accion: Bool ){
        guard let device = AVCaptureDevice.default(for: AVMediaType.video),device.hasTorch
        else {return}
        
        do{
            try device.lockForConfiguration()
            if accion {
                device.torchMode = .on
            }else{
                device.torchMode = .off
            }
            device.unlockForConfiguration()
        }catch{
            print("Ocurrio un error")
        }
    }
    
    func turnOn(){
        booIV.isHidden=true
        booShyIV.isHidden=false
        view.backgroundColor=UIColor.white
        `switch`.setTitle("On", for: .normal)
        `switch`.backgroundColor = UIColor.green
    }
    
    func turnOff(){
        booIV.isHidden=false
        booShyIV.isHidden=true
        view.backgroundColor=UIColor.black
        `switch`.setTitle("Off", for: .normal)
        `switch`.backgroundColor = UIColor.red

    }

}
