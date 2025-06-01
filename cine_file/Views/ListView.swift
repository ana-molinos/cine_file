//
//  ListView.swift
//  cine_file
//
//  Created by Ana Julia on 01/06/25.
//

import SwiftUI

struct ListView: View{
    
    /// "Uma constante chamada films do tipo lista de objetos do tipo FilmModel recebe o retorno da função films() implementada na extension [FilmModel]"
    let films: [FilmModel] = [FilmModel].films()
    
    var body: some View{
            ZStack{
                Image("grid")
                    .resizable()
                    .ignoresSafeArea(edges: .bottom)
                
                ScrollView{
                    
                    // MARK: Stack da lista
                    VStack(alignment: .leading, spacing: 30){
                        
                        ForEach(films){ film in
                            
                            //MARK: Stack do card
                            HStack(spacing: 15){
                                
                                // Capa do filme
                                Image(film.imgName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .clipped()
                                    .cornerRadius(8)
                                
                                // MARK: Stack do texto no card
                                VStack(alignment: .leading, spacing: 6){
                                    
                                    // Título
                                    Text(film.title)
                                        .foregroundStyle(Color.white)
                                        .font(.system(size: 20))
                                        .bold()
                                    
                                    // Direção
                                    Text(film.direction)
                                        .foregroundStyle(Color.white)
                                    
                                    // Ano
                                    Text(film.year)
                                        .foregroundStyle(Color.white)
                                }
                            }
                        }
                        
                    }
                }
            }
            .background(Color.ESCURO)
    }
}

#Preview {
    ListView()
}
