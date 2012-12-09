<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12-12-6
  Time: 上午9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>过滤条件列表</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value='/resources/bootstrap/css/bootstrap-responsive.min.css' />"/>

</head>
<body style="padding-top: 60px">

<jsp:include page="../../common/breadcrumb.jsp"/>

<div class="container">

<c:if test="${type eq null or type eq 'companyType'}">


        <div class="row">
            <div class="span2"><h3>企业性质列表 </h3></div>

            <div class="span2">
                <label class="label" style="display: inline-block;width: 210px;height: 30px;padding-top: 3px"> 名称：<input
                        id="companyType" style="width: 100px;display: inline"/>
            <%--</div>--%>
            <%--<div class="span2">--%>
                <a id="addCompanyType"
                   href="javascript:if(document.getElementById('companyType').value.trim()==''){alert('值不能为空');return void(0);}
                   if(confirm('您确定要添加此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/add/companyType/'
                   +document.getElementById('companyType').value"
                   class="btn btn-small btn-success">添加</a>  </label>
            </div>
        </div>

    <table class="table table-bordered table-striped table-condensed">
        <tbody>
        <tr>

            <c:forEach items="${companyTypeList}" var="companyType" varStatus="vs">
            <td>
                <input id="companyType_${vs.index}" style="width: 100px" value="${companyType.companyType}"/>
                <a id="editCompanyType"
                   href="javascript:if(confirm('您确定要修改此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/update/companyType/${companyType.id}/'
                   +document.getElementById('companyType_${vs.index}').value"
                   class="btn btn-small ">修改</a>
                <a id="delCompanyType"
                   href="javascript:if(confirm('您确定要删除此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/del/companyType/${companyType.id}/'"
                   class="btn btn-small ">删除</a>
            </td>

            <c:if test="${(vs.index+1)%4==0}"></tr>
        <tr></c:if>
            </c:forEach>

        </tr>
        </tbody>
    </table>
    <hr/>
</c:if>


<c:if test="${type eq null or type eq 'customs'}">

    <div class="row">
        <div class="span2"><h3>海关列表</h3></div>

        <div class="span2">
            <label class="label" style="display: inline-block;width: 210px;height: 30px;padding-top: 3px"> 名称：<input
                    id="customs" style="width: 100px;display: inline"/>
                    <%--</div>--%>
                    <%--<div class="span2">--%>
                <a id="addCustoms"
                   href="javascript:if(document.getElementById('customs').value.trim()==''){alert('值不能为空');return void(0);}
                   if(confirm('您确定要添加此项吗?'))location.href='${pageContext.request.contextPath}/manage/add/customs/'
                   +document.getElementById('customs').value"
                   class="btn btn-small btn-success">添加</a>  </label>
        </div>
    </div>

    <table class="table table-bordered table-striped table-condensed">
        <tbody>
        <tr>

            <c:forEach items="${customsList}" var="customs" varStatus="vs">
            <td>
                <input id="customs_${vs.index}" style="width: 100px" value="${customs.customs}"/>
                <a id="editCustoms"
                   href="javascript:if(confirm('您确定要修改此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/update/customs/${customs.id}/'
                   +document.getElementById('customs_${vs.index}').value"
                   class="btn btn-small ">修改</a>
                <a id="delCustoms"
                   href="javascript:if(confirm('您确定要删除此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/del/customs/${customs.id}'"
                   class="btn btn-small ">删除</a>
            </td>

            <c:if test="${(vs.index+1)%4==0}"></tr>
        <tr></c:if>
            </c:forEach>

        </tr>
        </tbody>
    </table>
    <hr/>
</c:if>


<c:if test="${type eq null or type eq 'tradeType'}">

    <div class="row">
        <div class="span2"><h3>贸易类型列表</h3></div>

        <div class="span2">
            <label class="label" style="display: inline-block;width: 210px;height: 30px;padding-top: 3px"> 名称：<input
                    id="tradeType" style="width: 100px;display: inline"/>
                    <%--</div>--%>
                    <%--<div class="span2">--%>
                <a id="addTradeType"
                   href="javascript:if(document.getElementById('tradeType').value.trim()==''){alert('值不能为空');return void(0);}
                   if(confirm('您确定要添加此项吗?'))location.href='${pageContext.request.contextPath}/manage/add/tradeType/'
                   +document.getElementById('tradeType').value"
                   class="btn btn-small btn-success">添加</a>  </label>
        </div>
    </div>

    <table class="table table-bordered table-striped table-condensed">
        <tbody>
        <tr>

            <c:forEach items="${tradeTypeList}" var="tradeType" varStatus="vs">
            <td>
                <input id="tradeType_${vs.index}" style="width: 100px" value="${tradeType.tradeType}"/>
                <a id="editTradeType"
                   href="javascript:if(confirm('您确定要修改此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/update/tradeType/${tradeType.id}/'
                   +document.getElementById('tradeType_${vs.index}').value"
                   class="btn btn-small ">修改</a>
                <a id="delTradeType"
                   href="javascript:if(confirm('您确定要删除此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/del/tradeType/${tradeType.id}/'"
                   class="btn btn-small ">删除</a>
            </td>

            <c:if test="${(vs.index+1)%4==0}"></tr>
        <tr></c:if>
            </c:forEach>

        </tr>
        </tbody>
    </table>
    <hr/>
</c:if>


<c:if test="${type eq null or type eq 'transportation'}">

    <div class="row">
        <div class="span2"> <h3>运输方式列表</h3></div>

        <div class="span2">
            <label class="label" style="display: inline-block;width: 210px;height: 30px;padding-top: 3px"> 名称：<input
                    id="transportation" style="width: 100px;display: inline"/>
                    <%--</div>--%>
                    <%--<div class="span2">--%>
                <a id="addTransportation"
                   href="javascript:if(document.getElementById('transportation').value.trim()==''){alert('值不能为空');return void(0);}
                   if(confirm('您确定要添加此项吗?'))location.href='${pageContext.request.contextPath}/manage/add/transportation/'
                   +document.getElementById('transportation').value"
                   class="btn btn-small btn-success">添加</a>  </label>
        </div>
    </div>

    <table class="table table-bordered table-striped table-condensed">
        <tbody>
        <tr>

            <c:forEach items="${transportationList}" var="transportation" varStatus="vs">
            <td>
                <input id="transportation_${vs.index}" style="width: 100px" value="${transportation.transportation}"/>
                <a id="editTransportation"
                   href="javascript:if(confirm('您确定要修改此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/update/transportation/${transportation.id}/'
                   +document.getElementById('transportation_${vs.index}').value"
                   class="btn btn-small ">修改</a>
                <a id="delTransportation"
                   href="javascript:if(confirm('您确定要删除此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/del/transportation/${transportation.id}/'"
                   class="btn btn-small ">删除</a>
            </td>

            <c:if test="${(vs.index+1)%4==0}"></tr>
        <tr></c:if>
            </c:forEach>

        </tr>
        </tbody>
    </table>
    <hr/>
</c:if>


<c:if test="${type eq null or type eq 'detailType'}">
    <h3>明细表产品类型列表</h3>

    <table class="table table-bordered table-striped table-condensed">
        <tbody>
        <tr>

            <c:forEach items="${detailTypeList}" var="detailType" varStatus="vs">
            <td>
                <input id="detailType_${vs.index}" style="width: 100px" value="${detailType.detailType}"/>
                <a id="editDetailType"
                   href="javascript:if(confirm('您确定要修改此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/update/detailType/${detailType.id}/'
                   +document.getElementById('detailType_${vs.index}').value"
                   class="btn btn-small ">修改</a>
                <a id="delDetailType"
                   href="javascript:if(confirm('您确定要删除此项吗?'))
                    location.href='${pageContext.request.contextPath}/manage/del/detailType/${detailType.id}/'"
                   class="btn btn-small ">删除</a>
            </td>

            <c:if test="${(vs.index+1)%4==0}"></tr>
        <tr></c:if>
            </c:forEach>

        </tr>
        </tbody>
    </table>
    <hr/>
</c:if>


<c:if test="${type eq null or type eq 'sumType'}">

    <div class="row">
        <div class="span2"><h3>总表产品类型列表</h3></div>

        <div class="span2">
            <label class="label" style="display: inline-block;width: 210px;height: 30px;padding-top: 3px"> 名称：<input
                    id="sumType" style="width: 100px;display: inline"/>
                    <%--</div>--%>
                    <%--<div class="span2">--%>
                <a id="addSumType"
                   href="javascript:if(document.getElementById('sumType').value.trim()==''){alert('值不能为空');return void(0);}
                   if(confirm('您确定要添加此项吗?'))location.href='${pageContext.request.contextPath}/manage/add/sumType/'
                   +document.getElementById('sumType').value"
                   class="btn btn-small btn-success">添加</a>  </label>
        </div>
    </div>

    <table class="table table-bordered table-striped table-condensed">
        <tbody>
        <tr>

            <c:forEach items="${sumTypeyList}" var="sumType" varStatus="vs">
            <td>
                <input id="sumType_${vs.index}" style="width: 100px" value="${sumType.sumType}"/>
                <a id="editSumType"
                   href="javascript:if(confirm('您确定要修改此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/update/sumType/${sumType.id}/'
                    +document.getElementById('sumType_${vs.index}').value"
                   class="btn btn-small ">修改</a>
                <a id="delSumType"
                   href="javascript:if(confirm('您确定要删除此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/del/sumType/${sumType.id}'"
                   class="btn btn-small ">删除</a>
            </td>

            <c:if test="${(vs.index+1)%4==0}"></tr>
        <tr></c:if>
            </c:forEach>

        </tr>
        </tbody>
    </table>
    <hr/>
</c:if>


<c:if test="${type eq null or type eq 'country'}">

    <div class="row">
        <div class="span2"> <h3>国家列表</h3></div>

        <div class="span2">
            <label class="label" style="display: inline-block;width: 210px;height: 30px;padding-top: 3px"> 名称：<input
                    id="country" style="width: 100px;display: inline"/>
                    <%--</div>--%>
                    <%--<div class="span2">--%>
                <a id="addCountry"
                   href="javascript:if(document.getElementById('country').value.trim()==''){alert('值不能为空');return void(0);}
                   if(confirm('您确定要添加此项吗?'))location.href='${pageContext.request.contextPath}/manage/add/country/'
                   +document.getElementById('country').value"
                   class="btn btn-small btn-success">添加</a>  </label>
        </div>
    </div>

    <table class="table table-bordered table-striped table-condensed">
        <tbody>
        <tr>

            <c:forEach items="${countryList}" var="country" varStatus="vs">
            <td>
                <input id="country_${vs.index}" style="width: 100px" value="${country.country}"/>
                <a id="editCountry"
                   href="javascript:if(confirm('您确定要修改此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/update/country/${country.id}/'
                   +document.getElementById('country_${vs.index}').value"
                   class="btn btn-small ">修改</a>
                <a id="delCountr"
                   href="javascript:if(confirm('您确定要删除此项吗?'))
                    location.href='${pageContext.request.contextPath}/manage/del/country/${country.id}'"
                   class="btn btn-small ">删除</a>
            </td>

            <c:if test="${(vs.index+1)%4==0}"></tr>
        <tr></c:if>
            </c:forEach>

        </tr>
        </tbody>
    </table>
    <hr/>
</c:if>


<c:if test="${type eq null or type eq 'city'}">

    <div class="row">
        <div class="span2"><h3>城市列表</h3></div>

        <div class="span2">
            <label class="label" style="display: inline-block;width: 210px;height: 30px;padding-top: 3px"> 名称：<input
                    id="city" style="width: 100px;display: inline"/>
                    <%--</div>--%>
                    <%--<div class="span2">--%>
                <a id="addCity"
                   href="javascript:if(document.getElementById('city').value.trim()==''){alert('值不能为空');return void(0);}
                   if(confirm('您确定要添加此项吗?'))location.href='${pageContext.request.contextPath}/manage/add/city/'
                   +document.getElementById('city').value"
                   class="btn btn-small btn-success">添加</a>  </label>
        </div>
    </div>

    <table class="table table-bordered table-striped table-condensed">
        <tbody>
        <tr>

            <c:forEach items="${cityList}" var="city" varStatus="vs">
            <td>
                <input id="city_${vs.index}" style="width: 100px" value="${city.city}"/>
                <a id="editCity"
                   href="javascript:if(confirm('您确定要修改此项吗?'))
                   location.href='${pageContext.request.contextPath}/manage/update/city/${city.id}/'
                    +document.getElementById('city_${vs.index}').value"
                   class="btn btn-small ">修改</a>
                <a id="delCity"
                   href="javascript:if(confirm('您确定要删除此项吗?'))
                    location.href='${pageContext.request.contextPath}/manage/del/city/${city.id}'"
                   class="btn btn-small ">删除</a>
            </td>

            <c:if test="${(vs.index+1)%4==0}"></tr>
        <tr></c:if>
            </c:forEach>

        </tr>
        </tbody>
    </table>
</c:if>

</div>

</body>
</html>