package edu.poly.sj5.utility;

import java.io.File;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadFileUtil {
    
	public File UploadFile(MultipartFile file) {
		String folder = "C:\\Users\\Hi\\Desktop\\Java 5\\SJ5\\src\\main\\webapp\\images";
		
		File filefolder = new File(folder);
		if(!filefolder.exists())  filefolder.mkdirs();
		System.out.println(filefolder.getAbsolutePath() + file.getOriginalFilename());
		File saveFile= null;
		try {
			saveFile = new File(filefolder, file.getOriginalFilename());
			file.transferTo(saveFile);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return saveFile;
	}
}
