//
//  RNBOEventHandler.swift
//  SwiftRNBO_Example_multiplatfrom_SwiftUI
//
//  Created by Eldar Sadykov on 16.11.2023.
//

import Foundation

class RNBOEventHandler: NSObject, RNBOEventHandlerProtocol {
    var rnbo: RNBOContext?

    func handle(_ event: RNBOParameterEvent) {
        if let rnbo = rnbo {
            DispatchQueue.main.async {
                rnbo.parameters[event.index].value = event.value
            }

            let p = rnbo.parameters[event.index]
            print("\(p.displayName): \(p.value)")
        }
    }

    func handle(_ event: RNBOMidiEvent) {
        // TODO:
    }

    func handle(_ event: RNBOMessageEvent) {
        // TODO:
    }

    func handle(_ event: RNBOPresetEvent) {
        // TODO:
    }

    func handle(_ event: RNBOTempoEvent) {
        // TODO:
    }

    func handle(_ event: RNBOTransportEvent) {
        // TODO:
    }

    func handle(_ event: RNBOBeatTimeEvent) {
        // TODO:
    }

    func handle(_ event: RNBOTimeSignatureEvent) {
        // TODO:
    }

    func handle(_ event: RNBOStartupEvent) {
        // TODO:
    }
}
