//
//  ContentView.swift
//  PROJETO
//
//  Created by Turma01-19 on 03/04/25.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var selectedIndex = 0
    @State var presented = false
    
    let icons = [
        "house",
        "medal",
        "plus",
        "cube.box",
        "gear"
        ]
    var body: some View {
        VStack{
            ZStack{
                Spacer().fullScreenCover(isPresented: $presented, content: {
                    Button(action: {
                        presented.toggle()
                    }, label: {
                        Text("Close")
                            .frame(width: 200, height: 50)
                            .background(Color.pink)
                            .cornerRadius(12)
                    })
                })
                switch selectedIndex {
                case 0:
                    NavigationView {
                        VStack{
                            HOME()
                        }
                        .navigationTitle("Home")
                    }
                case 1:
                    NavigationView {
                        VStack{
                            Text("segunda")
                        }
                        .navigationTitle("Conquistas")
                    }
                case 3:
                    NavigationView {
                        VStack{
                            Text("terceira")
                        }
                        .navigationTitle("Criar")
                    }
                case 4:
                    NavigationView {
                        VStack{
                            Text("quarta")
                        }
                        .navigationTitle("Tarefas")
                    }
                default:
                    NavigationView {
                        VStack{
                            Text("config")
                        }
                        .navigationTitle("Configuracoes")
                    }
                }
            }
           
            
            //Divider()
            HStack{
                ForEach(0..<5, id: \.self){
                    number in
                    Spacer()
                    Button(action: {
                        if number == 2 {
                            presented.toggle()
                        } else {
                            self.selectedIndex = number
                        }
                    }, label: {
                        if number == 2 {
                            Image(systemName: icons[number])
                                .font(.system(size: 25, weight: .regular, design: .default))
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60)
                                .background(Color.purple)
                                .cornerRadius(50)
                                .offset(x: 0, y: -10)
                        } else {
                            Image(systemName: icons[number])
                                .font(.system(size: 25, weight: .regular, design: .default))
                                .foregroundColor(selectedIndex == number ? .black : Color(UIColor.lightGray))
                        }
                    })
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
