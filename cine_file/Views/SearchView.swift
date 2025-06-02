//
//  SearchView.swift
//  cine_file
//
//  Created by Ana Julia on 01/06/25.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(Color.ESCURO)
            
            Image("elemento_search")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .opacity(0.7)
            
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.VERDE)
                    
                    HStack {
                        TextField(
                            "",
                            text: $searchText,
                            prompt: Text("Pesquisar")
                                .foregroundColor(.black)
                        )
                                .padding(.leading, 30)
                                .foregroundColor(.black)
                        
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                            .padding(.trailing, 12)
                    }
                }
                .frame(height: 40)
                .padding(20)
                
                Spacer()
            }
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    SearchView()
}
