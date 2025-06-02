//
//  TabView.swift
//  cine_file
//
//  Created by Ana Julia on 01/06/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        VStack {
            TabView{
                Tab("Home", systemImage: "movieclapper.fill"){
                    HomepageView()
                }
                
                Tab("Pesquisa", systemImage: "magnifyingglass"){
                    SearchView()
                }
                
                Tab("Filmes", systemImage: "list.star"){
                    ListView()
                }
                
                Tab("Perfil", systemImage: "person.fill"){
                    PerfilView()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TabBarView()
}
