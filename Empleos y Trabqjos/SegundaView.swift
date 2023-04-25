//
//  SegundaView.swift
//  Empleos y Trabqjos
//
//  Created by CEDAM25 on 24/04/23.
//

import SwiftUI

struct SegundaView: View {

    var body: some View{
        VStack {
            ScrollView{
                Text("SAVE THE SEA")
                    .font(.title)
                    .fontWeight(.bold)
                Image("icono").resizable().frame(width: 400, height: 500)
                
                
                
                
                NavigationView{
                    
                    NavigationLink("VIDA MARINA EN PELIGRO DE EXTINCION", destination: vidaMarinaView())
                    
                }
            }
                
            }
        }

     
    }

    
              
                
struct SegundaView_Previews: PreviewProvider {
    static var previews: some View {
        SegundaView()
    }
}



