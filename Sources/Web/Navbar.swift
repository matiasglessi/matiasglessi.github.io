//
//  Navbar.swift
//  
//
//  Created by Matias Glessi on 04/06/2022.
//

import Foundation
import Plot
import Publish

struct Navbar<Site: Website>: Component {
    var context: PublishingContext<Site>
    var mediaLinks: [MediaLink]

    init(context: PublishingContext<Site>, mediaLinks: [MediaLink] = []) {
        self.context = context
        self.mediaLinks = mediaLinks
    }
    
    var body: Component {
        Wrapper {
            List(mediaLinks) { item in
                Link(item.title, url: item.url)
                    .class(item.classValue)
            }.class("mediaLinks-list")
        }.class("navbar")
    }
}
