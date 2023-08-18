//
//  PlanPageView.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/08/07.
//

import SwiftUI

struct PlanPageView: View {
    private var plans = PlanAPI.getPlans()

    var body: some View {
        VStack(alignment: .leading, spacing: 1)
        {
            VStack(alignment: .leading){
                Text("PUZZLE")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                Text("오늘도 열심히")
                    .font(.system(size: 22))
                Text("조각들을 모아볼까요?")
                    .font(.system(size: 22))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 0, leading: 24, bottom: 16, trailing: 0))
            planOfTodo
            //PlanCollectionView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.bgNormal)
    }
    var planOfTodo: some View{
        ForEach(plans) { plan in
            ZStack(){
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 342, height: 82)
                    .background(.white)
                    .cornerRadius(16)
                    .offset(x: 0, y: 0)
                HStack(){
                    Text("계획이 100%가 되면 버튼 내부에 있던 퍼즐이 밖으로 짠")
                        .font(.system(size: 16))
                        .frame(width: 200)
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                    Divider()
                        .frame(height: 82)
                    CircularProgressView(progressGauge: plan.progressGauge)
                        .padding(EdgeInsets(top: 12, leading: 20, bottom: 13, trailing: 26))
                }
            }
            .padding(EdgeInsets(top: 0, leading: 24, bottom: 16, trailing: 0))
        }
    }
}

struct PlanPageView_Previews: PreviewProvider {
    static var previews: some View {
        PlanPageView()
    }
}
