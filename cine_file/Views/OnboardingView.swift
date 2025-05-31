//
//  OnboardingView.swift
//  cine_file
//
//  Created by Ana Julia on 31/05/25.
//

import SwiftUI

struct OnboardingView: View{
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
                // TODO: PAREI AQUI!!!!!
                Image("Aplicacao01")
                    .resizable()
                    .scaledToFit() ///para não cortar
                    .frame(maxWidth: .infinity) ///para ocupar toda a largura da tela
                    //.cornerRadius(60)
                    .cornerRadius(60, corners: [.bottomLeft, .bottomRight])
                
                Spacer() ///Spacer para separar a imagem do restante dos elementos
                
                // MARK: Stack vertical dos textos
                VStack(spacing: 40){
                    VStack(spacing: 10){
                        Text("Bem-vindo ao Filé")
                            .foregroundColor( .white) ///cor branca da fonte
                            .font(.system(size: 36)) ///tamanho
                            .fontWeight(.bold)
                                ///negrito
                            
                        
                        Text("Faça login para começar sua experiência cinéfila!")
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center) ///alinhamento
                            .fontWeight(.light)
                    }
                }
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    OnboardingView()
}
