//
//  ContentView.swift
//  WebImageDemo
//
//  Created by Andy on 2022/8/29.
//

import SwiftUI
private let url = URL(string: "https://github.com/xiaoyouxinqing/PostDemo/raw/master/PostDemo/Resources/006PdkDoly8ffywe2fq39j304g04gwed.jpg")!
struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    SimpleExample(url: url)
                } label: {
                    Text("Simple image example")
                }
                NavigationLink {
                    WebImageExample(url: url)
                } label: {
                    Text("Web image example")
                }

            }
        }.listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
