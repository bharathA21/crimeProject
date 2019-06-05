import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;


public class CrimeData
{

  private TreeMap<Crime, Integer> crimeMap;
  private TreeMap<String, Integer> firstAdult;
  private TreeMap<String, Integer> firstJuvenile;
  private TreeMap<String, Integer> secondAdult;
  private TreeMap<String, Integer> secondJuvenile;
  private TreeMap<String, Integer> thirdAdult;
  private TreeMap<String, Integer> thirdJuvenile;
  private TreeMap<String, Integer> fourthAdult;
  private TreeMap<String, Integer> fourthJuvenile;
  private TreeMap<String, Integer> fifthAdult;
  private TreeMap<String, Integer> fifthJuvenile;

  public CrimeData()
  {
    crimeMap = new TreeMap<Crime, Integer>();
    firstAdult = new TreeMap<String, Integer>();
    firstJuvenile = new TreeMap<String, Integer>();
    secondAdult = new TreeMap<String, Integer>();
    secondJuvenile = new TreeMap<String, Integer>();
    thirdAdult = new TreeMap<String, Integer>();
    thirdJuvenile = new TreeMap<String, Integer>();
    fourthAdult = new TreeMap<String, Integer>();
    fourthJuvenile = new TreeMap<String, Integer>();
    fifthAdult = new TreeMap<String, Integer>();
    fifthJuvenile = new TreeMap<String, Integer>();
  }

