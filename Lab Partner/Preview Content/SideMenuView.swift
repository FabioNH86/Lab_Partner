//
//  SideMenuView.swift
//  Lab Partner
//
//  Created by Fabio Noriega Hernández on 20/07/24.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.25)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        SideMenuHeaderView()
                        
                        VStack {
                            ForEach(0 ..< 5) { option in SideMenuRowView}
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width:270, alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
            }
        }
        .transition(.move(edge: .leading))
        .animation(.easeInOut,value: isShowing)
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true))
}
