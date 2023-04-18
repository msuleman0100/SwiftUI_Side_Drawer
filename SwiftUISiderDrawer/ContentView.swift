//
//  ContentView.swift
//  SwiftUISiderDrawer
//
//  Created by Muhammad Suleman on 4/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isDrawerClosed = true
    
    var body: some View {
        ZStack {
            
            /// Your Side Drawer content goes here...
            /// you can make custom view of drawer and call it here...
            VStack(alignment: .leading, spacing: 10) {
                Text("Side drawer")
                    .font(.largeTitle)
                ForEach(1...10, id:\.self) { i in
                    Text("Item \(i)")
                        .font(.title3)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding()
            .background(Color.green)
                
            /// Your main content view goes here
            /// you can make custom view of main view and call it here...
            VStack {
                HStack {
                    Image(systemName: isDrawerClosed ? "line.horizontal.3":"xmark")
                        .font(.title)
                        .foregroundColor(.white)
                        .onTapGesture {
                            withAnimation {
                                isDrawerClosed.toggle()
                            }
                        }
                        .padding([.leading, .top])
                    Spacer()
                }
                Spacer()
                Text("Main Content🙂")
                    .font(.largeTitle)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.orange)
            .offset(x: isDrawerClosed ? 0 : UIScreen.main.bounds.width / 1.5)
            .animation(.easeInOut, value: isDrawerClosed)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
