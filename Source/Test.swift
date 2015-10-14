import Foundation

struct Test {
    static func isRunning() -> Bool {
        let enviroment = NSProcessInfo.processInfo().environment
        let serviceName = enviroment["XPC_SERVICE_NAME"]
        let injectBundle = enviroment["XCInjectBundle"]
        let isRunningOnTravis = (enviroment["TRAVIS"] != nil)

        var isRunning = false

        if isRunningOnTravis {
            isRunning = true
        }

        if !isRunning {
            if let serviceName = serviceName {
                let serviceXCTest = (serviceName as NSString).pathExtension == "xctest"
                isRunning = (serviceXCTest || serviceName == "0")

                if !isRunning {
                    if let injectBundle = injectBundle {
                        let injectBudleXCTest = (serviceName as NSString).pathExtension == "xctest"
                        isRunning = (injectBudleXCTest || injectBundle == "0")
                    }
                }
            }
        }

        return isRunning
    }
}
