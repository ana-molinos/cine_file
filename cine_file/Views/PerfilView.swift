//
//  PerfilView.swift
//  cine_file
//
//  Created by Ana Julia on 01/06/25.
//

import SwiftUI

struct PerfilView: View {
    
    @Binding var films: [FilmModel]
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("grid")
                    .resizable()
                    .ignoresSafeArea(edges: .top)
                    .opacity(0.8)
                
                ScrollView{
                    VStack(spacing: 30){
                        
                        VStack{
                            // Foto de perfil
                            Image("perfil")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 130)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .strokeBorder(Color.VERDE, lineWidth: 2)
                                )
                            
                            //Nome + divider
                            VStack(spacing: 11){
                                
                                // Nome do usuário
                                Text("gutinho e anajuzinha")
                                    .font(.system(size: 28))
                                    .foregroundStyle(.white)
                                    .fontWeight(.light)
                                
                                // Divider
                                Rectangle()
                                    .frame(maxWidth: .infinity, maxHeight: 1)
                                    .foregroundStyle(Color.white)
                            }
                            .padding(.horizontal, 30)
                        }
                        .padding(.top, 20)
                        
                        // Lista de favoritos
                        VStack(alignment: .leading, spacing: 15){
                            Image(systemName: "heart.fill")
                                .foregroundStyle(Color.ROSA)
                                .font(.system(size: 30))
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                
                                HStack{
                                    ForEach(films.indices, id: \.self) { index in
                                        if films[index].favorited{
                                            
                                            NavigationLink{
                                                DetalhesFilmesView(filme: $films[index])
                                            } label: {
                                                Image(films[index].imgName)
                                                    .resizable()
                                                    //.scaledToFill()
                                                    .frame(width: 150, height: (150*1.34))
                                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                                    .overlay(
                                                            RoundedRectangle(cornerRadius: 8)
                                                                .strokeBorder(Color.ROSA, lineWidth: 2) // cor e espessura da borda
                                                        )
                                            }
                                            
                                            
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.leading, 30)
                        
                        // Lista de assistido
                        VStack(alignment: .leading, spacing: 15){
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundStyle(Color.VERDE)
                                .font(.system(size: 30))
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                
                                HStack{
                                    ForEach(films.indices, id: \.self) { index in
                                        if films[index].watched{
                                            
                                            NavigationLink{
                                                DetalhesFilmesView(filme: $films[index])
                                            } label: {
                                                Image(films[index].imgName)
                                                    .resizable()
                                                    //.scaledToFill()
                                                    .frame(width: 150, height: (150*1.34))
                                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                                    .overlay(
                                                            RoundedRectangle(cornerRadius: 8)
                                                                .strokeBorder(Color.VERDE, lineWidth: 2) // cor e espessura da borda
                                                        )
                                            }
                                            
                                            
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.leading, 30)
                        
                        // Lista de reviews
                        VStack(alignment: .leading, spacing: 15){
                            Text("Últimos reviews")
                                .font(.system(size: 28))
                                .foregroundStyle(Color.white)
                                .bold()
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                
                                HStack(spacing: 25){
                                    ForEach(films.indices, id: \.self) { index in
                                        VStack(alignment: .center, spacing: 20){
                                            Text(films[index].title)
                                                .lineLimit(1)
                                                .bold()
                                                .frame(maxWidth: .infinity)
                                            
                                            Rectangle()
                                                .frame(maxWidth: .infinity, maxHeight: 1)
                                                .padding(.horizontal, -20)
                                                
                                            Text(films[index].review)
                                            
                                            Spacer()
                                        }
                                        .frame(width: 280, height: 200)
                                        .padding(20)
                                        .background(Color.VERDE)
                                        .cornerRadius(10)
                                    }
                                }
                            }
                        }
                        .padding(.leading, 30)
                    }
                }
            }
            .background(Color.AZUL)
            .padding(.vertical, 15)
        }
    }
}

#Preview {
    PerfilView(films: .constant([FilmModel].films()))
}
