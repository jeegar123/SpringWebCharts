package com.springweb.charts.demo.util;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Component
public class ReportUtilImpl implements ReportUtil {

    @Override
    public void generatePieChart(String filePath, List<Object[]> data) {
        DefaultPieDataset defaultPieDataset = new DefaultPieDataset();

        for (Object[] object : data) {
            defaultPieDataset.setValue(object[0].toString(),Double.valueOf(object[1].toString()) );
        }
        JFreeChart jFreeChart=ChartFactory.createPieChart3D("Active User",defaultPieDataset);
        try {
            ChartUtils.saveChartAsJPEG(new File(filePath+"activeUserGraph.jpeg"),jFreeChart,400,400);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
