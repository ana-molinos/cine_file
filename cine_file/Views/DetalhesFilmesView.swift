//
//  DetalhesFilmesView.swift
//  cine_file
//
//  Created by Gustavo Hansen on 30/05/25.
//
import SwiftUI

struct DetalhesFilmesView: View {
    let filme: FilmModel
    var body: some View {
       
        
        
        
        ZStack {
            Rectangle()
                .fill(Color.ESCURO)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            
                
            Image ("grid")
                .resizable()
                .frame(maxWidth: .infinity)
                .ignoresSafeArea()
                .opacity(0.4)
            
            ScrollView(.vertical, showsIndicators: false){
            VStack {
                
                Image (filme.imgName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: 400)
                    .offset(y: 80)
                    .cornerRadius(60, corners: [.bottomLeft, .bottomRight])
                Spacer()
                
                
                
                
                VStack{
                    
                    HStack(spacing: 10){
                        
                        Text(filme.title)
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
                                        
                                        Text(filme.direction)
                                            .font(.system(size: 18))
                                            .foregroundColor(.white)
                                            
                                        
                                        Spacer()
                                       
                                        
                                        Text(filme.year)
            
                                            .font(.system(size: 18))
                                            .foregroundColor(.white)
                                            
                                        
                                    }
                                    .padding()
                                .padding(.horizontal,30)
                               
                                VStack{
                                    
                                    HStack(){
                                        Text(filme.synopsis)
                                            
                                            .foregroundColor(.white)
                                            .font(.system(size: 18))
                                        

                                    }
                                    .padding(40)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(16)
                                    }
                                }
                            }
                           
                            VStack(){
                            
                                ZStack(alignment: .center){
                                    
                                    
                                    Rectangle()
                                    
                                        .fill(Color.VERDE)
                                        .cornerRadius(20)
                                        .frame(width: 350, height: 180)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.ESCURO, lineWidth: 3))
                                    HStack(){
                                    Text("Seu Review")
                                        .fontWeight(.bold)
                                        .padding(.bottom, 130)
                                }
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundColor(.black)
                                        .padding(.horizontal)
                                        .padding(.bottom, 90)
                                    
                                    
                                    
                                    Text("EU AMOOO ESSE FILMEEEEEE É MEU FAVORITO DE TODOS OS TEMPOSSSSSS")
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 50)
                                        .padding(.top, 40)
                                        
                                   
                                     
                                }
                                
                                
                                VStack(alignment: .leading){
                                    
                                    HStack(){
                                        Text ("Elenco (Dublagem)")
                                           
                                            .foregroundColor(.white)
                                            .fontWeight(.black)
                                            .font(.system(size: 24))
                                        
                                            
                                    }
                                   
                                    
                                    
                                   
                                        
                                    ScrollView(.horizontal, showsIndicators: false){
                                        HStack(){
                                     
                                            
                                            Image ("elenco1")
                                                .resizable()
                                                //.scaledToFill()
                                                .frame(width: 150, height: (150*1.34))
                                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                                .overlay(
                                                        RoundedRectangle(cornerRadius: 8)
                                                            .strokeBorder(Color.VERDE, lineWidth: 2) // cor e espessura da borda
                                                    )
                                            
                                            Image ("elenco2")
                                                .resizable()
                                                //.scaledToFill()
                                                .frame(width: 150, height: (150*1.34))
                                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                                .overlay(
                                                        RoundedRectangle(cornerRadius: 8)
                                                            .strokeBorder(Color.VERDE, lineWidth: 2) // cor e espessura da borda
                                                    )
                                            
                                            Image ("elenco3")
                                                .resizable()
                                                //.scaledToFill()
                                                .frame(width: 150, height: (150*1.34))
                                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                                .overlay(
                                                        RoundedRectangle(cornerRadius: 8)
                                                            .strokeBorder(Color.VERDE, lineWidth: 2) // cor e espessura da borda
                                                    )
                                            
                                            
                                            
                                                
                                                
                                        }
                                    }
                                }
                                .padding()
                                        
                                }
                                
                            }
                                }
                              
                                }
                            
                            
        
                                     
                                }
                                
                                
                            
                        }
                    }
    
        
    }
                  
        
    
            

#Preview {
    DetalhesFilmesView(filme: FilmModel(imgName: "filme16", title: "Os Serviços de Entrega da Kiki", synopsis: "Por ordem de sua mãe, Kiki parte para um aprendizado de um ano, acompanhada por seu gato preto. A um comando de sua vassoura mágica, ela vai parar na charmosa cidadezinha de Moreoastal. Infelizmente, os hotéis locais não aceitam bruxas e a polícia a flagra fazendo algumas travessuras.", direction: "Hayao Miyazaki", screenwriters: "Hayao Miyazaki, Jack Fletcher, John Semper", year: "1990", favorited: false, watched: false) )
    
}
