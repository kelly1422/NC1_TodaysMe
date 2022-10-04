//
//  SoundPlayer.swift
//  TodaysMe
//
//  Created by kelly on 2022/05/06.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {

    let music_data=NSDataAsset(name: "backsound")!.data
    var music_player:AVAudioPlayer!

    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)
            music_player.numberOfLoops = 10
            music_player.play()
        }catch{
            print("music play fail")
        }

    }

    func stopAllMusic (){
        music_player?.stop()
    }
}
