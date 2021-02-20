//
//  MainViewModel.swift
//  MvvmTest
//
//  Created by Alex on 20.02.2021.
//

import Foundation

class MainViewModel : ObservableObject{

    @Published var someList :[SomeClass] = []
    
    init() {
        fetchSome()
    }
   
    func clickOnButton(){
        let newTestEl :SomeClass = SomeClass()
        newTestEl.name = "new test"
        someList.append(newTestEl)
    }
    
    func fetchSome(){
        let test1 : SomeClass = SomeClass()
        test1.name = "test1"
        someList.append(test1)
    }
    
}
