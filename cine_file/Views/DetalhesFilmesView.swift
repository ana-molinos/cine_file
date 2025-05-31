//
//  DetalhesFilmesView.swift
//  cine_file
//
//  Created by Gustavo Hansen on 30/05/25.
//
import SwiftUI

struct DetalhesFilmesView: View {
    var body: some View {
        
        
        
        ZStack {
            Rectangle()
                .fill(Color.ESCURO)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(edges: .bottom)
            
            Image ("grid")
                .resizable()
                .frame(maxWidth: .infinity)
                .edgesIgnoringSafeArea(.bottom)
            
            
            VStack {
                Image ("filme16")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: 400)
                    .offset(y: 80)
                    .cornerRadius(60, corners: [.bottomLeft, .bottomRight])
                
                
                
                
                VStack{
                    
                    HStack(spacing: 10){
                        
                        Text("Serviço de Entregas da KIKI")
                            .foregroundColor(.white)
                            .font(.system(size: 26))
                            .fontWeight(.bold)
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                        
                            .padding()
                            .padding(.horizontal)
                        
                        
                        HStack(){
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.VERDE)
                                .font(.system(size: 28))
                            
                            
                            Image(systemName: "heart")
                                .font(.system(size: 28))
                                .foregroundColor(.VERDE)
                            
                                .padding(.trailing)
                                .padding(.horizontal)
                        }
                        
                    }
                    Spacer()
                    
            
                        
                        VStack(spacing: 50){
                           
                            ZStack(alignment: .center){
                                
                                Rectangle()
                                
                                    .fill(Color.ESCURO)
                                
                                    .frame(width: 350, height: 350)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.white.opacity(0.3), lineWidth: 1))
                                
                                VStack(alignment: .leading){
                                   
                                    HStack(){
                                        
                                        Text("Hayao Miyazaki")
                                            .font(.system(size: 18))
                                            .foregroundColor(.white)
                                            
                                        
                                        Spacer()
                                       
                                        
                                        Text("1988")
            
                                            .font(.system(size: 18))
                                            .foregroundColor(.white)
                                            
                                        
                                    }
                                    .padding()
                                .padding(.horizontal,30)
                               
                                VStack{
                                    
                                    HStack(){
                                        Text("Por ordem de sua mãe, Kiki parte para um aprendizado de um ano, acompanhada por seu gato preto. A um comando de sua vassoura mágica, ela vai parar na charmosa cidadezinha de Moreoastal. Infelizmente, os hotéis locais não aceitam bruxas e a polícia a flagra fazendo algumas travessuras.")
                                            
                                            .foregroundColor(.white)
                                            .font(.system(size: 16))
                                            .multilineTextAlignment(.center)
                                            .lineLimit(16)
                                    }
                                    
                                    }
                                }
                            }
                
                                }
                              
                                }
                            
                            
        
                                     
                                }
                                
                                
                            
                        }
                    }
                  
        
    }
            

#Preview {
    DetalhesFilmesView()
    
}
