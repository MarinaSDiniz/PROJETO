import SwiftUI

struct HOME: View {
    var body: some View {
        ZStack{
            VStack{
                
                //imagens dentro do retangulo
                
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .frame(width: 300, height: 170)
                    .foregroundStyle(.yelow)
                    .padding()
                
                //tarefas dentro dos retangulos
                
                //imagens dentro do retangulo
                
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .frame(width: 300, height: 170)
                    .foregroundStyle(.lightblue)
                    .padding()
                
                //tarefas dentro dos retangulos

                //imagens dentro do retangulo
                
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .frame(width: 300, height: 170)
                    .foregroundStyle(.darkblue)
                    .padding()
                
                //tarefas dentro dos retangulos
                
            }
            Spacer()
        }
    }
}
#Preview {
    HOME()
}
