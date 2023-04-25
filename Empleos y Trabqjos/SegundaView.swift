//
//  SegundaView.swift
//  Empleos y Trabqjos
//
//  Created by CEDAM25 on 24/04/23.
//

import SwiftUI

struct SegundaView: View {
    
    var body: some View{
        
        NavigationView{
                NavigationLink("VIDA MARINA EN PELIGRO DE EXTINCION", destination: vidaMarinaView())
            
        }
    }
}
    
              
                
struct SegundaView_Previews: PreviewProvider {
    static var previews: some View {
        SegundaView()
    }
}



