package com.springweb.charts.demo.util;

import org.springframework.stereotype.Component;

import java.util.List;

public interface ReportUtil {
    void generatePieChart(String filePath, List<Object[]> data);
}
