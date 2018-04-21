package com.ldu.controller;

import com.ldu.service.CatelogService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
public class CatelogController {
    @Resource
    private CatelogService catelogService;

}
