//
//  ContentView.swift
//  ExRepresentable
//
//  Created by 김종권 on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
  @State private var isActivityViewOpend = false
  @State private var isTableViewOpend = false
  
  let uiImage = UIImage(systemName: "circle")
  
  var body: some View {
    VStack {
      Button {
        isActivityViewOpend = true
      } label: {
        Text("Open Activity")
      }
      .sheet(isPresented: $isActivityViewOpend, onDismiss: {
          print("Dismiss")
      }, content: {
        MyActivityView(activityItems: [uiImage])
      })
      Divider()
      Button {
        isTableViewOpend = true
      } label: {
        Text("Open MyTableView")
      }
      MyTableView(isPresented: $isTableViewOpend)
    }
    .background(.white)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
