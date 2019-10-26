import Foundation
//struct จะเป็นแบบ Pass By value : เหมือนcopyแยกคนล้ะอัน แก้อันใดอันหนึ่งไม่มีผลกับอีกอัน
//calss จะเป็นแบบ Pass By Ref. : เหมือนcopyแยกคนล้ะอัน แก้อันใดอันหนึ่งจะมีผลกับทุกอัน
struct CalculateBrain {
    var   bmi :  Float = 0.0
    func getBMIValue() -> String {
        let  bmiTo1Decimalplace = String(format: "%.1f" , bmi)
        return bmiTo1Decimalplace
    }
    mutating func CalculateBMI(height:Float, weight:Float){
        //bmi  ตัวที่ใช้นี้ไม่มี var หรือ let น้ำหน้า คือตัวที่เป็น Global var
        // ส่วน weight กับ height คือคัวที่ฟังก์ชั่นรับค่ามาในชื่อนั้นเป็น local var
    }
}
