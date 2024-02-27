import Foundation;

/**
 * My program calculates how many logs can fit on a truck.
 *
 * @author  Kent Gatera
 * @version 1.0
 * @since   2024-Feb-27
 */

// Defining the error cases.
enum errorCases: Error {
      case invalidNumeral
}

func EinsteinInput()throws -> Double {
      // Input prompt.
      print("What is the mass of the object (kg)?: ", terminator: "")
      if let massAsStr = readLine(), let massAsInput:Double = Double(massAsStr), massAsInput > 0 {
        // Input passes, return the input value
        return massAsInput
    } else {
        // Raises "errorCases.invalidNumerals"
        throw errorCases.invalidNumeral
    }
}

do {
    // Initializing variables and constants.
    let massAsDouble = try EinsteinInput()
    let speedOfLight: Double = 299792458
    var energyAsDouble: Double
    // Calculating the energy.
    energyAsDouble = massAsDouble * pow(speedOfLight, 2)
    // Printing the energy.
    print("The object contains \(energyAsDouble) J.")

} catch {
      // Instructions for catch case.
    print("Please enter a valid numeral width > 0")
}