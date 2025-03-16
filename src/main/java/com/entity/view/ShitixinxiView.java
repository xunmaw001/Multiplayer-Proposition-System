package com.entity.view;

import com.entity.ShitixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 试题信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-28 13:38:20
 */
@TableName("shitixinxi")
public class ShitixinxiView  extends ShitixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShitixinxiView(){
	}
 
 	public ShitixinxiView(ShitixinxiEntity shitixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, shitixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
