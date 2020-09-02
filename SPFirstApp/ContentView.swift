//
//  ContentView.swift
//  SPFirstApp
//
//  Created by Student on 9/2/20.
//  Copyright © 2020 Student. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    @EnvironmentObject var data: UserData
    
    var body: some View
    {
        VStack
        {
            Text("My First Program")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(10.0)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .shadow(radius: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            Button(action:
            {
                self.data.counter += 1
                if self.data.counter > 25
                {
                    self.data.counter = 0
                }
            })
            {
                Text("Counter = " + String(self.data.counter))
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            .padding(10.0)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
            .environmentObject(UserData())
    }
}
