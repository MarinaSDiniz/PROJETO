import SwiftUI

struct TAREFAS: View {
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    
                    ForEach (vm.tasks, id: \.self) { k
                        in
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                            .frame(width: 300, height: 170)
                            .foregroundStyle(Color(k.bgColor))
                            .padding()
                            .overlay {
                                VStack {
                                    Text("\(k.tarefa)")
                                    Text(k.date)
                                    Text(k.selection)
                                }
                            }
                    }
                    
                }
                Spacer()
            }
        }
        .onAppear(){
            vm.fetch()
        }
    }
}
#Preview {
    TAREFAS()
}
