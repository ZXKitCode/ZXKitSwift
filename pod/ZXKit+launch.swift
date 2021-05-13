//
//  ZXKit+launch.swift
//  ZXKit
//
//  Created by Damon on 2021/4/25.
//

import Foundation
@_exported import ZXKitCore

#if canImport(ZXKitLogger)
import ZXKitLogger
#endif
#if canImport(ZXKitFPS)
import ZXKitFPS
#endif
#if canImport(HDPingTools)
import HDPingTools
#endif
#if canImport(ZXFileBrowser)
import ZXFileBrowser
#endif

public extension ZXKit {
    static func registPlugin() {
        #if canImport(ZXKitLogger)
        ZXKitLogger.registZXKit()
        #endif
        #if canImport(ZXKitFPS)
        ZXKitFPS().registZXKitPlugin()
        #endif
        #if canImport(HDPingTools)
        HDPingTools(hostName: nil).registZXKitPlugin()
        #endif
        #if canImport(ZXFileBrowser)
        ZXKit.regist(plugin: ZXFileBrowser.shared())
        #endif
    }
}
