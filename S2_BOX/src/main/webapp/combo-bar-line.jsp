<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="visualChart.ViewChart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<%
		String[] label = {"a1","a2","a3","a4","a5","a6","a7",
				"b1","b2","b3","b4","b5","b6","b7"};

		int[] chart1 = {11,-12,13,-14,15,16,-17,
			21,22,-23,24,-25,26,27};

		int[] chart2 = {31,-32,33,34,35,-36,37,
			41,42,-43,44,45,-46,47};

		int[] chart3 = {51,-52,53,54,-55,56,-57,
			-61,62,-63,64,65,66,67};

	%>
<head>
    <title>Combo Bar-Line Chart</title>
    <script src="/<%=request.getContextPath()%>/js/chartJS/Chart.bundle.js"></script>
    <script src="/<%=request.getContextPath()%>/js/chartJS/utils.js"></script>
    <style>
    canvas {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    </style>
</head>

<body>
    <div style="width: 75%">
        <canvas id="canvas"></canvas>
    </div>
    <button id="randomizeData">Randomize Data</button>
    <script>
        var chartData = {
            labels: [<%=ViewChart.view(label)%>],
            datasets: [{
                type: 'line',
                label: [],
                borderColor: window.chartColors.blue,
                borderWidth: 2,
                fill: false,
                data: [<%=ViewChart.view(chart1)%>]
            }, {
                type: 'bar',
                label: 'Dataset 2',
                backgroundColor: window.chartColors.red,
                data: [<%=ViewChart.view(chart2)%>],
                borderColor: 'white',
                borderWidth: 2
            }, {
                type: 'bar',
                label: 'Dataset 3',
                backgroundColor: window.chartColors.green,
                data : [<%=ViewChart.view(chart3)%>]
            }]

        };
        window.onload = function() {
            var ctx = document.getElementById("canvas").getContext("2d");
            window.myMixedChart = new Chart(ctx, {
                type: 'bar',
                data: chartData,
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        text: 'Chart.js Combo Bar Line Chart'
                    },
                    tooltips: {
                        mode: 'index',
                        intersect: true
                    }
                }
            });
        };

        document.getElementById('randomizeData').addEventListener('click', function() {
            chartData.datasets.forEach(function(dataset) {
                dataset.data = dataset.data.map(function() {
                    return randomScalingFactor();
                });
            });
            window.myMixedChart.update();
        });
    </script>
</body>

</html>
