package com.springweb.charts.demo.controller;

import com.springweb.charts.demo.repo.DataRepository;
import com.springweb.charts.demo.util.ReportUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletContext;
import java.util.List;
import java.util.Objects;

@Controller
public class ChartController {


    private final ReportUtil reportUtil;

    private final ServletContext servletContext;

    final
    DataRepository dataRepository;

    public ChartController(ReportUtil reportUtil, ServletContext servletContext, DataRepository dataRepository) {
        this.reportUtil = reportUtil;
        this.servletContext = servletContext;
        this.dataRepository = dataRepository;
    }

    @RequestMapping("/")
    public String index() {
        List<Object[]> list=dataRepository.getActiveCountByRole();
        reportUtil.generatePieChart(servletContext.getRealPath("/"),list);
        return "index";
    }
}
