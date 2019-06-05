import java.util.ArrayList;

public class Crime implements Comparable<Crime>
{
  private int year;
  private String age;
  private int AV;
  private int E;
  private int R;
  private int SST;
  private int WST;
  String[] maps = new String[7];

  public Crime(String line) 
  {
    String[] list = line.split(" ");

    year = Integer.parseInt(list[0]);
    age = list[1];
    AV = Integer.parseInt(list[2]);
    E = Integer.parseInt(list[3]);
    R = Integer.parseInt(list[4]);
    SST = Integer.parseInt(list[5]);
    WST = Integer.parseInt(list[6]);
    
    maps[0]=list[0];
    maps[1]=list[1];
    maps[2]=list[2];
    maps[3]=list[3];
    maps[4]=list[4];
    maps[5]=list[5];
    maps[6]=list[6];
    
  }

  //have to have compareTo if implements Comparable
  public int compareTo( Crime other )
  {

    if (this.year>other.year) {
      return 1;
    } else if (this.year<other.year) {
      return -1;
    }
    if (this.age.compareTo(other.age)>0) {
      return 1;
    } else if (this.age.compareTo(other.age)<0) {
      return -1;
    }
    return 0;
  }
  public String[] arraytime()
  {
    //maps[0]=""+year;
    //maps[1]=age;
    //maps[2]=""+AV;
    //maps[3]=""+E;
    //maps[4]=""+R;
    //maps[5]=""+SST;
    //maps[6]=""+WST;
    return maps;
  }

  public String toString()
  {
  
    return "Year:"+year+"\nAge:"+age+"\nApple Valley:"+AV+"\nEagan:"+E+"\nRosemount:"+R+"\nSouth St. Paul:"+SST+"\nWest St. Paul:"+WST;
  }
}
