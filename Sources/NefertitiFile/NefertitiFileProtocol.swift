//
//  NefertitiFileProtocol.swift
//  NefertitiFile
//
//  Created by Dmytro Skorokhod on 29/12/2023.
//

import Foundation

public protocol NefertitiFileProtocol: Codable, Hashable, Comparable {
    var id: UUID { get }
    var title: String { get set }
    var documentData: Data? { get set }
    var documentDataUrl: URL? { get }
    var thumbnailData: Data? { get set }
    var thumbnailDataUrl: URL? { get }
    var createdDate: Date { get set }
    var modifiedDate: Date { get set }
    var fileType: NefertitiFileType { get set }
    
    func info() -> String?
    func clearData()
}