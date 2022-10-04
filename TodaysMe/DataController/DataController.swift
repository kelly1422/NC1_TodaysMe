//
//  DataController.swift
//  TodaysMe
//
//  Created by kelly on 2022/05/02.
//

import Foundation
import CoreData

class AvatarDataController: ObservableObject{
    
    //define
    let container = NSPersistentContainer(name: "AvatarModel")
    
    //init
    init(){
        container.loadPersistentStores{
            desc, error in
            if let error = error {
                print("FAILED TO LOAD DATA \(error.localizedDescription)")
            }
        }
    }
    
    //save
    func save(context: NSManagedObjectContext){
        do {
            try context.save()
            print("DATA SAVED")
        } catch {
            print("FAILED TO SAVE DATA")
        }
    }
    
    //CreateAccount
    func CreateAccount(newAvatar: newAvatar, context: NSManagedObjectContext){
        let avatar = Avatar(context: context)
        avatar.id = UUID()
        avatar.face = newAvatar.face
        avatar.hair = newAvatar.hair
        avatar.eyes = newAvatar.eyes
        avatar.mouth = newAvatar.mouth
        avatar.message = newAvatar.message
        avatar.date = newAvatar.date
        
        save(context: context)
    }

//    func DeleteAvatar(avatar: Avatar, context: NSManagedObjectContext){
//        context.delete(avatar)
//        do{
//            try context.save()
//        } catch {
//            print("FAILED TO DELETE ACCOUNT")
//        }
//
//    }
//
//    //LogOutcome (지출에 대한 기록 남기기)
//    func LogOutcome(account: Account, amount: Int64, context: NSManagedObjectContext){
//
//        let log = Log(context: context)
//
//        //계좌랑 로그 관계 맺기
//        log.account = account
//        //계좌 잔액 빼기
//        log.account?.balance -= amount
//
//        log.amount = amount
//        log.date = Date()
//        log.id = UUID()
//        log.isOutcome = true
//
//        save(context: context)
//
//    }
//
//    //LogIncome (수입에 대한 기록 남기기)
//    func LogIncome(account: Account, amount: Int64, context: NSManagedObjectContext){
//
//        let log = Log(context: context)
//
//        //로그랑 계좌 관계 맺어주기
//        log.account = account
//        //계좌 잔액 더하기
//        log.account?.balance += amount
//
//        log.amount = amount
//        log.date = Date()
//        log.id = UUID()
//        log.isOutcome = false
//
//        save(context: context)
//    }

}
