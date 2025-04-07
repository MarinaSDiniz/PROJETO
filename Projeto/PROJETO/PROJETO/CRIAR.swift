//
//  CRIAR.swift
//  PROJETO
//
//  Created by Turma01-19 on 07/04/25.
//

import SwiftUI

struct CRIAR: View {
    
    @State private var tarefa = ""
    @State private var date = Date.now
    @State private var selection = "Manha"
    @State private var corSelecionada = ""
    let colors = ["Manha", "Tarde", "Noite"]
    let cores = ["afternoon", "darkblue", "night"]
    @StateObject var vm = ViewModel()
    @State var formatter = DateFormatter()
    @State var irParaNavegacao = false

    
    var body: some View {
        NavigationView{
            ZStack{
                Form{
                    
                    VStack{
                        
                        //data
                        DatePicker("Data da tarefa",
                                   selection: $date)
                        .datePickerStyle(CompactDatePickerStyle())
                        .frame(maxHeight: 400)
                    }
                    //cor da tarefa
                    Picker("Cor", selection: $corSelecionada) {
                                    ForEach(cores, id: \.self) {
                                        Text($0)
                                    }
                                }
                                .pickerStyle(.menu)
                    
                    //periodo
                    Picker("Periodo do dia", selection: $selection) {
                                    ForEach(colors, id: \.self) {
                                        Text($0)
                                    }
                                }
                                .pickerStyle(.menu)
                    
                    
                    // texto
                    TextField("Insira a tarefa", text: $tarefa, axis: .vertical)
                        .padding()
                    
                    
                    
                    // botao para criar
                        Button("criar"){
                            let formatter = DateFormatter()
                            formatter.dateStyle = .short
                            vm.post(DadosTarefa(date: formatter.string(from: date), bgColor: corSelecionada, selection: selection, tarefa: tarefa))
                            irParaNavegacao = true
                        }
//                        .navigationDestination(isPresented: $irParaNavegacao, destination: TAREFAS())
                            .padding()
                            .foregroundStyle(.black)
                            .background(Color.darkblue)
                            .cornerRadius(10)
                    
                }
                .navigationTitle("Criar Tarefa")
                
            }
                }
            }
        }

#Preview {
    CRIAR()
}
