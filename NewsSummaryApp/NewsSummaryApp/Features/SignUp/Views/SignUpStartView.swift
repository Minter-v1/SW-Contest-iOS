//
//  SignUpStartView.swift
//  NewsSummaryApp
//
//  Created by 이민지 on 4/28/25.
//

import SwiftUI


//회원가입 시작 화면 뷰
struct SignUpStartView: View {
//    @ObservedObject var viewMode: SignUpViewModel
    var body: some View {
        VStack(spacing: 32){ //Vertical 요소간 간격 32pt
            Spacer() //위쪽에 빈 공간을 생성해서 아래로 밀어버림
            
            
            Text("개인회원 가입")
                .font(Font.custom("Roboto", size: 22))
                .multilineTextAlignment(.center)
                .foregroundStyle(.black)//글자색
                .frame(width: 126, height: 22, alignment: .center)
            
            //두 뷰간 간격이 8pt러 마주기 -> Spacer?
    
            
            Text("뉴스를 쉽고, 간결하고, 중립적으로!")
                .font(Font.custom("Roboto", size: 16)) //??텍스트 사이즈도 중요..
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color(red: 0.66, green: 0.66, blue: 0.66))
                .frame(width:228, height: 21)
            
            
            //버튼들 Vertical Stack --> 생성했더니 사악 올라감
            VStack(spacing: 8) {
                SocialLoginButton(imageName: "logo.naver", text: "시발아")
                
            }
        }
    }
}




//로그인 버튼 뷰(컴포넌트)
struct SocialLoginButton: View {
    var imageName: String //버튼에 들어갈 아이콘 이미지 이름 -> asset에 보관?
    var text: String // 버튼 내부 텍스트
    
    var body: some View {
        //아이콘 -> 텍스트 (Horizontal Stack)
        HStack {
            //이미지 띄워야지
           Rectangle()
                .foregroundColor(.clear) //??
                .frame(width: 24, height: 24)
                .background (//??얘는 뭐지
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill) //??뭐시여
                        .frame(width: 24, height: 24)
                        .clipped() //??닌 또 뭐야
                    
                )
            
            Spacer().frame(width: 48) //아이콘과 텍스트 사이 간격 띄우기
            
            Text(text)
                .font(Font.custom("Siemreap", size: 12)) //본문 스타일 폰트
                .multilineTextAlignment(.center)//??무슨정렬일까 싶음
                .foregroundStyle(.black)
            
            Spacer() //오른쪽 공간 밀어주기
            
        }
        .padding(.leading, 114)
        .padding(.trailing, 166)
        .padding(.vertical, 7) // top,bottom 동시에 지정하기
        .frame(width: 338, height: 44)
        .background(.white) //배경 하얀색
        .cornerRadius(40) // 네 군데 모서리 radius 설정
        .overlay(//??얘부터 진짜 뭐지
            RoundedRectangle(cornerRadius: 40)
                .inset(by: -0.15)
                .stroke(.black, lineWidth: 0.3) //겉에 선?
        )
        
    }
}

#Preview {
    SignUpStartView()
}
