//
//  CustomNavLink.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 26/1/25.
//

import SwiftUI

    struct CustomNavLink<Label: View, Destination: View>: View {
        
        let destination: Destination
        let label: Label
        
        init(destination: Destination, @ViewBuilder label: () -> Label) {
            self.destination = destination
            self.label = label()
        }
        
        
    var body: some View {
        NavigationLink {
            CustomNavBarContainerView {
                destination
            }
            .navigationBarHidden(true)
        } label: {
            label
        }

    }
}

struct CustomNavLink_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavView {
            CustomNavLink(destination: Text("Destination"),
                          label: {
                Text("Click me")
            })
        }
    }
}
