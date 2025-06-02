//
//  HomepageView.swift
//  cine_file
//
//  Created by Ana Julia on 01/06/25.
//

import SwiftUI

// MARK: View para definir apenas a aparência da home, a parte de funcional para poder navegar na tabbar ficara em outro arquivo

struct HomepageView: View {
    private let films: [FilmModel] = [FilmModel].films() /// Uma variavel do tipo Array de FilmModels que recebe a lista de filmes montada na extesão da struct
    
    /// Embaralha e pega 8 aleatórios para criar a lista de filmes do momento
    private var momentFilms: [FilmModel] {
            Array(films.shuffled().prefix(8))
        }
    
    /// Embaralha e pega 5 aleatórios para criar a lista de filmes populares entre amigos
    private var friendsPop: [FilmModel] {
            Array(films.shuffled().prefix(5))
        }

    var body: some View {
        
        // MARK: Stack principal das camadas
        ZStack{
            Image("grid")
                .resizable()
                .ignoresSafeArea(edges: .top)
                .opacity(0.8)
            
            ScrollView{
                // MARK: Stack principal dos elementos na tela
                VStack(spacing: 30){
                    
                    // MARK: Stack dos banners
                    VStack(alignment: .leading, spacing: 30){
                        
                        // Título
                        Text("Bem-vindo, Academer ❤️")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 26))
                            .fontWeight(.bold)
                        
                        // MARK: Scroll horizontal
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            // MARK: Stack de organição dos banners
                            HStack(spacing: 25){
                                
                                Image("banner1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 346)
                                
                                Image("banner2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 346)
                            }
                        }
                    }
                    .padding(.leading, 30)
                    
                    // MARK: Stack dos filmes do momento
                    VStack(spacing: 20){
                        
                        // Título
                        Text("filmes do momento * filmes do momento * filmes do momento * filmes do momento")
                            .frame(height: 30)
                            .background(Color.VERDE)
                            .lineLimit(1)
                            .padding(.horizontal, -30)
                        
                        // MARK: Scroll horizontal da lista
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            // MARK: Stack de organização dos filmes
                            HStack(spacing: 25){
                                
                                // Loop que itera sobre a lista de filmes
                                ForEach(momentFilms){ film in
                                    
                                    Image(film.imgName)
                                        .resizable()
                                        //.scaledToFill()
                                        .frame(width: 200, height: (200*1.34))
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                        .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .strokeBorder(Color.VERDE, lineWidth: 2) // cor e espessura da borda
                                            )
                                }
                            }
                            .padding(.leading, 30)
                        }
                    }
                    
                    // MARK: Stack dos filmes populares entre amigos
                    VStack(spacing: 20){
                        
                        // Título
                        Text("popular with frenz * popular with frenz * popular with frenz * popular with frenz * ")
                            .frame(height: 30)
                            .background(Color.ROSA)
                            .lineLimit(1)
                            .padding(.horizontal, -30)
                            
                        // MARK: Scroll horizontal da lista
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            // MARK: Stack de organização dos filmes
                            HStack(spacing: 25){
                                
                                ForEach(friendsPop){ film in
                                    
                                    Image(film.imgName)
                                        .resizable()
                                        //.scaledToFill()
                                        .frame(width: 200, height: (200*1.34))
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                        .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .strokeBorder(Color.ROSA, lineWidth: 2) // cor e espessura da borda
                                            )
                                }
                            }
                            .padding(.leading, 30)
                        }
                    }
                    
                    // MARK: Stack dos filmes favoritos
                    VStack(spacing: 20){
                        
                        // Título
                        Text("nem amoo * nem amoo * nem amoo * nem amoo * nem amoo * nem amoo * nem amoo")
                            .frame(height: 30)
                            .background(Color.VERDE)
                            .lineLimit(1)
                            .padding(.horizontal, -30)
                            
                        // MARK: Scroll horizontal da lista
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            // MARK: Stack de organização da lista
                            HStack(spacing: 25){
                                
                                ForEach(films){ film in
                                    
                                    /// Só mostra o filme se ele foi setado como favorito no app
                                    if film.favorited{
                                        
                                        Image(film.imgName)
                                            .resizable()
                                            //.scaledToFill()
                                            .frame(width: 200, height: (200*1.34))
                                            .clipShape(RoundedRectangle(cornerRadius: 8))
                                            .overlay(
                                                    RoundedRectangle(cornerRadius: 8)
                                                        .strokeBorder(Color.VERDE, lineWidth: 2) // cor e espessura da borda
                                                )
                                    }
                                }
                            }
                            .padding(.leading, 30)
                        }
                    }
                    
                }
                .padding(.vertical, 20)
            }
        }
        .background(Color.AZUL)

    }
}

#Preview {
    HomepageView()
}
