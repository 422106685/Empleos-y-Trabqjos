//
//  vidaMarinaView.swift
//  Empleos y Trabqjos
//
//  Created by CEDAM25 on 24/04/23.
import SwiftUI

struct vidaMarinaView: View {
    
    private let animaleslista: [animales] = [
        animales (
        animal : "🦭",
        nombre : "Foca Mediterranea",
        descripcion : "Se trata una de las especies marinas mas amenazadas del mundo, de hecho, actualmente solo existen alrededor de 500 especímenes de este animal. La caza sin control por parte de los humanos y el deshielo que está sufriendo su hábitat natural son las principales causas para que este mamífero se encuentre en grave peligro de extinción.",
        
        Foto : Image("Foca")),
        animales (
            animal : "🐋",
            nombre : "Ballena gris ",
            descripcion : "Los rasgos que caracterizan a este mamífero tales como poseer una joroba, el sonido peculiar que emiten y el carácter afable de su personalidad, han convertido esta especie marina como una de las más amenazadas en la actualidad. Tanto es así, que en el Norte del Océano Atlántico y en el Oeste del Pacífico, este animal ya no existe.",
        Foto: Image("ballena")),
        animales(
            animal : "🐠",
            nombre: "Pez Napoleon",
            descripcion: "Este pez es uno de los más grandes que viven en los arrecifes de coral. Se trata de peces hermafroditas, por lo que su proceso de reproducción es bastante lento, lo cual, sumado a que se convierte en un foco fácil para los pescadores y a los peligros que conllevan los corales, se encuentran en peligro de extinción.",
            Foto: Image("napoleon")
        
        ),
             
        animales(
            animal : "🐡",
            nombre: "Manati",
            descripcion: "Los manatíes es otro de los animales que se encuentran en peligro de extinción. De hecho, actualmente solo existen alrededor de 3.000 especímenes. La principal amenaza con la que se encuentra este animal es la contaminación marítima, ya que su principal fuente de sustento son las algas, las cuales pasan a ser comida tóxica para esta especie. Además, el cambio climático se ha convertido en un aliciente negativo que obligan a estos animales a modificar su hábitat poniendo en riesgo sus vidas..",
            Foto: Image("manati")
        
        ),
        animales(
            animal : "🐟",
            nombre: "Vaquita Marina",
            descripcion: "El gran atractivo de estos mamíferos hace que se conviertan en uno de los animales más amenazados por los humanos. Actualmente solo existen 600 especímenes y su ciclo de vida está próximo a la extinción",
            Foto: Image("vaquita")
        
        ),
        
        animales(
            animal : "🐢",
            nombre: "Tortuga Boba",
            descripcion: "Cazadas por su carne y huevos, hoy en día su principal amenaza son los aparejos de pesca así como la invasión y destrucción de su hábitat. La iluminación artificial desalienta la anidación e interfiere con la habilidad de las tortuguitas de dirigirse hacia el mar. Las hembras prefieren anidar en playas que no tienen iluminación artificial, algo cada vez más difícil. Tiene lo que se denomina una distribución cosmopolita, estando presente en el más amplio rango geográfico de todas las tortugas marinas. Habita en el océano Atlántico, Índico y Pacífico y el mar Mediterráneo. ",
            Foto: Image("tortuga")
        
        ),
        
        animales(
            animal : "🪸",
            nombre: "Coral",
            descripcion: "  Este animal colonial pertenece al filo Cnidaria y forman colonias de cientos o miles de individuos formando en aguas tropicales y subtropicales grandes arrecifes. Los corales viven en simbiosis con unas algas unicelulares llamadas zooxantelas que a cambio de cobijo (el exoesqueleto del coral) le proporcionan alimento que ellas obtienen de realizar la fotosíntesis. Pero mientras aumenta la temperatura del mar, las zooxantelas mueren y dejan al coral blanco y sin alimento, algo que ya está pasando a gran escala en la Gran Barrera de Coral, el mayor arrecife de coral del mundo en Australia que tiene más de 2 600 km y donde ya ha muerto más del 35 % por esta causa y más de dos tercios está blanqueado.",
            Foto: Image("coral")
        
        ),
        animales(
            animal : "🦑",
            nombre: "Angel de Mar",
            descripcion: " Unos moluscos gasterópodos adorables y translúcidos que al igual que del krill que hablábamos antes, dependen aves, ballenas y muchas especies marinas más. ¿Su principal amenaza? La acidificación del océano. Tienen una cubierta fina que no les protege nada de esos cambios que no deberían suceder.",
            Foto: Image("angel")
        
        )
    ]
    
    
    var body: some View {
        NavigationView {
            List(animaleslista) {
                animales in
                NavigationLink(destination: DetailsView(animalesItem: animales)){
                    
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
            }

            .navigationBarTitle(" Animales en Peligro")
            
        }
    }
}


struct DetailsView: View{
    
    let animalesItem: animales
    
    var body: some View{
        ScrollView{
            ZStack{
                Image("fondo").resizable().frame(height: 700)
                VStack(alignment: .leading){
                    HStack{
                        VStack(alignment: .center ,spacing: 5){
                            Text(animalesItem.nombre)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical, 20.0)
                            animalesItem.Foto
                                .resizable()
                                .scaledToFit()
                                .frame(width: 360, height: 200)
                                .cornerRadius(30)
                            
                            Text(animalesItem.descripcion)
                                .shadow(radius: 3)
                                .multilineTextAlignment(.center)
                                .frame(width: 365, height: 265)
                                .foregroundColor(.white)
                                .overlay(Rectangle().stroke(Color.white, lineWidth: 3))
                            
                        }
                        .padding(10)
                        
                    }
                }
            }
            
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
    let Foto: Image
}



