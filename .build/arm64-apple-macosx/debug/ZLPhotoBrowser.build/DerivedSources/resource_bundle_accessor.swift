import class Foundation.Bundle

extension Foundation.Bundle {
    static var module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("ZLPhotoBrowser_ZLPhotoBrowser.bundle").path
        let buildPath = "/Users/irobot/Work/share/forks/ZLPhotoBrowser/.build/arm64-apple-macosx/debug/ZLPhotoBrowser_ZLPhotoBrowser.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}