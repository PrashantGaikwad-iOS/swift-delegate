
import UIKit

protocol ViewController1Delegate
{
    func myVCDidFinish(controller:ViewController1,text:String)
}

class ViewController1: UIViewController
{
    var delegate:ViewController1Delegate! = nil

    
    @IBOutlet weak var myTextF1: UITextField!
    
    
    @IBAction func goBackAction(sender: AnyObject)
    {
        if((delegate) != nil)
        {
            let  data = myTextF1.text
            
            delegate?.myVCDidFinish(self, text:data!)
        }
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
