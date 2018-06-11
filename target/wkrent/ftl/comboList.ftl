<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <#list comboList as combo>
        ${combo.comboName}.${combo.comboSite},${combo.notice.noticeContent}
    </#list>
</body>
</html>