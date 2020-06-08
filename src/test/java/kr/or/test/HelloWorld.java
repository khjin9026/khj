package kr.or.test;

import java.util.Scanner;

class Tire {
	public void run() { //메서드=함수=function()
		System.out.println("일반 타이어가 굴러감");
	}
}
class SnowTire extends Tire { //extends 부모 = 부모에 상속되어 있음
	public void run() {
		System.out.println("스노우 타이어가 굴러감");
	}
}
public class HelloWorld {

	public static void main(String[] args) {
		//SnowTire클래스형 변수 snowTire 생성
		//new 키워드로 SnowTire() 매서드를 이용해서
		//snowTire인스턴스클래스(메모리공간할당) 실행된 상태(아래)
		SnowTire snowTire = new SnowTire(); //생성자 메서드 실행
		Tire tire = snowTire;
		tire.run(); //자식클래스의 run()
		Tire tire2 = new Tire();
		tire2.run(); //부모클래스의 run()
	
	
	
		/*boolean run = true; // = [int run=1;]
		int balance =0; //은행 예금통장 금액
		Scanner scanner = new Scanner(System.in); //입출력 정의 - 키보드
		while(run) {
			//~ln = line new = 엔터
			System.out.println("---------------------------");
			System.out.println("1.입금 | 2.출금 | 3.잔고 | 4.종료 ");
			System.out.println("---------------------------");
			System.out.print("위 번호를 입력해 주세요>");
			int menuNum = scanner.nextInt(); //키보드로 입력받은 숫자를 초기값으로 지정
			if(menuNum==1) {
				System.out.print("입금액을 입력 하세요> ");
				balance = balance + scanner.nextInt();//입금액
			}if(menuNum==2) {
				System.out.print("출금액을 입력 하세요> ");
				balance = balance - scanner.nextInt();//출금하고 남은액
			}if(menuNum==3) {
				System.out.println("잔액은 " + balance + "입니다");//잔액				
			}if(menuNum==4) {
				System.out.print("프로그램이 종료 되었습니다");//시스템 종료
				run=false; // = break; -> while문을 빠져나가는 명령
			}		
		 		
		
		switch(menuNum) {
		case 1:
			System.out.print("입금액을 입력 하세요> ");
			balance = balance + scanner.nextInt();//입금액
			break;
		case 2:
			System.out.print("출금액을 입력 하세요> ");
			balance = balance - scanner.nextInt();//출금액
			break; 
		case 3:
			System.out.println("잔액은 " + balance + "입니다");//잔액	 
		    break;
		case 4:
			System.out.print("프로그램이 종료 되었습니다");//시스템 종료
			run=false;//while문을 빠져나가는 명령
			break;//switch문을 빠져나가는 명령
		}//end switch문
	}//end while문 */	  		
	
	
		/*int sum = 0; int cnt=1;
		for( cnt=1; cnt<=100; cnt++) { //cnt++ = [cnt=cnt+1]
		    sum = sum + cnt; //sum은 누적변수, cnt는 증가변수
		}
		while(cnt<=100) {
			sum = sum + cnt;
			cnt=cnt+1;
		}
		System.out.println("1부터" + (cnt-1) + "까지의 합은 "+ sum + " 입니다");*/
		
		/*int x = 10;
		int y = 5;
		boolean result1,result2,result3;//boolean형 변수지정
		result1 = (x>7)&&(y<=5);//비교구문 true 1 * 1 = 1 -> 0=false , 1=true
		result2 = (x<7)&&(y<=5);//false 0 * 1 = 0
		result3 = (x<7)||(y<=5);//true 0 + 1 = 1
		System.out.println("1번:"+result1+"/2번:"+result2+"/3번"+result3);*/
		
		/*int score = 85;
		String result;
		//result = (!(score>90))?"가":"나"; //삼항조건 축약문 -?-:- //!는 조건값 반대
		if(!(score>90)) {
			result = "가";
		}else {
			result = "나";					
		}
		System.out.println("조건에 맞는 답은 "+ result + "입니다");*/
		
		/*String name = "123"; //문자열형
		char var = 'a'; //단일문자형
		int num_name = Integer.parseInt(name); //변수형 변환
		System.out.println(num_name+ "님 안녕. 자바!");*/

	}

}
