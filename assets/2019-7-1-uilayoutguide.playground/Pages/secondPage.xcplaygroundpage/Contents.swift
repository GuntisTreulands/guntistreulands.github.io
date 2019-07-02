//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        self.view = view
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        let box1 = UIView()
        box1.translatesAutoresizingMaskIntoConstraints = false
        box1.backgroundColor = .red
        self.view.addSubview(box1)
        
        let box2 = UIView()
        box2.translatesAutoresizingMaskIntoConstraints = false
        box2.backgroundColor = .blue
        self.view.addSubview(box2)
        
        
        let guide = UILayoutGuide()
        self.view.addLayoutGuide(guide)
    	
    	let space1 = UILayoutGuide()
        self.view.addLayoutGuide(space1)
		
		let space2 = UILayoutGuide()
        self.view.addLayoutGuide(space2)
        
        let space3 = UILayoutGuide()
        self.view.addLayoutGuide(space3)
        
        
		guide.heightAnchor.constraint(equalToConstant: 100).isActive = true
        guide.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		guide.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50).isActive = true
		guide.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -50).isActive = true
		
		
		space1.heightAnchor.constraint(equalToConstant: 20).isActive = true
        space1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
		space2.heightAnchor.constraint(equalToConstant: 20).isActive = true
        space2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
		space3.heightAnchor.constraint(equalToConstant: 20).isActive = true
        space3.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		
		
		let space1Constraint = space1.widthAnchor.constraint(equalToConstant: 1)
		space1Constraint.priority = .defaultLow
		space1Constraint.isActive = true
		
		let space2Constraint = space2.widthAnchor.constraint(equalTo: space1.widthAnchor)
		space2Constraint.priority = .defaultLow
		space2Constraint.isActive = true
		
		let space3Constraint = space3.widthAnchor.constraint(equalTo: space1.widthAnchor)
		space3Constraint.priority = .defaultLow
		space3Constraint.isActive = true
		
		
        
		box1.widthAnchor.constraint(equalToConstant: 50).isActive = true
		box2.widthAnchor.constraint(equalToConstant: 50).isActive = true
		
        box1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        box2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        box1.centerYAnchor.constraint(equalTo: guide.centerYAnchor).isActive = true
        box2.centerYAnchor.constraint(equalTo: guide.centerYAnchor).isActive = true
        
        
        space1.leftAnchor.constraint(equalTo: guide.leftAnchor).isActive = true
        box1.leftAnchor.constraint(equalTo: space1.rightAnchor).isActive = true
        box1.rightAnchor.constraint(equalTo: space2.leftAnchor).isActive = true
		
		box2.leftAnchor.constraint(equalTo: space2.rightAnchor).isActive = true
        box2.rightAnchor.constraint(equalTo: space3.leftAnchor).isActive = true
        space3.rightAnchor.constraint(equalTo: guide.rightAnchor).isActive = true
        
        
		DispatchQueue.main.asyncAfter(deadline: .now()) {
		
			for guide in self.view.layoutGuides {
				let view1 = UIView(frame: guide.layoutFrame)
				view1.layer.borderColor = UIColor.black.cgColor
				view1.layer.borderWidth = 1.0
				self.view.addSubview(view1)    
			}
		}
	
    }
}



// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
