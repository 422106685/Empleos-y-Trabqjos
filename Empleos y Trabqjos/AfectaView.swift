//
//  AfectaView.swift
//  Empleos y Trabqjos
//
//  Created by CEDAM25 on 24/04/23.
//

import SwiftUI

struct AfectaView: View {
    var body: some View {
        VStack{
            Text("AFECTACIONES DE LA CONTAMINACIÓN MARINA")
                .font(.title)
                .fontWeight(.ultraLight)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding()
            Text("escribir afectacioes")
        }
            
    }
}

struct AfectaView_Previews: PreviewProvider {
    static var previews: some View {
        AfectaView()
    }
}
