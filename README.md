# PNChartDemo
Swift 版 PNChart 图表 Demo，感谢作者 kevinzhow

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Swift-orange.svg) 
![](https://img.shields.io/badge/download-2.1MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

日常开发中时长会需要图表支持，其中 kevinzhow 的 PNChart 使用简单，效果出众，特此献出使用 Demo。

| 名称 |1.列表页 |2.饼状图 |3.条形图 |4.折线图 |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-9-30/35579329.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-9-30/66132126.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-9-30/73681801.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-9-30/23007665.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | 纯代码实现饼状图 | 纯代码实现条形图 | 纯代码实现折线图 |


## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.手动导入工具类
* 3.具备较高自定义性


## Requirements 要求
* iOS 7+
* Xcode 8+


## Usage 使用方法
### 第一步 引入头文件
把 PNChartTools 文件夹拖入项目工程目录

### 第二步 实现方法
#### 2.1 饼状图实现
```
private func setPieChart() -> PNPieChart {
    let item1 = PNPieChartDataItem(dateValue: 20, dateColor:  PNLightGreen, description: "Build")
    let item2 = PNPieChartDataItem(dateValue: 20, dateColor: PNFreshGreen, description: "I/O")
    let item3 = PNPieChartDataItem(dateValue: 45, dateColor: PNDeepGreen, description: "WWDC")
    let frame = CGRect(x: 40, y: 155, width: 240, height: 240)
    let items: [PNPieChartDataItem] = [item1, item2, item3]
    let pieChart = PNPieChart(frame: frame, items: items)
    pieChart.descriptionTextColor = UIColor.white
    pieChart.descriptionTextFont = UIFont(name: "Avenir-Medium", size: 14)!
    pieChart.center = self.view.center
    return pieChart
}
```

#### 2.2 条形图实现
```
private func setBarChart() -> PNBarChart {
    let barChart = PNBarChart(frame: CGRect(x: 0, y: 135, width: 320, height: 200))
    barChart.backgroundColor = UIColor.clear
    barChart.animationType = .Waterfall
    barChart.labelMarginTop = 5.0
    barChart.xLabels = ["Sep 1", "Sep 2", "Sep 3", "Sep 4", "Sep 5", "Sep 6", "Sep 7"]
    barChart.yValues = [1, 23, 12, 18, 30, 12, 21]
    barChart.strokeChart()
    barChart.center = self.view.center
    return barChart
}
```
#### 2.3 折线图实现
```
private func setLineChart() -> PNLineChart {
    let lineChart = PNLineChart(frame: CGRect(x: 0, y: 135, width: 320, height: 250))
    lineChart.yLabelFormat = "%1.1f"
    lineChart.showLabel = true
    lineChart.backgroundColor = UIColor.clear
    lineChart.xLabels = ["Sep 1", "Sep 2", "Sep 3", "Sep 4", "Sep 5", "Sep 6", "Sep 7"]
    lineChart.showCoordinateAxis = true
    lineChart.center = self.view.center
    
    let dataArr = [60.1, 160.1, 126.4, 232.2, 186.2, 127.2, 176.2]
    let data = PNLineChartData()
    data.color = PNGreen
    data.itemCount = dataArr.count
    data.inflexPointStyle = .None
    data.getData = ({
        (index: Int) -> PNLineChartDataItem in
        let yValue = CGFloat(dataArr[index])
        let item = PNLineChartDataItem(y: yValue)
        return item
    })
    
    lineChart.chartData = [data]
    lineChart.strokeChart()
    return lineChart
}
```

### 第三步 简单调用
以饼形图为例：
```
let pieChart = self.setPieChart()
self.view.addSubview(pieChart)
```

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
PNChartDemo 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
