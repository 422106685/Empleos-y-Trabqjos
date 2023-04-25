//
//  ContentView.swift
//  Empleos y Trabqjos
//
//  Created by CEDAM25 on 24/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var boton = false
    
    var body: some View {
        VStack {
            ScrollView{
                Image(systemName: "person.crop.circle")
                
                    .imageScale(.large)
                    .foregroundColor(Color.blue)
                    .padding()
                Text("SAVE THE SEA")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding()
                Text("Lo que sabemos es una gota de agua; lo que ignoramos es el océano -Isaac Newton")
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .lineLimit(/*@START_MENU_TOKEN@*/8/*@END_MENU_TOKEN@*/)
                    .padding(.vertical, 33.0)

                
                NavigationView{
                        NavigationLink("VIDA MARINA EN PELIGRO DE EXTINCION", destination: vidaMarinaView())
                    
                }
                
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
