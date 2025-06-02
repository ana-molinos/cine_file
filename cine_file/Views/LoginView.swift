//
//  ContentView.swift
//  cine_file
//
//  Created by Ana Julia on 29/05/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        // MARK: Stack Principal
        NavigationStack{
            ZStack()
            {
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
                    Image("capa_login")
                        .resizable()
                        .scaledToFit() ///para não cortar
                        .frame(maxWidth: .infinity) ///para ocupar toda a largura da tela
                        .cornerRadius(60, corners: [.bottomLeft, .bottomRight]) ///struct utilitaria que o chat criou para poder escolher quais cantos arredondar
                    
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
                        
                        // MARK: Stack vertical mais interna para os botões
                        
                        ///O uso dessa stack pode ser interpretado como fazer um autolayout so para os botões, visto que o espaçamento entre um botão e outro é o mesmo, mas entre os botões e o texto, é diferente
                        VStack(spacing: 25){
                            
                            /// 1o botão
                            /// Essa primeira parte é a parte funcional do botão (o que ele vai fazer quando clicado)
                            NavigationLink {
                                TabBarView()
                            }
                            /// Essa segunda parte é mais a parte estética do botão
                            label: {
                                
                                // MARK: Stack horizontal para poder ajustar o espaçamento entre o ícone e o texto do botão
                                HStack(spacing: 25){
                                    
                                    //Ícone
                                    Image(systemName: "apple.logo")
                                        .font(.system(size: 30))
                                        .bold()
                                    
                                    //Texto
                                    Text("Login com conta Apple")
                                        .font(.system(size: 24))
                                    
                                    ///Obs.: aqui foram aplicados os modificadores que alteram característica individuais de cada elemento da label
                                }
                                    
                            }
                            .foregroundColor(.white) //cor dos elementos na label
                            .padding(15)
                            .frame(maxWidth:.infinity, maxHeight: 60) //tamanho da label
                            .background(Color.black)//cor de fundo
                            .cornerRadius(30)
                            .overlay(
                                                    RoundedRectangle(cornerRadius: 30)
                                                        .stroke(Color.VERDE, lineWidth: 3)
                                                ) //esse aqui serve para adicionar o stroke
                            
                            ///Obs. 2: aqui foram aplicados os modificadores que alteram característica gerais para todos os elementos que tem dentro da label (ou seja, tudo que é em comum entre os elementos é modificado aqui)
                            
                            //2o botão
                            NavigationLink {
                                TabBarView()
                            } label: {
                                
                                HStack(spacing: 25){
                                    Image(systemName: "at")
                                        .font(.system(size: 30))
                                        .bold()
                                    
                                    Text("Login com e-mail")
                                        .font(.system(size: 24))
                                }
                            }
                            .foregroundColor(.black)
                            .padding(15)
                            .frame(maxWidth:.infinity, maxHeight: 60)
                            .background(Color.VERDE)
                            .cornerRadius(30)
                            .overlay(
                                                    RoundedRectangle(cornerRadius: 30)
                                                        .stroke(Color.black, lineWidth: 3)
                                                )
                            
                            //3o botão
                            NavigationLink {
                                TelaLoginView()
                            } label: {
                                
                                HStack(spacing: 25){
                                    Image(systemName: "sparkles")
                                        .font(.system(size: 30))
                                        .bold()
                                    
                                    Text("Cadastre-se")
                                        .font(.system(size: 24))
                                }
                                    
                            }
                            .foregroundColor(.black)
                            .padding(15)
                            .frame(maxWidth:.infinity, maxHeight: 60)
                            .background(Color.VERDE)
                            .cornerRadius(30)
                            .overlay(
                                                    RoundedRectangle(cornerRadius: 30)
                                                        .stroke(Color.black, lineWidth: 3)
                                                )
                            
                        }
                        .padding(.horizontal, 30)
                    }
                }
                .padding(.bottom)
            }
            .background(Color.AZUL)
        }
    }
}

#Preview {
    LoginView()
}
