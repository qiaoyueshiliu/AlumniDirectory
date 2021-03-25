package fanshe;
/**
 * 获取Class对象的三种方式
 * 1 Object ——> getClass();
 * 2 任何数据类型（包括基本数据类型）都有一个“静态”的class属性
 * 3 通过Class类的静态方法：forName（String  className）(常用)
 *
 */
public class Fanshe {
    public static void main(String[] args){
//        第一种方法获取Class对象
        Student stu1 = new Student();//这一 new 产生一个 Student 对象，一个 Class 对象
        Class stuClass = stu1.getClass();// 获取 CLass 对象
        System.out.println(stuClass.getName());

        //第二种方式获取Class对象
        Class stuClass2 = Student.class;
        System.out.println(stuClass == stuClass2);//判断第一种方式获取的Class对象和第二种方式获取的是否是同一个

    }
}
