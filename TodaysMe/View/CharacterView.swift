//
//  CharacterView.swift
//  TodaysMe
//
//  Created by kelly on 2022/04/28.
//

import SwiftUI

struct CharacterView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    //만들어진 최신순으로 아바타 다 가지고 오기
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var avatarList: FetchedResults<Avatar>
    
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 50...(max - 50))
    }
    
    func randomDelay() -> Double {
        return Double.random(in: 0.02...1.5)
    }
    
    func randomDuration() -> Double {
        return Double.random(in: 3...4)
    }
    
    @State var showModal = false
    @State private var isAnimating: Bool = false
    @State var selectedSeason: Season = Season.spring
    
    var selectedSeasonName: String {
        switch selectedSeason {
        case .spring:
            return "spring"
        case .summer:
            return "summer"
        case .fall:
            return "fall"
        case .winter:
            return "winter"
        }
    }
    let musicplayer = SoundPlayer()
    @State var playbool = false
    
    var body: some View {
        ZStack{
            Image(selectedSeasonName)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                
                HStack{
                    Spacer()
                    Button {
                        self.playbool.toggle()
                        if playbool {
                            musicplayer.musicPlayer()
                        } else {
                            musicplayer.stopAllMusic()
                        }
                    } label: {
                        Image(systemName: playbool ? "speaker" : "speaker.slash")
                            .foregroundColor(.black)
                            .background{
                                RoundedRectangle(cornerRadius: 4)
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(.white.opacity(0.7))
                            }
                    }

                    SelectSeasonView(selectedSeason: self.$selectedSeason)
                        .padding(.horizontal ,15)
                }

                ScrollView{
                    ForEach(avatarList, id: \.self){
                        avatar in
                        
                        AvartarFace(date: avatar.date! ,face: avatar.face!, hair: avatar.hair!, eyes: avatar.eyes!, mouth: avatar.mouth!, message: avatar.message!, season: self.selectedSeasonName)
                            .position(x: randomCoordinate(max: UIScreen.main.bounds.width), y: 50)
                            .animation(Animation.easeInOut(duration: randomDuration()).repeatForever().delay(randomDelay()), value: isAnimating)
                            .onAppear {
                                isAnimating = true
                            }
                    }
                }
            }
            VStack{
//                GroupBox {
//                    DisclosureGroup("계절") {
//                        Button {
//
//                        } label: {
//                            Text("Item 4")
//                        }
//
//                    }
//                }
//                .font(.custom("Goyang", size: 20))
//                .frame(width: 100, height: 10)
//                .accentColor(.black)
                
                Spacer()
                Button {
                    showModal.toggle()
                    isAnimating = false
                } label: {
                    Text("아바타 만들기")
                        .font(.custom("Goyang", size: 20))
                        .foregroundColor(.black)
                        .background {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.white.opacity(0.7))
                                .frame(width: 170, height: 45)
                            
                        }
                }
                .sheet(isPresented: $showModal) {
                    AddAvatarView1(showModal: $showModal)
                }
            }
            .padding(.top, 30)
        }
    }
}

struct AvartarFace: View {
    let date: Date
    let face: String
    let hair: String
    let eyes: String
    let mouth: String
    let message: String
    let season: String
    @State var shown = false
    
    var body: some View {
        ZStack{
            Image(face)
                .resizable()
                .shadow(color: .black, radius: 10, x: 3, y: 3)
            Image(hair)
                .resizable()
            Image(eyes)
                .resizable()
            Image(mouth)
                .resizable()
        }
        .padding(5)
        .frame(width: 100, height: 100, alignment: .center)
        .onTapGesture {
            shown.toggle()
        }
        .fullScreenCover(isPresented: $shown) {
            AvatarDetailView(date: date, face: face, hair: hair, eyes: eyes, mouth: mouth, message: message, season: season)
        }
    }
}

//struct CharacterView_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterView()
//    }
//}
