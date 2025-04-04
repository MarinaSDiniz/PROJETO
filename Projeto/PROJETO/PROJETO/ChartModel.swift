//
//  Model.swift
//  Projeto
//
//  Created by Yago on 04/04/25.
//

import Foundation
import SwiftUI
import Charts

struct Tarefa: Identifiable {
    let id = UUID()
    let nome: String
    let tipo: String
}

struct Tipos: Identifiable {
    let id = UUID()
    let tipo: String
    var porcentagem: Int
    let cor: Color
}


struct StatusChart: View{
    
    @State var tarefas: [Tarefa]
    @State private var tipos: [Tipos] = []
    
    @State var width: CGFloat //= 300
    @State var height: CGFloat //= 300
    
    
    var body: some View{
        
        VStack {
        

            Chart(tipos) { tipo in
                SectorMark(
                    angle: .value(
                        Text(verbatim: tipo.tipo),
                        tipo.porcentagem
                    ),
                    innerRadius: .ratio(0.45),
                    angularInset: 5
                    
                )
                .foregroundStyle(tipo.cor)
                .shadow(color: .gray, radius: 1, x: 5, y: 7)
                .cornerRadius(100)
                
                
            }.frame(width: width,height: height)
                .shadow(radius: 10)
                .onAppear(perform: {
                    
                tipos = [
                    .init(tipo: "Fazer", porcentagem: tarefas.filter { $0.tipo == "Fazer" }.count, cor: Color.corDE91EE),
                    .init(tipo: "Fazendo", porcentagem: tarefas.filter { $0.tipo == "Fazendo" }.count, cor: Color.corA96EFF),
                    .init(tipo: "Feito", porcentagem: tarefas.filter { $0.tipo == "Feito" }.count, cor: Color.cor6F49A0),
                ]})

        
        }
        .padding(20)
        
    }
    
}



//Text(Date.now.formatted(date: .numeric, time: .omitted))

#Preview {
    
   StatusChart(tarefas: [.init(nome: "At1", tipo: "Fazer"),
                         .init(nome: "At2", tipo: "Fazendo"),
                         .init(nome: "At3", tipo: "Feito"),
                         .init(nome: "At3", tipo: "Feito"),
                         .init(nome: "At2", tipo: "Fazendo")], width: 300, height: 300)
}

//https://www.appcoda.com/swiftui-chart-ios17/
//https://useyourloaf.com/blog/swiftui-pie-charts/
//https://swdevnotes.com/swift/2023/create-a-pie-or-donut-chart-with-swiftui-charts-in-ios-17/
//https://augmentedcode.io/2023/10/30/interactive-pie-chart-in-swiftui/
