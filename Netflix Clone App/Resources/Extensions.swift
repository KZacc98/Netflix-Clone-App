//
//  Extensions.swift
//  Netflix Clone App
//
//  Created by Kamil Zachara on 06/04/2022.
//

import Foundation

extension String{
    func capitalizeFirstLetter() -> String{
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
