

import SwiftUI

struct OnBoardingView: View {
  let onBoarding: OnBoardingModel
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 12, style: .circular)
        .fill(.white)
        .shadow(radius: 12)
        .padding(.horizontal, 20)
      VStack(alignment: .center) {
        VStack {
          Text(onBoarding.title)
            .foregroundColor(.rwDark)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            .padding(.horizontal, 10)
          
          Text(onBoarding.description)
            .foregroundColor(.rwDark)
            .multilineTextAlignment(.center)
            .padding([.top, .bottom], 10)
            .padding(.horizontal, 10)
          
          onBoarding.image
            .resizable()
            .frame(width: 140, height: 140, alignment: .center)
            .foregroundColor(.rwDark)
            .aspectRatio(contentMode: .fit)
        }
      }
    }
  }
}