  public CrimeData(String fileName)
  {
    this();
    try
    {
      Scanner scan = new Scanner(new File(fileName));
      //add code here to read from the file 
      while (scan.hasNext()) {
        String s=scan.nextLine();
        Crime p=new Crime(s);
        String[] data= p.arraytime();

        if (data[0].equals("2018") && data[1].equals("A")) {
          firstAdult.put("Apple Valley", Integer.parseInt(data[2]));
          firstAdult.put("Eagan", Integer.parseInt(data[3]));
          firstAdult.put("Rosemount", Integer.parseInt(data[4]));
          firstAdult.put("South St. Paul", Integer.parseInt(data[5]));
          firstAdult.put("West St. Paul", Integer.parseInt(data[6]));
        }
        if (data[0].equals("2018") && data[1].equals("J")) {
          firstJuvenile.put("Apple Valley", Integer.parseInt(data[2]));
          firstJuvenile.put("Eagan", Integer.parseInt(data[3]));
          firstJuvenile.put("Rosemount", Integer.parseInt(data[4]));
          firstJuvenile.put("South St. Paul", Integer.parseInt(data[5]));
          firstJuvenile.put("West St. Paul", Integer.parseInt(data[6]));
        }
        if (data[0].equals("2017") && data[1].equals("A")) {
          secondAdult.put("Apple Valley", Integer.parseInt(data[2]));
          secondAdult.put("Eagan", Integer.parseInt(data[3]));
          secondAdult.put("Rosemount", Integer.parseInt(data[4]));
          secondAdult.put("South St. Paul", Integer.parseInt(data[5]));
          secondAdult.put("West St. Paul", Integer.parseInt(data[6]));
        }
        if (data[0].equals("2017") && data[1].equals("J")) {
          secondJuvenile.put("Apple Valley", Integer.parseInt(data[2]));
          secondJuvenile.put("Eagan", Integer.parseInt(data[3]));
          secondJuvenile.put("Rosemount", Integer.parseInt(data[4]));
          secondJuvenile.put("South St. Paul", Integer.parseInt(data[5]));
          secondJuvenile.put("West St. Paul", Integer.parseInt(data[6]));
        }
        if (data[0].equals("2016") && data[1].equals("A")) {
          thirdAdult.put("Apple Valley", Integer.parseInt(data[2]));
          thirdAdult.put("Eagan", Integer.parseInt(data[3]));
          thirdAdult.put("Rosemount", Integer.parseInt(data[4]));
          thirdAdult.put("South St. Paul", Integer.parseInt(data[5]));
          thirdAdult.put("West St. Paul", Integer.parseInt(data[6]));
        }
        if (data[0].equals("2016") && data[1].equals("J")) {
          thirdJuvenile.put("Apple Valley", Integer.parseInt(data[2]));
          thirdJuvenile.put("Eagan", Integer.parseInt(data[3]));
          thirdJuvenile.put("Rosemount", Integer.parseInt(data[4]));
          thirdJuvenile.put("South St. Paul", Integer.parseInt(data[5]));
          thirdJuvenile.put("West St. Paul", Integer.parseInt(data[6]));
        }
        if (data[0].equals("2015") && data[1].equals("A")) {
          fourthAdult.put("Apple Valley", Integer.parseInt(data[2]));
          fourthAdult.put("Eagan", Integer.parseInt(data[3]));
          fourthAdult.put("Rosemount", Integer.parseInt(data[4]));
          fourthAdult.put("South St. Paul", Integer.parseInt(data[5]));
          fourthAdult.put("West St. Paul", Integer.parseInt(data[6]));
        }
        if (data[0].equals("2015") && data[1].equals("J")) {
          fourthJuvenile.put("Apple Valley", Integer.parseInt(data[2]));
          fourthJuvenile.put("Eagan", Integer.parseInt(data[3]));
          fourthJuvenile.put("Rosemount", Integer.parseInt(data[4]));
          fourthJuvenile.put("South St. Paul", Integer.parseInt(data[5]));
          fourthJuvenile.put("West St. Paul", Integer.parseInt(data[6]));
        }
        if (data[0].equals("2014") && data[1].equals("A")) {
          fifthAdult.put("Apple Valley", Integer.parseInt(data[2]));
          fifthAdult.put("Eagan", Integer.parseInt(data[3]));
          fifthAdult.put("Rosemount", Integer.parseInt(data[4]));
          fifthAdult.put("South St. Paul", Integer.parseInt(data[5]));
          fifthAdult.put("West St. Paul", Integer.parseInt(data[6]));
        }
        if (data[0].equals("2014") && data[1].equals("J")) {
          fifthJuvenile.put("Apple Valley", Integer.parseInt(data[2]));
          fifthJuvenile.put("Eagan", Integer.parseInt(data[3]));
          fifthJuvenile.put("Rosemount", Integer.parseInt(data[4]));
          fifthJuvenile.put("South St. Paul", Integer.parseInt(data[5]));
          fifthJuvenile.put("West St. Paul", Integer.parseInt(data[6]));
        }



        //////////////////
        //if (crimeMap.get(p)==null) {
        //  crimeMap.put(p, 0);
        //} 
        //crimeMap.put(p, crimeMap.get(p)+1);
      }

      //and add Crimes to the map
    }
    catch( IOException e )  //Most specific exceptions must be listed 1st
    {
      out.println(e);
    }
    catch( RuntimeException e )
    {
      out.println(e);
    }
    catch( Exception e )
    {
      out.println(e);
    }
    finally
    {
      //no code needed here
    }
  }

  public TreeMap<String, Integer> theMap(String y, String a) {
    String mapName=""+y+a;
    if(mapName.equals("firstAdult")){
      return firstAdult;
    }
    if(mapName.equals("firstJuvenile")){
      return firstJuvenile;
    }
    if(mapName.equals("secondAdult")){
      return secondAdult;
    }
    if(mapName.equals("secondJuvenile")){
      return secondJuvenile;
    }
    if(mapName.equals("thirdAdult")){
      return thirdAdult;
    }
    if(mapName.equals("thirdJuvenile")){
      return thirdJuvenile;
    }
    if(mapName.equals("fourthAdult")){
      return fourthAdult;
    }
    if(mapName.equals("fourthJuvenile")){
      return fourthJuvenile;
    }
    if(mapName.equals("fifthAdult")){
      return fifthAdult;
    }
    if(mapName.equals("fifthJuvenile")){
      return fifthJuvenile;
    }
    
    return firstAdult;
  }

  public String toString()
  {


    String output="";

    //output+=firstAdult.get("Eagan")+"\n";

    for (String p : firstAdult.keySet()) {
      output+=p+" - "+firstAdult.get(p)+"\n";
    }
    for (String p : firstJuvenile.keySet()) {
      output+=p+" - "+firstJuvenile.get(p)+"\n";
    }

    return output;
  }
}
