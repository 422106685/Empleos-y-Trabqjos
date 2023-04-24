//
//  IntroducciónView.swift
//  Empleos y Trabqjos
//
//  Created by CEDAM25 on 24/04/23.
//

import SwiftUI

struct Introduccio_nView: View {
    var body: some View {
        VStack{
           Text("SAVE THE SEA")
              .font(.title)
              .padding(.bottom, 48.0)
                
            Text("Vivimos en un planeta azul, con océanos y mares que cubren más del 70 % de la superficie de la Tierra. Estos son esenciales para el planeta y el bienestar de la población, regulan el clima, generan la mayor parte del oxígeno que se respira y proporcionan recursos naturales y alimentos. ")
              .font(.callout)
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .padding(.all, 51.0)
                
        }
    }
}

struct Introduccio_nView_Previews: PreviewProvider {
    static var previews: some View {
        Introduccio_nView()
    }
}
