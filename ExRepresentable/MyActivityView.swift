//
//  MyActivityView.swift
//  ExRepresentable
//
//  Created by 김종권 on 2022/10/18.
//

import SwiftUI

struct MyActivityView: UIViewControllerRepresentable {
  var activityItems: [Any]
  var applicationActivities: [UIActivity]? = nil
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<MyActivityView>) -> UIActivityViewController {
    UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
  }
  
  func updateUIViewController(
    _ uiViewController: UIActivityViewController,
    context: UIViewControllerRepresentableContext<MyActivityView>
  ) {}
}
