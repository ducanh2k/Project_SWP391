/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;

/**
 *
 * @author Dell
 */
public class Attendant {

    public static void readFromFile(String filename) {
        try{
            FileReader reader = new FileReader(filename);
            BufferedReader br = new BufferedReader(reader);
            
            String line;
            while((line = br.readLine()) != null){
                System.out.println(line);
            }
            reader.close();
        }catch(IOException e){
            System.out.println(e);
        }
    }
    public static void writeToFile(String filename){
        try{
            FileOutputStream fs = new FileOutputStream(filename);
            OutputStreamWriter ow = new OutputStreamWriter(fs, "UTF-8");
            BufferedWriter bw = new BufferedWriter(ow);
            bw.newLine();
            bw.write("Ngan mong to");
            bw.close();
        }catch(IOException ex){
            System.out.println(ex);
        }
    }
    public static void main(String[] args) throws FileNotFoundException, IOException {
        readFromFile("D:\\Attendant\\EmployeeAttendant.txt");
//        writeToFile("D:\\Attendant\\EmployeeAttendant.txt");
//        FileInputStream fis = new FileInputStream(new File(""));
//        HSSFWorkbook wb = new HSSFWorkbook(fis);
//        HSSFSheet sheet = wb.getSheetAt(0);
//        FormulaEvaluator formulaEvaluator = wb.getCreationHelper().createFormulaEvaluator();
//        for (Row row : sheet) {
//            for (Cell cell : row) {
//                switch (formulaEvaluator.evaluateInCell(cell).getCellType()) {
//                    case Cell.CELL_TYPE_NUMERIC:
//                        System.out.println(cell.getNumericCellValue() + "\t\t");
//                        break;
//                    case Cell.CELL_TYPE_STRING:
//                        System.out.println(cell.getStringCellValue()+ "\t\t");
//                        break;
//                }
//            }
//            System.out.println();
//        }
    }

}
