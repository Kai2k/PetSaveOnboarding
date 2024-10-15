
import SwiftUI

struct OnBoardingBackgroundView: View {
  let backgroundPets = Pet.backgroundPets
  
    var body: some View {
      ZStack {
        ForEach(backgroundPets) { pet in
          pet.petImage
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .position(pet.position)
        }
      }
    }
}
