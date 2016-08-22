//
//  MockData.swift
//  GenericsDemo
//
//  Created by Jon Friskics on 8/19/16.
//  Copyright © 2016 Code School. All rights reserved.
//

import Foundation

enum Path: String {
    case ruby = "Ruby"
    case ios = "iOS"
    case javascript = "JavaScript"
}

struct Course {
    var title: String
    var path: Path
    var videos: [Int:CourseVideo]
}

struct CourseVideo {
    var title: String
    var lengthInSeconds: Int
}

struct ScreencastVideo {
    var title: String
    var videoId: String
    var lengthInSeconds: Int
    var path: Path
}

struct MockData {
    
    static let courses = [
        Course(title: "App Evolution With Swift", path: .ios, videos: [0: CourseVideo(title: "Introduction", lengthInSeconds: 355), 1: CourseVideo(title: "More About Swift", lengthInSeconds: 601)]),
        Course(title: "Powering Up With React", path: .javascript, videos: [0: CourseVideo(title: "Thinking in Components", lengthInSeconds: 532), 1: CourseVideo(title: "What is JSX?", lengthInSeconds: 340)])
    ]
    
    static let screencastVideos = [
        ScreencastVideo(title: "Build a Store iOS App With Swift", videoId: "10ba30b4", lengthInSeconds: 5020, path: .ios),
        ScreencastVideo(title: "Setting Up A React Build System", videoId: "51b9ffe", lengthInSeconds: 3150, path: .javascript)
    ]
    
}
