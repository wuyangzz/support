package com.cdtu.support.mapper;

import com.cdtu.support.pojo.SchoolWithBLOBs;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SchoolMapperTest {

	@Autowired
	SchoolMapper schoolMapper;

	@Test
	public void test01(){

		SchoolWithBLOBs school = schoolMapper.selectByPrimaryKey("aa6b6");
		System.out.println(school);

	}

}