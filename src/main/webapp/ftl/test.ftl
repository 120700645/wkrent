<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>test</title>
</head>
<body>

<h1>hello world!!</h1>
<table>
    <#list placeCars as placeCar>
    <tr>
        <#--<td>${placeCar.car.carId}</td>-->
        <td>${placeCar.car.carName}</td>
        <td>${placeCar.car.carDesc}</td>
    </tr>
    </#list>
    <#list carTypeList as carType>
        <tr>
            <td>${carType.typeName}</td>
        </tr>
    </#list>
    <#list brandList as brand>
        <tr>
            <td>${brand.brandName}</td>
        </tr>
    </#list>
        <div>
        <#--${city}-->
    <#--${endTime}-->
    <#--${startTime}-->
        </div>

</table>
</body>
</html>