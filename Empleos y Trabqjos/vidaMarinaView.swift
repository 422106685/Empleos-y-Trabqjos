//
//  vidaMarinaView.swift
//  Empleos y Trabqjos
//
//  Created by CEDAM25 on 24/04/23.
import SwiftUI

struct vidaMarinaView: View {
    
    private let animaleslista: [animales] = [animales (
        animal : "🦭",
        nombre : "Foca Mediterranea",
        descripcion : "Se trata una de las especies marinas mas amenazadas del mundo, de hecho, actualmente solo existen alrededor de 500 especímenes de este animal. La caza sin control por parte de los humanos y el deshielo que está sufriendo su hábitat natural son las principales causas para que este mamífero se encuentre en grave peligro de extinción.") ,
                                             animales (
                                                animal : "🐋",
                                                nombre : "Ballena gris ",
                                                descripcion : "Los rasgos que caracterizan a este mamífero tales como poseer una joroba, el sonido peculiar que emiten y el carácter afable de su personalidad, han convertido esta especie marina como una de las más amenazadas en la actualidad. Tanto es así, que en el Norte del Océano Atlántico y en el Oeste del Pacífico, este animal ya no existe.")
                                             
                                             
    ]
    
    
    var body: some View {
        NavigationView {
            List(animaleslista) {
                animales in
                HStack {
                    ZStack{
                        Text(animales.animal)
                            .shadow(radius: 3)
                            .font(.largeTitle)
                            .frame(width: 65, height: 65)
                            .overlay(Circle().stroke(Color.black, lineWidth: 3))
                    }
                    Text(animales.nombre).font(.headline)
                }.padding(10)
            }
            .navigationBarTitle("Animales en Peligro")
        }
    }
    
}

struct vidaMarinaView_Previews: PreviewProvider {
    static var previews: some View {
        vidaMarinaView()
    }
}


struct animales : Identifiable {
    let id = UUID()
    let animal: String
    let nombre: String
    let descripcion: String
    
}



