//
//  TelaLogin.swift
//  cine_file
//
//  Created by Gustavo Hansen on 01/06/25.
//

import SwiftUI

struct TelaLoginView: View {
    
    @State private var email: String = ""
    @State private var pwd: String = ""
    
    var body: some View {
        // MARK: Stack Principal
        NavigationStack{
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
                    .opacity(0.8)
                
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
                        
                    Spacer()
                       
                    
                    VStack(spacing: 40){
                       
                        VStack(spacing: 30){
                            
                            HStack(spacing: 20){
                                
                                Text("Coloque suas informações de cadastro")
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor( .white)
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.leading)
                            }
                    
                            VStack(spacing: 30){
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color.VERDE)
                                    
                                    
                                    HStack {
                                        TextField(
                                            "",
                                            text: $email,
                                            prompt: Text("E-mail:")
                                        )
                                                .padding(.leading, 15)
                                                .foregroundColor(.black)
                                    }
                                }
                                .frame(height: 40)
                                .padding(.horizontal, 30)
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color.VERDE)
                                    
                                    HStack {
                                        TextField(
                                            "",
                                            text: $pwd,
                                            prompt: Text("Senha:")
                                        )
                                            .padding(.leading, 15)
                                            .foregroundColor(.black)
                                    
                                        Spacer()
                                        Image(systemName: "eye")
                                            .foregroundColor(.black)
                                            .padding(.trailing, 15)
                                            .opacity(0.4)
                                        
                                    }
                                }
                                .frame(height: 40)
                                .padding(.horizontal, 30)
                                
                                HStack{
                                    
                                    Text("esqueci minha senha")
                                        .foregroundColor( .white)
                                        .font(.system(size: 16))
                                        .underline()
                                        .padding(.leading, 180)
                                        
                                    
                                    
                                }

                                NavigationLink {
                                    TabBarView()                                }
                                
                                label: {
                                    
                                
                                    HStack(spacing: 15){
                                        
                                        
                                        //Texto
                                        
                                        Text("Cadastrar")
                                            .font(.system(size: 24))
                                    }
                                        
                                }
                                
                                .foregroundColor(.black)
                                .padding(15)
                                .frame(maxWidth: 200, maxHeight: 60)
                                .background(Color.VERDE)
                                .cornerRadius(30)
                                .overlay(RoundedRectangle(cornerRadius: 30)
                                 .stroke(Color.ESCURO, lineWidth: 3))
                                
                                        
                        }
                            
                        }
                        .padding(0)
                        
                        
                        
                    }
                    
                    Spacer()
                }
            }
            .padding(.vertical, 10)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TelaLoginView()
}

