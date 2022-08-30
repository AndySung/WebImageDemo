//
//  WebImageExample.swift
//  WebImageDemo
//
//  Created by Andy on 2022/8/29.
//

import SwiftUI
import SDWebImageSwiftUI

struct WebImageExample: View {
    let url: URL?

    var body: some View {
        WebImage(url: url)
            .placeholder { Color.gray }
            .resizable()
            .onSuccess(perform: { _, _, _ in
                print("success")
                SDWebImageManager.shared.imageCache.clear(with: .all, completion: nil)
            })
            .onFailure(perform: { _ in
                print("failure")
            })
            .scaledToFill()
            .frame(height:600)
            .clipped()
    }
}
