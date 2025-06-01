//
//  OnboardingView.swift
//  cine_file
//
//  Created by Ana Julia on 31/05/25.
//

import SwiftUI

struct OnboardingView: View{
    
    // Variável que indica em qual tabView o onboarding está (é um contador)
    @State private var pagAtual = 0
    
    var body: some View{
        
        // MARK: Stack global que inclui todo 
        VStack(spacing: 0){
            
            // MARK: View do SwiftUI que permite swipe da página guiado pelo page control (pontinhos indicadores)
            TabView(selection: $pagAtual){
                
                /// Cada uma dessas views vai ser uma tabView na tela (uma página arrastavel por meio do botão)
                OnboardingDetailView(nomeImg: "Aplicacao01", titulo: "Conheça o CineFilés", texto: "Só aqui você encontra a seleção dos melhores filmes de todos os tempos, resultado de uma curadoria altamente qualificada, feita pelos maiores especialistas da Apple Developer Academy.")
                    .tag(0) /// Define que essa view corresponde a página zero, ou seja, vai comparar se a flag pagAtual eh igual a 0 e, caso true, abre essa pagina
                
                OnboardingDetailView(nomeImg: "Aplicacao02", titulo: "Filé de listas", texto: "Encontre todos os filmes favoritos da maior mentoria que já existiu e monte suas próprias listas personalizadas. Lista de favoritos, lista de assistidos, listas, listas e mais listas...")
                    .tag(1) /// Define que essa view corresponde a página 1...
                
                OnboardingDetailView(nomeImg: "Aplicacao04", titulo: "Só pedrada de funcionalidades", texto: "Receba recomendações de filmes filés, personalize seu perfil e veja o que seus amigos estão assistindo. Quer um plus? Participe do bolão e adivinhe a qual mentor pertence cada sugestão de filme.")
                    .tag(2)
            }
            /// Remove os pontinhos padrão do SwiftUI (isso porquê eles não são estilizáveis e precisamos do padrão que definimos no protótipo)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            /// Esse gesture “come” o gesto de swipe, impedindo a troca padrão:
            .highPriorityGesture(DragGesture())
            /// Como removemos o controler padrão do SUI, precisamos setar a animação manualmente
            .animation(.easeInOut(duration: 0.4), value: pagAtual)
            
            // MARK: Stack que engloba os elementos da barra no final da tela
            HStack{
                
                // MARK: Stack só para os três pontinhos e suas especificações
                HStack(spacing: 15){
                    
                    // Um laço para gerar os 3 pontinhos
                    ForEach(0..<3, id: \.self){ index in
                        Circle()
                            .frame(width: 13) /// tamanho
                            .foregroundStyle(Color.VERDE) /// cor
                            .overlay(
                                                    RoundedRectangle(cornerRadius: 100)
                                                        .stroke(Color.black, lineWidth: 1)
                                                ) /// Bordinha
                            .opacity(index == pagAtual ? 1 : 0.25)
                            /// Essa opacidade funciona com base na identificação de quem é a página atual (apenas ela fica opaca, as demais transparentes)
                    }
                }
                .padding(.leading, 15)
                
                Spacer() /// Spacer para distanciar os pontinhos do botão
                
                // Botão de controle da página
                Button {
                    
                    /// Se a flag indicadora está entre 0 e 2, incrementa para ir para a próxima página
                    if pagAtual < 2
                    {
                        pagAtual += 1
                    }
                    /// Se a flag for 3, significa que todas as páginas do onboarding foram vistas, portanto chama a próxima view
                    else
                    {
                        // TODO: chamar a proxima View (homepage)
                        pagAtual = 0 ///(provisório p/ não travar a preview)
                    }
                }
                label: {
                    Image(systemName: "arrow.right.circle.fill")
                        .foregroundStyle(Color.VERDE)
                        .font(.system(size: 50))
                        .padding(-2)
                        .background(Color.black)
                        .clipShape(Circle())
                        
                }
            }
            .padding(.horizontal, 35)
        }
        .background(Color.AZUL) // Fundo
    }
}

#Preview {
    OnboardingView()
}
