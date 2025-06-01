//
//  OnboardingView.swift
//  cine_file
//
//  Created by Ana Julia on 31/05/25.
//

import SwiftUI

struct OnboardingView: View{
    
    let titulo: String
    let texto: String
    
    var body: some View{
        
        // MARK: Stack Principal
        ZStack()
        {
            ///Fundo Azul
            Rectangle()
                .fill(Color.AZUL)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(edges: .bottom) //Pra ocupar a tela toda
            
            // MARK: Stack Vertical contendo os elementos da camada mais superficial
            VStack{
                
                ///Imagem de login
                Image("Aplicacao01")
                    .resizable()
                    .scaledToFit() ///para não cortar
                    .frame(maxWidth: .infinity) ///para ocupar toda a largura da tela
                    //.cornerRadius(60)
                    .cornerRadius(60, corners: [.bottomLeft, .bottomRight])
                
                // MARK: Stack que cuida do alinhamento dos textos
                VStack(alignment: .leading){
                    Text(titulo)
                        .foregroundColor( .white) ///cor branca da fonte
                        .font(.system(size: 36)) ///tamanho
                        .fontWeight(.bold)
                            ///negrito
                        
                    
                    Text(texto)
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                        .fontWeight(.light)
                }
                
                Spacer() ///Spacer para separar a imagem do restante dos elementos
                
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    OnboardingView(titulo: "Conheça o CineFilés", texto: "Só aqui você encontra a seleção dos melhores filmes de todos os tempos, resultado de uma curadoria altamente qualificada, feita pelos maiores especialistas da Apple Developer Academy.")
}
