//
//  ProfileViewModel.swift
//  FacebookClone
//
//  Created by Stebin Alex on 14/06/21.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    
    @Published var experinceArray: [ExperienceItem] = [
        ExperienceItem(image: "archivebox.fill", name: "Software Engineer at Lean Transition Solutions"),
        ExperienceItem(image: "archivebox.fill", name: "Former Junior iOS Developer at Mobatia Technologies Pvt Ltd."),
        ExperienceItem(image: "book.fill", name: "Studied Computer Science and Engineering at Bethlahem Insitute of Engineering"),
        ExperienceItem(image: "house.fill", name: "Lives in Trivandrum"),
        ExperienceItem(image: "heart.fill", name: "Single"),
        ExperienceItem(image: "clock.fill", name: "Joined on Feb 2012"),
        ExperienceItem(image: "dot.radiowaves.right", name: "stebin_alex"),
        ExperienceItem(image: "link", name: "stebinalex"),
        ExperienceItem(image: "link", name: "See Your About Info")
    ]
    
     
}
