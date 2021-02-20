//
//  ContentView.swift
//  Shared
//
//  Created by Alex on 20.02.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = MainViewModel()

    var body: some View {
        VStack {

            List(viewModel.someList, id: \.name) { someElement in
                HStack {
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                        Text(someElement.name)
                    })
                }
            }

            Button(action: {
                viewModel.clickOnButton()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
