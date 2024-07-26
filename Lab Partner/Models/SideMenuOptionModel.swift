//
//  SideMenuOptionModel.swift
//  Lab Partner
//
//  Created by Fabio Noriega Hernández on 20/07/24.
//

import Foundation

enum SideMenuOptionModel: Int, CaseIterable {
    case notes
    case calculator
    case analysis
    case library
    case inventory
    case equipment
    
    var title: String {
        switch self {
        case .notes:
            return "Notes"
        case .calculator:
            return "Stoichiometry Calculator"
        case .analysis:
            return "Statistic Analysis"
        case .library:
            return "Library"
        case .inventory:
            return "Inventory"
        case .equipment:
            return "Equipment Registration and Maintenance"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .notes:
            return "square.and.pencil.circle.fill"
        case .calculator:
            return "divide.circle.fill"
        case .analysis:
            return "chart.dots.scatter"
        case .library:
            return "books.vertical.circle.fill"
        case .inventory:
            return "flask.fill"
        case .equipment:
            return "wrench.and.screwdriver.fill"
        }
    }
}

extension SideMenuOptionModel: Identifiable {
    var id: Int { return self.rawValue }
}
