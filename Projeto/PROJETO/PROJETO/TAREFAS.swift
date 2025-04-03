import SwiftUI

struct TAREFAS: View {
    var body: some View {
        ZStack{
            VStack{
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .frame(width: 300, height: 170)
                    .foregroundStyle(.pink)
                    .padding()
                
                //barra de progresso
                
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .frame(width: 300, height: 170)
                    .foregroundStyle(.pink)
                    .padding()
                
                //barra de progresso

                
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .frame(width: 300, height: 170)
                    .foregroundStyle(.pink)
                    .padding()
                
                //barra de progresso

                
            }
            Spacer()
        }
    }
}
#Preview {
    TAREFAS()
}
