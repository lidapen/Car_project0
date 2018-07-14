package com.ldp.Carproject.controller;

import com.ldp.Carproject.pojo.Commodity;
import com.ldp.Carproject.service.CommodityService;
import com.ldp.Carproject.utils.Constants;
import com.ldp.Carproject.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 商品管理控制层
 * @author
 */
@Controller
public class CommodityController {
    @Autowired
    CommodityService service;
    @RequestMapping("/query")
    public  String getAll(@RequestParam(defaultValue = "1")Integer pageNo,
                          @RequestParam(value = "condition", required = false)Integer condition,Model model){
        Page<Commodity>page=service.getByCondition(condition,pageNo,Constants.pageSize);
        model.addAttribute("information",page);
        if (condition!=null){
            model.addAttribute("condition",condition);
        }
        return "goods_List";
    }



    /**
     * 新增商品信息
     * @param commodity
     * @return
     */
    @RequestMapping("/addCommodity")
    public String AddCommodity(Commodity commodity){
        if(commodity.getShangpType().equals("3")){
            System.out.println(commodity.getShangpType()+"=============================");
            commodity.setShangpType("后视镜");
        }else if(commodity.getShangpType().equals("1")){
            commodity.setShangpType("汽车轮胎");
        }else if(commodity.getShangpType().equals("2")){
            commodity.setShangpType("汽车蜡");
        }
        if(commodity.getState().equals("1")){
            commodity.setState("下架");
        }else if(commodity.getState().equals("2")){
            commodity.setState("上架");
        }
        service.insertCommodity(commodity);
        return "add_Goods";
    }

    @RequestMapping("toModify")
    public String toModify(Long id,Model model){
        model.addAttribute("id",id);
        Commodity commodity=service.findCommodityById(id);
        model.addAttribute("commodity",commodity);
        return "modify";
    }
    @RequestMapping("modifyById")
    public String modifyById(Commodity commodity){
        if(commodity.getShangpType().equals("3")){
            commodity.setShangpType("后视镜");
        }else if(commodity.getShangpType().equals("1")){
            commodity.setShangpType("汽车轮胎");
        }else if(commodity.getShangpType().equals("2")){
            commodity.setShangpType("汽车蜡");
        }
        if(commodity.getState().equals("1")){
            commodity.setState("下架");
        }else if(commodity.getState().equals("2")){
            commodity.setState("上架");
        }
        service.updateCommodityById(commodity);
        return "redirect:/query";

    }
    @RequestMapping("/deleById")
    public String deleteCommodityById(Integer id,Model model){
        service.deleteCommodityById(id);
        model.addAttribute("msg","删除成功！");
        return "forward:/query";
    }

}
