//
//  ListView.swift
//  SPFirstApp
//
//  Created by Student on 9/2/20.
//  Copyright © 2020 Student. All rights reserved.
//

import SwiftUI

struct ListView: View
{
    //var NextView: ContentView
    var body: some View
    {
        NavigationView
        {
            List
            {
                Text("First Thing")
                Text("Second Thing")
                NavigationLink(destination:
                    ContentView())
                {
                    Text("This is a view")
                }
            }
            .navigationBarTitle(Text("This is the Title")
            )
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
