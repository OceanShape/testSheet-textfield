import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    private let box: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .purple
        return view
    }()

    private let textField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        
        
        return field
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(box)
        self.view.addSubview(textField)
        textField.delegate = self
        
        NSLayoutConstraint.activate([
            self.box.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.box.bottomAnchor.constraint(equalTo: self.textField.topAnchor),
            self.box.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.box.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            
            
            self.textField.topAnchor.constraint(equalTo: self.box.bottomAnchor),
            self.textField.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.textField.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.textField.rightAnchor.constraint(equalTo: self.view.rightAnchor)
        ])
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

