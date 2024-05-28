<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="datasource" url="jdbc:mysql://localhost:3306/my_organization"
user ="root" password ="root" driver="com.mysql.cj.jdbc.Driver"/>
<body>
    <sql:query var="cards" dataSource="${datasource}">
        SELECT * FROM card ORDER BY id DESC LIMIT 1
    </sql:query>
    
    <div class ="retrievedbody">
    <c:forEach var="card" items="${cards.rows}">
        
            Customer Name:<c:out value="${card.name}"></c:out><br>
            Organization:<c:out value="${card.clg}"></c:out><br>
            Occupation:<c:out value="${card.branch}"></c:out><br>
            Mobile:<c:out value="${card.mobile}"></c:out><br>
            Email:<c:out value="${card.email}"></c:out><br>
            Address:<c:out value="${card.address}"></c:out><br>
            Facebook:<c:out value="${card.facebook}"></c:out><br>
            Whatsapp:<c:out value="${card.whatsapp}"></c:out><br>
            Instagram:<c:out value="${card.instagram}"></c:out><br>
            Linkedin:<c:out value="${card.linkedin}"></c:out><br>
            Description:<c:out value="${card.description}"></c:out><br>
            UPI:<c:out value="${card.upi}"></c:out><br>
            Bank Holder Name:<c:out value="${card.bname}"></c:out><br>
            Bank Name:<c:out value="${card.bank}"></c:out><br>
            Ac:<c:out value="${card.ac}"></c:out><br>
            Ifsc:<c:out value="${card.ifsc}"></c:out><br>
        </tr>
        </c:forEach>
</div>
</body>
