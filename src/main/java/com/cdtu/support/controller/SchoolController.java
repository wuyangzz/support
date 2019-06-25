package com.cdtu.support.controller;

import com.cdtu.support.mapper.SchoolMapper;
import com.cdtu.support.pojo.SchoolWithBLOBs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/school")
public class SchoolController {
	@Autowired
	SchoolMapper schoolMapper;

	@RequestMapping("/get")
	public String getSchool(Map<String, Object> model){
		SchoolWithBLOBs schoolWithBLOBs = schoolMapper.selectByPrimaryKey("aa6b6");

		model.put("school", schoolWithBLOBs);

		return "index";
	}
}
