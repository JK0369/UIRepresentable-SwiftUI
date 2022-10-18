//
//  MyTableView.swift
//  ExRepresentable
//
//  Created by 김종권 on 2022/10/18.
//
import SwiftUI

struct MyTableView: UIViewRepresentable {
  // MARK: Types
  class Coordinator: NSObject, UITableViewDelegate, UITableViewDataSource {
    private let sampleData = (0...20).map(String.init)
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
      cell.textLabel?.text = sampleData[indexPath.row]
      cell.textLabel?.textColor = .black
      cell.backgroundColor = .white
      return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      sampleData.count
    }
  }
  
  // MARK: Properties
  @Binding var isPresented: Bool
  
  // MARK: Methods
  func makeUIView(context: Context) -> UITableView {
    UITableView()
  }
  func updateUIView(_ uiView: UITableView, context: Context) {
    guard isPresented else { return }
    uiView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    uiView.delegate = context.coordinator
    uiView.dataSource = context.coordinator
  }
  func makeCoordinator() -> Coordinator {
    Coordinator()
  }
}
