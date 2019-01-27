package com.great.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.great.model.LayUITableResponseModel;
import com.great.model.UserModel;
import com.great.service.UserManagerService;

@Controller
@RequestMapping("/userManager")
public class UserManagerController {
	@Resource
	private UserManagerService userManagerService;
	
	//��ȡ�ͻ������б�
	@RequestMapping(value="/getUserList.action",method= RequestMethod.GET)
	@ResponseBody
	public LayUITableResponseModel getUserList(String page,String limit,String name) {
		System.out.println("name"+page);
		System.out.println("name"+limit);
		System.out.println("name"+name);
		int queryInitCount=(Integer.valueOf(page).intValue()-1)*Integer.valueOf(limit).intValue();
		ArrayList<UserModel> userList=userManagerService.getUserList(queryInitCount, Integer.valueOf(limit).intValue(),name);
		int userCount= Integer.valueOf(userManagerService.getUserCount(name)).intValue();
		LayUITableResponseModel layUITableResponseModel=new LayUITableResponseModel(0,"ms",userCount,userList);
		return layUITableResponseModel;
	}
	
	//�༭�޸Ŀͻ�����
	@RequestMapping(value="/editUserInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> editUserInfo(UserModel editUserInfo) {
		userManagerService.editUserInfo(editUserInfo);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//ɾ���ͻ�����
	@RequestMapping(value="/deleteUserInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> deleteUserInfo(int deleteUserId) {
		System.out.println("ɾ����id-"+deleteUserId);
		userManagerService.deleteUserInfo(deleteUserId);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//��ӿͻ����ݣ����ʣ�
	@RequestMapping(value="/addUserInfo.action",method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> addUserInfo(UserModel addUserInfo) {
		System.out.println("---"+addUserInfo.getuPhone());
		System.out.println("---"+addUserInfo.getuPsw());
		userManagerService.addUserInfo(addUserInfo);
		int userCount= Integer.valueOf(userManagerService.getUserCount(null)).intValue();
		Map<String,Object> responseMap=new HashMap<String, Object>();
		responseMap.put("returnCode", 200);
		responseMap.put("returnCode", 200);
		return responseMap;
	}
	
	//������������
	@RequestMapping(value = { "/uploadImg.action" }, method = {RequestMethod.POST})
	@ResponseBody 
	public Map<String, Object> testUploadify(MultipartFile file, HttpServletRequest servletRequest) {

		Map<String, Object> responseMap = new HashMap<String, Object>();

		String fileRealName = file.getOriginalFilename();// ���ԭʼ�ļ���;
		int pointIndex = fileRealName.lastIndexOf(".");// ��ŵ�λ��
		String fileSuffix = fileRealName.substring(pointIndex);// ��ȡ�ļ���׺
		String fileNewName = "6666";// DateUtils.getNowTimeForUpload();//�ļ�new����ʱ���
		String saveFileName = fileNewName.concat(fileSuffix);// �ļ���ȡ��
		String filePath = "D:\\FileAll";
		File path = new File(filePath); // �ж��ļ�·���µ��ļ����Ƿ���ڣ��������򴴽�
		if (!path.exists()) {
			path.mkdirs();
		}
		filePath = filePath + "\\" + saveFileName;
		File savedFile = new File(filePath);
		// �ж��Ƿ�Ϊexcel�����ļ�
		if (!filePath.endsWith(".xls") && !filePath.endsWith(".xlsx")) {
			System.out.println("�ļ�����excel����");
			responseMap.put("code", "1");
			return responseMap;
		}
		FileInputStream fis = null;
		Workbook wookbook = null;
		try {
			// ��ȡһ�����Ե�ַ����
			fis = new FileInputStream(filePath);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			// 2003�汾��excel����.xls��β
			wookbook = new HSSFWorkbook(fis);// �õ�������
		} catch (Exception ex) {
			// ex.printStackTrace();
			try {
				// ������Ҫ���»�ȡ��������Ϊǰ����쳣���������Ĺرա���������������������������������������������������������������һ��
				fis = new FileInputStream(filePath);
				// 2007�汾��excel����.xlsx��β
				wookbook = new XSSFWorkbook(fis);// �õ�������
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// �õ�һ��������
		Sheet sheet = wookbook.getSheetAt(0);
		// ��ñ�ͷ
		Row rowHead = sheet.getRow(0);
		// �жϱ�ͷ�Ƿ���ȷ
		if (rowHead.getPhysicalNumberOfCells() != 3) {
			System.out.println("��ͷ����������!");
		}
		// ������ݵ�������
		int totalRowNum = sheet.getLastRowNum();
		// Ҫ�������
		String name = "";
		int latitude = 0;
		// �����������
		for (int i = 1; i <= totalRowNum; i++) {
			// ��õ�i�ж���
			Row row = sheet.getRow(i);
			// ��û�õ�i�е�0�е� String���Ͷ���
			Cell cell1 = row.getCell((short) 1);
			// name = cell.getStringCellValue().toString();
			// ���һ���������͵�����
			Cell cell2 = row.getCell((short) 2);
			// latitude = (int) cell.getNumericCellValue();
			System.out.println(
					"�ͻ�id��" + cell1.getNumericCellValue() + ",�ֻ��ţ�" + String.valueOf(cell2.getNumericCellValue()));
		}
		responseMap.put("code", "0");
		return responseMap;
	}
	
	//��ȡ�ͻ������б�
	@RequestMapping(value="/verifyUserPhone.action",method= RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> verifyUserPhone(String userPhone) {
		System.out.println("userPhone"+userPhone);
		String existCode=userManagerService.verifyUserPhone(userPhone);
		Map<String,Object> responseMap=new HashMap<String, Object>();
		System.out.println("----"+existCode);
		responseMap.put("code", existCode);
		return responseMap;
	}
}
