/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

/**
 *
 * @author thisa
 */
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


public class EventLog {
    
    
    public static void Write(String msg)
    {
        //Getting the date from system
        String date = java.time.LocalDate.now().toString();
        //Declaring time object;
        LocalDateTime time;
        //Initializing the formatter to convert dateTime to time
        DateTimeFormatter timeformat = DateTimeFormatter.ofPattern("HH:mm:ss");
        //Declearing a variable to hold formatted time
        String formattedTime;
        
        //File object
        File log;
        //Selecting the file by giving its path
        log = new File("C:\\\\Logs\\\\HOS-MNG-SYS\\" + date +" log.txt");
        if(log.exists())
        { //if the file already exsists do these
            try {
                    FileWriter logger = new FileWriter(log.getPath(),true);
                    time = LocalDateTime.now();//getting time from the system
                    formattedTime = time.format(timeformat); //formatting the time
                    logger.write(formattedTime + " : "  + msg + "\n"); //writing part
                    logger.close(); //the IDE tells me that this is not needed but the string will not write if I remove this. don't know why.
                    System.out.println("Successfully wrote to the file.");//for debugging purposes
                  } 
            catch (IOException e) {
                    System.out.println("An error occurred in the logging process.");//for debugging purposes
                  }
        }
        else
        {////if not create the file and run the same method (Recursion)
            try
            {
                System.out.println("new File created"); //for debugging purposes
                if(log.createNewFile()) EventLog.Write(msg);
            }
            
            catch (IOException e) 
            {
                System.out.println("An error occurred in the log file creating process.");//for debugging purposes
            }
            
        }
    }
    
}
