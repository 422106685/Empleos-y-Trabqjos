//
//  SwiftUIView.swift
//  Empleos y Trabqjos
//
//  Created by CEDAM25 on 24/04/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            Text("BIENVENIDO :)")
                .font(.title)
                .padding(.vertical, 47.0)
            Button("Vida Marina en Peligro de extinción") {
                
            }.buttonStyle(.bordered)
                .padding()
            Button("Como nos Afecta la Contaminación") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }.buttonStyle(.bordered)
                .padding()
            
            Button("Lugares con mas contaminación") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }.buttonStyle(.bordered)
                .padding()
            
        }
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
