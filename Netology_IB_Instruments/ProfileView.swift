//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Вячеслав Терентьев on 25.02.2022.
//


import UIKit

class ProfileView: UIView {
    
    @IBOutlet weak var userPhotoImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userDataOfDate: UILabel!
    @IBOutlet weak var userCityLabel: UILabel!
    @IBOutlet weak var userInfoText: UITextView!
    
    
   
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.setupView()
        }
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            self.setupView()
        }
        private func setupView() {
            let view = self.loadViewFromXib()
            self.addSubview(view)
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
        private func loadViewFromXib() -> UIView {
            guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self, options: nil)?.first as? UIView else { return UIView() }
            
            return view
        }
    
}
