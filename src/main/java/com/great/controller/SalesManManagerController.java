package com.great.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.great.model.LayUITableResponseModel;
import com.great.model.UserModel;
import com.great.service.SalesManManagerService;
import com.great.service.UserManagerService;

@Controller
@RequestMapping("/salesManManager")
public class SalesManManagerController {

	@Resource
	private SalesManManagerService salesManManagerService;
	
	//获取客户数据列表
	@RequestMapping(value="/getSalesManList.action",method= RequestMethod.GET)
	@ResponseBody
	public LayUITableResponseModel getSalesManList(String page,String limit,String name) {
		System.out.println("name"+page);
		System.out.println("name"+limit);
		System.out.println("name"+name);
		int queryInitCount=(Integer.valueOf(page).intValue()-1)*Integer.valueOf(limit).intValue();
		ArrayList<UserModel> salesManList=salesManManagerService.getSalesManList(queryInitCount, Integer.valueOf(limit).intValue(),name);
		int salesManCount= Integer.valueOf(salesManManagerService.getSalesManCount(name)).intValue();
		LayUITableResponseModel layUITableResponseModel=new LayUITableResponseModel(0,"ms",salesManCount,salesManList);
		return layUITableResponseModel;
	}
	
	//编辑修改客户数据
	@RequestMapping(value="/editSalesManInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> editSalesManInfo(UserModel editSalesManInfo) {
		salesManManagerService.editSalesManInfo(editSalesManInfo);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//删除客户数据
	@RequestMapping(value="/deleteSalesManInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> deleteSalesManInfo(int deleteSalesManId) {
		System.out.println("删除的id-"+deleteSalesManId);
		salesManManagerService.deleteSalesManInfo(deleteSalesManId);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//添加客户数据（单笔）
	@RequestMapping(value="/addSalesManInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> addSalesManInfo(UserModel addSalesManInfo) {
		System.out.println("---"+addSalesManInfo.getuPhone());
		System.out.println("---"+addSalesManInfo.getuPsw());
		salesManManagerService.addSalesManInfo(addSalesManInfo);
		//int userCount= Integer.valueOf(userManagerService.getUserCount(null)).intValue();
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//批量导入数据
	@RequestMapping(value = { "/uploadImg.action" }, method = {RequestMethod.POST})
	@ResponseBody 
	public Map<String, Object> testUploadify(MultipartFile file, HttpServletRequest servletRequest) {

		Map<String, Object> responseMap = new HashMap<String, Object>();

		String fileRealName = file.getOriginalFilename();// 获得原始文件名;
		int pointIndex = fileRealName.lastIndexOf(".");// 点号的位置
		String fileSuffix = fileRealName.substring(pointIndex);// 截取文件后缀
		String fileNewName = "6666";// DateUtils.getNowTimeForUpload();//文件new名称时间戳
		String saveFileName = fileNewName.concat(fileSuffix);// 文件存取名
		String filePath = "D:\\FileAll";
		File path = new File(filePath); // 判断文件路径下的文件夹是否存在，不存在则创建
		if (!path.exists()) {
			path.mkdirs();
		}
		filePath = filePath + "\\" + saveFileName;
		File savedFile = new File(filePath);
		// 判断是否为excel类型文件
		if (!filePath.endsWith(".xls") && !filePath.endsWith(".xlsx")) {
			System.out.println("文件不是excel类型");
			responseMap.put("code", "1");
			return responseMap;
		}
		FileInputStream fis = null;
		Workbook wookbook = null;
		try {
			// 获取一个绝对地址的流
			fis = new FileInputStream(filePath);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			// 2003版本的excel，用.xls结尾
			wookbook = new HSSFWorkbook(fis);// 得到工作簿
		} catch (Exception ex) {
			// ex.printStackTrace();
			try {
				// 这里需要重新获取流对象，因为前面的异常导致了流的关闭—————————————————————————————加了这一行
				fis = new FileInputStream(filePath);
				// 2007版本的excel，用.xlsx结尾
				wookbook = new XSSFWorkbook(fis);// 得到工作簿
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// 得到一个工作表
		Sheet sheet = wookbook.getSheetAt(0);
		// 获得表头
		Row rowHead = sheet.getRow(0);
		// 判断表头是否正确
		if (rowHead.getPhysicalNumberOfCells() != 3) {
			System.out.println("表头的数量不对!");
		}
		// 获得数据的总行数
		int totalRowNum = sheet.getLastRowNum();
		// 要获得属性
		String name = "";
		int latitude = 0;
		// 获得所有数据
		for (int i = 1; i <= totalRowNum; i++) {
			// 获得第i行对象
			Row row = sheet.getRow(i);
			// 获得获得第i行第0列的 String类型对象
			Cell cell1 = row.getCell((short) 1);
			// name = cell.getStringCellValue().toString();
			// 获得一个数字类型的数据
			Cell cell2 = row.getCell((short) 2);
			// latitude = (int) cell.getNumericCellValue();
			System.out.println(
					"客户id：" + cell1.getNumericCellValue() + ",手机号：" + String.valueOf(cell2.getNumericCellValue()));
		}
		responseMap.put("code", "0");
		return responseMap;
	}
	
	//校验客户数据列表
	@RequestMapping(value="/verifySalesManPhone.action",method= RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> verifySalesManPhone(String salesManPhone) {
		System.out.println("salesManPhone"+salesManPhone);
		String existCode=salesManManagerService.verifySalesManPhone(salesManPhone);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		System.out.println("----"+existCode);
		responseMap.put("code", existCode);
		return responseMap;
	}

}
