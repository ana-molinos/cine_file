//
//  FilmModel.swift
//  cine_file
//
//  Created by Ana Julia on 01/06/25.
//

import Foundation

// MARK: Classe contendo todos os dados que são disponibilizados pela mentoria em Recursos
struct FilmModel: Identifiable{
    
    // Identificador automatico do sistema para usar nos laços ForEach
    let id = UUID()
    
    // Infos do filme
    let imgName: String
    let title: String
    let synopsis: String
    let direction: String
    let screenwriters: String
    let year: String
    
    // Boleanos para controlar a exibição nas listas
    var favorited: Bool
    var watched: Bool
    
    var review: String = "blablablablablabla"
}
 
// MARK: Parte do código que substitui o DataModel
extension Array where Element == FilmModel {
    static func films() -> [FilmModel] { [
        FilmModel(imgName: "filme1", title: "Tudo em Todo o Lugar ao Mesmo Tempo", synopsis: "Uma imigrante chinesa de meia idade se envolve em uma aventura louca, onde só ela pode salvar o mundo explorando outros universos que se conectam com as vidas que ela poderia ter levado", direction: "Daniel Kwan, Daniel Scheinert", screenwriters: "Daniel Kwan, Daniel Scheinert", year: "2022", favorited: true, watched: false),
        FilmModel(imgName: "filme2", title: "Cisne negro", synopsis: "Uma esforçada bailarina luta para manter sua sanidade após obter o papel principal no Lago dos Cisnes de Tchaikovsky.", direction: "Darren Aronofsky", screenwriters: "Mark Heyman, Andres Heinz, John J. McLaughlin", year: "2010", favorited: true, watched: true),
        FilmModel(imgName: "filme3", title: "Barbie a princesa e a plebeia", synopsis: "Uma plebeia, moradora de um vilarejo, é muito parecida com a princesa do reino. Os destinos das duas se cruzam quando a princesa é sequestrada, e a moça humilde usa sua incrível semelhança com ela para tentar salvar das mãos do vilão.", direction: "William Lau", screenwriters: "Cliff Ruby, Elana Lesser, Ruth Handler", year: "2004", favorited: false, watched: true),
        FilmModel(imgName: "filme4", title: "Show de Truman", synopsis: "Truman Burbank é um pacato vendedor de seguros que leva uma vida simples com sua esposa Meryl Burbank. Porém, algumas coisas ao seu redor fazem com que ele passe a estranhar sua cidade, seus supostos amigos e até sua mulher. Após conhecer a misteriosa Lauren, ele fica intrigado e acaba descobrindo que toda sua vida foi monitorada por câmeras e transmitida em rede nacional.", direction: "Peter Weir", screenwriters: "Peter Weir, Andrew Niccol", year: "1998", favorited: false, watched: false),
        FilmModel(imgName: "filme5", title: "Spirit: O Corcel Indomável", synopsis: "Animação sobre a amizade entre um menino indígena e um cavalo indomável apaixonado por uma égua. Ambientada no Velho Oeste americano, mostra o impacto do processo civilizatório na vida dos três e também na amizade que construíram.", direction: "Kelly Asbury, Lorna Cook", screenwriters: "John Fusco", year: "2002", favorited: false, watched: false),
        FilmModel(imgName: "filme6", title: "Labirinto do Fauno", synopsis: "Em 1944, na Espanha, a jovem Ofélia e sua mãe doente chegam ao posto do novo marido de sua mãe, um sádico oficial do exército que está tentando reprimir uma guerrilheira. Enquanto explorava um labirinto antigo, Ofélia encontra o Pan fauno, que diz que a menina é uma lendária princesa perdida e que ela precisa completar três tarefas perigosas a fim de se tornar imortal.", direction: "Guillermo del Toro", screenwriters: "Guillermo del Toro", year: "2006", favorited: true, watched: false),
        FilmModel(imgName: "filme7", title: "O Predestinado", synopsis: "Um agente precisa viajar no tempo para impedir a ação de um criminoso responsável por um ataque que mata milhares de pessoas.", direction: "Michael Spierig, Peter Spierig", screenwriters: "Michael Spierig, Peter Spierig, Robert A Heinlein (autor da obra original)", year: "2015", favorited: false, watched: false),
        FilmModel(imgName: "filme8", title: "Gigantes de aço", synopsis: "Em um futuro próximo, as máquinas substituem os homens no ringue. As lutas de boxe acontecem entre robôs de alta tecnologia. Charlie, um ex-lutador frustrado, decide se juntar ao filho para construir um competidor imbatível.", direction: "Shawn Levy", screenwriters: "Dan Gilroy, Les Bohem, Jeremy Leven, John Gatins, Richard Matheson (autor da obra original)", year: "2011", favorited: true, watched: false),
        FilmModel(imgName: "filme9", title: "A vastidão da noite", synopsis: "Duas crianças procuram a fonte de uma misteriosa frequência que surgiu em sua cidade.", direction: "Andrew Patterson", screenwriters: "James Montague, Craig W. Sanger", year: "2019", favorited: false, watched: false),
        FilmModel(imgName: "filme10", title: "Parasita", synopsis: "Toda a família de Ki-taek está desempregada, vivendo em um porão sujo e apertado. Por obra do acaso, ele começa a dar aulas de inglês para uma garota de família rica. Fascinados com a vida luxuosa destas pessoas, pai, mãe e filhos bolam um plano para se infiltrar também na abastada família, um a um. No entanto, os segredos e mentiras necessários à ascensão social cobram o seu preço.", direction: "Bong Joon-ho", screenwriters: "Bong Joon-ho, Jin Won Han", year: "2019", favorited: false, watched: false),
        FilmModel(imgName: "filme11", title: "Passivonas", synopsis: "Duass alunas não populares do último ano do ensino médio criam um clube da luta para tentar impressionar e conquistar líderes de torcida.", direction: "Emma Seligman", screenwriters: "Emma Seligman, Rachel Sennott", year: "2023", favorited: false, watched: false),
        FilmModel(imgName: "filme12", title: "Turma da Mônica: Uma Aventura no Tempo", synopsis: "Franjinha está construindo uma máquina do tempo e precisa reunir moléculas dos quatro elementos: ar, água, fogo e terra. Mônica joga Sansão e, sem querer, acerta o aparelho, espalhando os elementos. Agora a turma precisa consertá-la.", direction: "Mauricio de Sousa", screenwriters: "Mauricio de Sousa, Flávio de Souza, Didi Oliveira, Emerson Bernardo de Abreu", year: "2007", favorited: false, watched: false),
        FilmModel(imgName: "filme13", title: "Amnésia (Memento)", synopsis: "Leonard está caçando o homem que estuprou e matou sua esposa. Ele tem dificuldades em encontrar o assassino pois sofre de uma forma intratável de perda de memória. Mesmo que ele possa lembrar detalhes da vida antes do acidente, Leonard não consegue lembrar o que aconteceu quinze minutos atrás, onde está indo ou a razão.", direction: "Christopher Nolan", screenwriters: "Christopher Nolan, Jonathan Nolan", year: "2001", favorited: false, watched: false),
        FilmModel(imgName: "filme14", title: "Os Excêntricos Tenenbaums", synopsis: "Royal e sua esposa Etheline tiveram três filhos muito diferentes entre si, mas igualmente bem-sucedidos. Quando Etheline resolve se casar com outro, o irresponsável e excêntrico Royal resolve lutar por seu amor reunindo toda a família.", direction: "Wes Anderson", screenwriters: "Wes Anderson, Owen Wilson", year: "2002", favorited: false, watched: false),
        FilmModel(imgName: "filme15", title: "La la Land", synopsis: "O pianista Sebastian conhece a atriz Mia, e os dois se apaixonam perdidamente. Em busca de oportunidades para suas carreiras na competitiva Los Angeles, os jovens tentam fazer o relacionamento amoroso dar certo, enquanto perseguem fama e sucesso.", direction: "Damien Chazelle", screenwriters: "Damien Chazelle", year: "2017", favorited: false, watched: false),
        FilmModel(imgName: "filme16", title: "Os Serviços de Entrega da Kiki", synopsis: "Por ordem de sua mãe, Kiki parte para um aprendizado de um ano, acompanhada por seu gato preto. A um comando de sua vassoura mágica, ela vai parar na charmosa cidadezinha de Moreoastal. Infelizmente, os hotéis locais não aceitam bruxas e a polícia a flagra fazendo algumas travessuras.", direction: "Hayao Miyazaki", screenwriters: "Hayao Miyazaki, Jack Fletcher, John Semper", year: "1990", favorited: false, watched: false),
        FilmModel(imgName: "filme17", title: "O Feitiço de Áquila", synopsis: "O ladrão Gaston escapa da masmorra medieval de Aquila através da latrina. Os soldados estão prestes a matá-lo quando Navarra o salva. Navarra, viajando com seu falcão animado, planeja matar o bispo de Áquila com a ajuda de Gaston.", direction: "Richard Donner", screenwriters: "Michael Thomas, Tom Mankiewicz", year: "1985", favorited: false, watched: false),
        FilmModel(imgName: "filme18", title: "Os Incríveis", synopsis: "Depois do governo banir o uso de superpoderes, o maior herói do planeta, o Sr. Incrível, vive de forma pacata com sua família. Apesar de estar feliz com a vida doméstica, o Sr. Incrível ainda sente falta dos tempos em que viveu como super-herói, e sua grande chance de entrar em ação novamente surge quando um velho inimigo volta a atacar. Só que agora ele precisa contar com a ajuda de toda a família para vencer o vilão.", direction: "Brad Bird", screenwriters: "Brad Bird", year: "2004", favorited: false, watched: false),
    ]
    }
}
