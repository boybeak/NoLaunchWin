// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(macOS 10.15, *)
public struct NoLaunchWinView : View {
    
    public init() {}
    
    public var body: some View {
        ZStack {
        }
        .frame(width: 0, height: 0)
        .onAppear {
            if let window = NSApp.windows.first {
                window.setFrameOrigin(NSPoint(x: Int.max, y: Int.max))
                window.setFrame(.zero, display: true)
                window.isOpaque = false
                window.backgroundColor = .clear
                window.ignoresMouseEvents = true
                window.hasShadow = false
                window.level = .normal
                window.setAccessibilityFocused(false)

                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    // Do not close to soon
                    window.close()
                }
            }
        }
    }
}
