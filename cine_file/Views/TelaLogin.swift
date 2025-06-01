//
//  TelaLogin.swift
//  cine_file
//
//  Created by Gustavo Hansen on 01/06/25.
//

import SwiftUI

struct TelaLogin: View {
    var body: some View {
        // MARK: Stack Principal
        ZStack()
        {
            ///Fundo Azul
            Rectangle()
                .fill(Color.AZUL)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(edges: .bottom) //Pra ocupar a tela toda
            
            ///Grid na 2a camada
            Image("grid")
            ///sempre resizable primeiro pq senao os demais modificadores nao vao funcionar
                .resizable()
                .frame(maxWidth: .infinity) ///ocupa toda a largura da tera
                .ignoresSafeArea(edges: .bottom)
            
            // MARK: Stack Vertical contendo os elementos da camada mais superficial
            VStack{
                
                ///Imagem de login
                // TODO: PAREI AQUI!!!!!
                Image("capa_login")
                    .resizable()
                    .scaledToFit() ///para não cortar
                    .frame(maxWidth: .infinity) ///para ocupar toda a largura da tela
                //.cornerRadius(60)
                    .cornerRadius(60, corners: [.bottomLeft, .bottomRight])
                
                Spacer() ///Spacer para separar a imagem do restante dos elementos
                
                
                VStack(spacing: 40){
                    VStack(spacing: 10){
                        Text("Coloque suas informações de cadastro")
                            .frame(maxWidth: .infinity)
                            .foregroundColor( .white)
                            .font(.system(size: 25))
                            .multilineTextAlignment(.center)
                            .padding(50)
                            
                        
                        Spacer()
                
                        VStack{
                            
                            Rectangle()
                            
                                .fill(Color.VERDE.opacity(0.8))
                                .frame(width: 350, height: 40)
                                .cornerRadius(20)
                                .padding(05)
                            
                            HStack{
                                Text("esqueci minha senha")
                                    .foregroundColor( .white)
                                    .font(.system(size: 16))
                                    .underline()
                                    .padding(.leading, 170)
                                    
                                
                                
                            }
                            Rectangle()
                            
                                .fill(Color.VERDE.opacity(0.8))
                                .frame(width: 350, height: 40)
                                .cornerRadius(20)
                                .padding(25)
                       
                            Button {
                                
                            }
                            
                            label: {
                                
                                // MARK: Stack horizontal para poder ajustar o espaçamento entre o ícone e o texto do botão
                                HStack(spacing: 15){
                                    
                                    
                                    //Texto
                                    Text("Entrar")
                                        .font(.system(size: 24))
                                }
                                    
                            }
                            .foregroundColor(.black)
                            .padding(15)
                            .frame(maxWidth: 200, maxHeight: 60)
                            .background(Color.VERDE)
                            .cornerRadius(30)
                            .overlay(
                                                    RoundedRectangle(cornerRadius: 30)
                                                        .stroke(Color.ESCURO, lineWidth: 3)
                                                )
                            
                                    
                    }
                    }
                    Spacer()
                }
            }
        }
        
    }
}

#Preview {
    TelaLogin()
}

