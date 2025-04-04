import SwiftUI

struct HOME: View {
    var body: some View {
        ScrollView(.horizontal){
            
            ZStack{
                Color.black
                HStack{
                    // primeiro quadrado
                    ZStack{
                        Color.yelow
                            .ignoresSafeArea()
                            .frame(width: 390, height: .infinity)
                            
                        
                        VStack{
                            //imagem do topo
                                Image(systemName: "sun.max.fill")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                            .padding(.init(top: -1, leading: -120, bottom: 0, trailing: 0))
                
                            //tarefas
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(width: 250, height: 120)
                                .foregroundStyle(.lightyellow)
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(width: 250, height: 120)
                                .foregroundStyle(.lightyellow)
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(width: 250, height: 120)
                                .foregroundStyle(.lightyellow)
                        }
                    }
                    //segundo quadrado
                    
                    ZStack{
                        
                        Color.lightblue
                            .ignoresSafeArea()
                            .frame(width: 390, height: .infinity)
                        VStack{
                            //imagem
                            
                        
                                Image(systemName: "cloud.sun.fill")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                            .padding(.init(top: -110, leading: -120, bottom: 0, trailing: 0))
                            
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(width: 250, height: 120)
                                .foregroundStyle(.mediumblue)
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(width: 250, height: 120)
                                .foregroundStyle(.mediumblue)
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(width: 250, height: 120)
                                .foregroundStyle(.mediumblue)
                        }
                    }
                    //terceiro quadrado
                    
                    ZStack{
                        Color.darkblue
                            .ignoresSafeArea()
                            .frame(width: 390, height: .infinity)
                        
                        VStack{
                            //imagem topo
                                
                                    Image(systemName: "moon.stars.fill")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                .padding(.init(top: -110, leading: -120, bottom: 0, trailing: 0))
                                
                            
                            //
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(width: 250, height: 120)
                                .foregroundStyle(.babyblue)
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(width: 250, height: 120)
                                .foregroundStyle(.babyblue)
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .frame(width: 250, height: 120)
                                .foregroundStyle(.babyblue)
                        }
                    }
                    
                }
                .ignoresSafeArea()
            }
        
        }
        .scrollTargetBehavior(.viewAligned)
        .ignoresSafeArea()
    }
}
#Preview {
    HOME()
}
