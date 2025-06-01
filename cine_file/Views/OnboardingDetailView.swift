//
//  OnboardingView.swift
//  cine_file
//
//  Created by Ana Julia on 31/05/25.
//

import SwiftUI

struct OnboardingDetailView: View{
    
    let nomeImg: String
    let titulo: String
    let texto: String
    
    var body: some View{
        
        // MARK: Stack Principal
        ZStack()
        {
            
            
            // MARK: Stack Vertical contendo os elementos da camada mais superficial
            VStack(spacing: 20){
                
                ///Imagem de login
                Image(nomeImg)
                    .resizable()
                    .scaledToFit() ///para não cortar
                    .frame(width: .infinity) ///para ocupar toda a largura da tela
                    .cornerRadius(60, corners: [.bottomLeft, .bottomRight]) ///borda arredondada com utilitário do chat
                    
                // MARK: Stack que cuida do alinhamento dos textos
                VStack(alignment: .leading, spacing: 15){
                    
                    //Titulo
                    Text(titulo)
                        .foregroundColor( .white) ///cor branca da fonte
                        .font(.system(size: 30)) ///tamanho
                        .fontWeight(.bold)
                            ///negrito
                        
                    //Texto
                    Text(texto)
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                }
                .padding(.horizontal)
                
                // Spacer pra jogar tudo pra cima
                Spacer()
            }
            .background(Color.AZUL) //Fundo azul
        }
    }
}

#Preview {
    OnboardingDetailView(nomeImg: "Aplicacao01", titulo: "Conheça o CineFilés", texto: "Só aqui você encontra a seleção dos melhores filmes de todos os tempos, resultado de uma curadoria altamente qualificada, feita pelos maiores especialistas da Apple Developer Academy.")
}
