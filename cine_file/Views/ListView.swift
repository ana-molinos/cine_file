//
//  ListView.swift
//  cine_file
//
//  Created by Ana Julia on 01/06/25.
//

import SwiftUI

struct ListView: View{
    
    /// "Uma propriedade constante chamada films, do tipo lista de objetos do tipo FilmModel, recebe o retorno da função films(), implementada na extension [FilmModel]"
    private let films: [FilmModel] = [FilmModel].films()
    
    // Booleanos para lógica de favoritos e assistidos
    @State private var viewFavs : Bool = false
    @State private var viewWatch : Bool = false
    
    /// @State marca a propriedade como mutável para que o body possa alterá-la
    /// Toda vez que essa propriedade é alterada o wrapper @State permite que a view seja renderizada novamente para atualizar (ou seja, chama o body novamente)
    /// OBS.: não esquecer que deve-se interpretar essa parte como propriedades e não apenas variáveis!!!!!!!!!!
    
    private var color : Color{
        if (viewFavs && viewWatch) || (!viewFavs && !viewWatch){
            return Color.VERDE
        }
        
        if viewFavs{
            return Color.ROSA
        }
        
        return Color.AZUL
    }
    
    var body: some View{
            ZStack{
                Image("grid")
                    .resizable()
                    .ignoresSafeArea(edges: .bottom)
                    .opacity(0.4)
                
                ScrollView{
                    
                    // MARK: Stack principal dos elementos na tela
                    VStack(spacing: 55){
                        
                        // MARK: Stack horizontal para os botões do cabeçalho
                        HStack(spacing: 30){
                        
                            Spacer()
                            
                            // Botão de assistidos
                            Button {
                                
                                viewWatch.toggle()
                                /// O .toggle() é uma forma abreviada de inverter o valor do booleano (ou seja, é um método self = !self para mudar o valor p/ true ou false conforme o valor atual)
                                
                            } label: {
                                
                                // Símbolo de coração
                                Image(systemName: viewWatch ?  "checkmark.circle.fill" : "checkmark.circle")
                                    .foregroundStyle(color)
                                    .font(.system(size: 30))
                            }

                            // Botão de favoritos
                            Button {
                                
                                viewFavs.toggle()
                                /// O .toggle() é uma forma abreviada de inverter o valor do booleano (ou seja, é um método self = !self para mudar o valor p/ true ou false conforme o valor atual)
                                
                            } label: {
                                
                                // Símbolo de coração
                                Image(systemName: viewFavs ?  "heart.fill" : "heart")
                                    .foregroundStyle(color)
                                    .font(.system(size: 30))
                            }
                            
                        }
                        .padding(.horizontal, 30)
                        .padding(.top, 40)
                        
                        // Título da lista
                        
                        
                        // MARK: Stack da lista
                        VStack(alignment: .leading, spacing: 30){
                            
                            // Laço para mostrar os filmes em cards conforme a condicional
                            ForEach(films){ film in
                                
                                /// Como funciona essa condicional:
                                /// Se viewFavs é falso ela vai ser verdadeira em todas as iterações e vai mostrar todos os filmes
                                ///  Se for true, vai reprovar na primeira condição e testar a segunda: se o filme for favorito, ele vai ser exibido na lista
                                if (viewFavs == false && viewWatch == false) /// Botões não selecionados: lista todos os filmes
                                || (viewFavs && !viewWatch && film.favorited) /// Botão Fav selecionado: lista os filmes favoritados
                                || (viewWatch && !viewFavs && film.watched) /// Botão Check selecionado: lista os filmes assistidos
                                || (film.favorited && film.watched) /// Ambos os botões selecionados: lista os filmes favoritados e que já foram assistidos
                                {
                                    
                                    //MARK: Stack do card
                                    HStack(/*alignment: .top,*/ spacing: 15){
                                        
                                        // Capa do filme
                                        Image(film.imgName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 1.34*100)
                                            .clipped()
                                            .cornerRadius(8)
                                        
                                        // MARK: Stack do texto no card
                                        VStack(alignment: .leading, spacing: 8){
                                            
                                            // Título
                                            Text(film.title)
                                                .foregroundStyle(Color.white)
                                                .font(.system(size: 18))
                                                .fontWeight(.heavy)
                                            
                                            // Direção
                                            Text(film.direction)
                                                .foregroundStyle(Color.white)
                                            
                                            // Ano
                                            Text(film.year)
                                                .foregroundStyle(Color.white)
                                        }
                                    }
                                    /// O frame mantém o card ocupando toda a tela horizontalmente e configura os elementos do card
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(15)
                                    .background(Color.ESCURO)
                                    .cornerRadius(15)
                                    .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .strokeBorder(Color.gray, lineWidth: 0.5) // cor e espessura da borda
                                        )
                                }
                            }
                        }
                        .padding(.horizontal, 30)
                    }
                }
            }
            .background(Color.ESCURO)
            .padding(.vertical, 10)
            
    }
}

#Preview {
    ListView()
}
