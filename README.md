# Coding Standard: Flutter

### 1) Naming Convention

- Classes, enums, typedefs, and extensions name must be in **UpperCamelCase**.

    - For CustomWidgets : ClassName (UpperCamelCase) + {TeamName}

      Example : CardFar{TeamName}

- Packages ,Libraries, Directories, and source files name must be in **snake_case** (lowercase_with_underscores) with type of file

    - For non-CustomWidgets

          Example : homepage_screen

    - For customWidgets : Instead of using snake_case, {TeamName} as a suffix will be used.

           Example : cardFar{TeamName}

- Variables, constants, parameters, and named parameters must be in **lowerCamelCase**.

- Attribute constants must be in **lowerCamelCase** and start with **k**.

- Private variable must start with **underscore(_)**.



### 2) Use only absolute imports for files in lib/

```

//Don't

import '../../constants.dart';

 

//Do

import 'package:food/screen/dishDetail.dart';

```



### 3) Variable Declaration

- การประกาศตัวแปรทั้งหมดให้อยู่ส่วนบนของหน้า

- ใน body ไม่ต้องใส่ **const** นำหน้าตัวแปร



### 4) Common Widgets

- การสร้าง Screen ให้ใช้ **Scaffold**

- การสร้างหน้าที่มี Scroll ให้ใช้ **SingleChildScrollView**

- ให้ใช้ **Column** สำหรับแบ่งเนื้อหาในแนวตั้ง

- ถ้ามีการซ้อนกันของ Widget ให้ใช้ **Stack**

- ใน Stack ให้ใช้ **Positioned** ในการวางซ้อนตำแหน่งต่างๆ

- ให้ใช้ **Image.asset** สำหรับรูปที่นำเข้ามาจากเครื่อง และ **Image.network** สำหรับรูปที่นำเข้ามาจากอินเทอร์เน็ต

- ใน Column ให้ใช้ได้แค่ **Container**, **Expanded** และ **Row**

- การสร้าง card หรือปุ่มที่ไม่มีโครงที่เป็น Text, Icon และ Image ให้ใช้ **GestureDetector**

- การสร้างปุ่มที่มีโครงให้ใช้ **ElevatedButton**

- ให้ใช้ **ClipRRect** สำหรับปรับแต่งรูปร่างของกรอบรูป (ใช้เมื่อจำเป็นเท่านั้น)

- การสร้าง List ที่เราต้องการ slide (ซ้าว-ขวา หรือ บน-ล่าง) ให้ใช้ **ListView.builder()**



### 5) Function

- ใน 1 function ต้องทำงานไม่เกิน 1 อย่าง

- ใน 1 function รับ arguments ได้ไม่เกิน 3 ตัว

- ไม่ควรใช้ flag argument (argument ที่เป็น boolean)



### 6) Comment

- ไม่ควร comment code ที่ไม่ได้ใช้งาน

- เขียน comment เมื่อจำเป็นต้องอธิบาย function ที่มีการทำงานที่ซับซ้อน

- สำหรับ function ที่ไม่ซับซ้อนให้ตั้งชื่อ function ให้สื่อถึงการทำงานแทนการเขียน comment

- เขียน **TODO comment** สำหรับงานส่วนที่ยังไม่เสร็จ



### 7) Formatting

- ถ้า statement ยาวไม่เกิน 1 บรรทัด ไม่ต้องใส่ **comma(",")** หลัง () หรือ []

- ถ้า statement ยาวมากกว่า 1 บรรทัด ให้ใส่ **comma(",")** หลัง () หรือ [] ทุกครั้ง



### 8) Object and Data Structure

- ถ้ามี function ที่ทำงานเหมือนหรือคล้ายกันในแต่ล่ะไฟล์ ให้ย้ายไปรวมกันเป็นไฟล์ใหม่ที่มีรูปแบบ **Polymorphic** หรือ **Procedural**

- ถ้าต้องการสร้าง function ใหม่ แต่ฟังก์ชันนั้นทำงานเหมือนหรือคล้ายกับ function ที่มีอยู่แล้วในไฟล์รูปแบบ Polymorphic หรือ Procedural ให้ดึงหรือ inherit function นั้นมาใช้แทน



### 9) Naming

- ตั้งชื่อตัวแปรให้มีความหมายและสื่อความหมายชัดเจน

- ตั้งชื่อ function ให้มีความหมายและสื่อความหมายถึงการทำงานชัดเจน

- ตั้งชื่อตัวแปรให้สามารถอ่านออกเสียงได้

- ควรตั้งชื่อตัวแปรให้สื่อถึงตัวชี้วัดและหน่วย

- ไม่ควรตั้งชื่อตัวแปรที่มีความหมายซ้ำซ้อนกัน

- ไม่ควรตั้งชื่อ class เป็นคำกริยา

- ควรตั้งชื่อ function ให้มีคำกริยารวมอยู่ด้วย

- ควรตั้งชื่อตัวแปรให้มี context รวมอยู่ในชื่อด้วย

### 10) Others

- ให้ใช้ **EdgeInsets.all** เมื่อระยะซ้าย, ขวา, บนและล่างเท่ากัน และ **EdgeInsets.symmetric** เมื่อระยะซ้ายเท่ากับขวา หรือบนเท่ากับล่าง นอกเหนือจากนั้นให้ใช้ **EdgeInsets.only**

- สร้าง **Container** แค่เท่าที่จำเป็น

- ให้ใช้ **padding** แทน margin