//
//  TabView.swift
//  cine_file
//
//  Created by Ana Julia on 01/06/25.
//

import SwiftUI

struct TabBarView: View {
    
    /// "Uma propriedade variavel chamada films, do tipo lista de objetos do tipo FilmModel, recebe o retorno da função films(), implementada na extension [FilmModel]"     
    @State var films: [FilmModel] = [FilmModel].films()
    
    var body: some View {
        VStack {
            TabView{
                Tab("Home", systemImage: "movieclapper.fill"){
                    HomepageView(films: $films)
                }
                
                Tab("Pesquisa", systemImage: "magnifyingglass"){
                    SearchView(/*films: $films*/)
                }
                
                Tab("Filmes", systemImage: "list.star"){
                    ListView(films: $films)
                }
                
                Tab("Perfil", systemImage: "person.fill"){
                    PerfilView(films: $films)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TabBarView()
}
