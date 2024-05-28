<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="datasource" url="jdbc:mysql://localhost:3306/my_organization"
user ="root" password ="root" driver="com.mysql.cj.jdbc.Driver"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <title>digital-card</title>
    <link rel="icon" type="image/x-icon" href="C:\Users\Kartheek\OneDrive\Desktop\VCARD\INV.jpg">
</head>

<style>
    .card {
        position: relative;
        height: 460px;
        width: 300px;
        background-color: white;
        margin: 40px auto;
        box-shadow: 0 0px 5px rgba(0, 0, 0, 0.2);
    }
    .header {
        position: absolute;
        height: 400px;
        left: 0;
        right: 0;
        top: 0;
        background-image: linear-gradient(525deg, #0047ab 50%, #f0f0f0 50% );
        box-shadow: 0 0px 10px rgba(0, 0, 0, 0.2);
    }
    .header img {
        position: absolute;
        border-radius: 50%;
        height: 120px;
        width: 120px;
        left: 160px;
        top: 100px;
    }
    
    .header i{
        position: absolute;
        left: 55px;
        top: 10px;
    }
    .header p {
        position : absolute;
        top : 0px;
        left : 85px;
        color : white;
    }
    
    .header h3 {
        position: absolute;
        font-family: sans-serif;
        color: white;
        font-size: 20px;
        font-weight: 600;
        letter-spacing: 1px;
        top: 50px;
        left: 20px;
    }
    .header h4 {
        position: absolute;
        font-family: sans-serif;
        color: whitesmoke;
        font-size: 16px;
        font-weight: 500;
        letter-spacing: 1px;
        top: 100px;
        left: 20px;
    }
.header h5 {
        position: absolute;
        font-family: sans-serif;
        color: whitesmoke;
        font-size: 16px;
        font-weight: 500;
        letter-spacing: 1px;
        top: 115px;
        left: 20px;
    }
    
    .body {
        position: absolute;
        height: 1000px;
        left: 0px;
        right: 0px;
        top: 70%;
        background-color: #f2f2f2;
        box-shadow: 0 0px 0px rgba(0, 0, 0, 0.2);
    }
    
    .body ul {
        position: absolute;
        left: 0;
        bottom: 30px;
        right: 0;
        top: 10px;
    }
    
    .body ul li {
        position: absolute;
        list-style: none;
        display: block;
        height: 38px;
        width: 100%;
        left: 0;
        right: 0;
        background-color: whitesmoke;
        transition: all .3s ease-in-out;
    }
    
    .body ul li p,
    h3,
    i {
        position: absolute;
    }
    
    .body ul li h3 {
        top: -20px;
        left: 58px;
        color: #576574;
    }
    
    .body ul li p {
        top: 11px;
        left: 59px;
        font-size: 12px;
        font-family: Sans-serif;
        color: #576574;
    }
    
    .body ul li i {
        left: 8px;
        top: 7px;
        color: #0047ab;
        font-size: 26px;
    }
    
    .body ul li:nth-child(1) {
        top: -16px;
    }
    
    .body ul li:nth-child(2) {
        top: 26px;
    }
    
    .body ul li:nth-child(3) {
        top: 68px;
    }
    
    .body ul li:nth-child(1) i {
        left: 12px;
    }
    
    .body li:hover {
        background-color: #E6E6FA;
        cursor: pointer;
	  margin-bottom:0px;
    } 
    .footer {
        position: absolute;
        height: 50px;
        bottom: 10px;
        left: 0;
        right: 0;
        top : 520px;
        background-image: linear-gradient(to right, #0047ab, #0047ab);
       
    }
    
    .footer ul {
  display: flex;
  position: absolute;
  top: 10px;
  left: 120px;
  transform: translate(-50%, -50%);
}

.footer ul li {
  list-style: none;
}

.footer ul li a {
  width: 40px;
  height: 40px;
  background-color: #fff;
  text-align: center;
  line-height: 80px;
  font-size: 35px;
 
  display: block;
  border-radius: 50%;
  position: relative;
  overflow: hidden;
  border: 3px solid #fff;
  z-index: 1;
  margin-left: 20px;
}

.footer ul li a .icon {
  position: absolute;
  color: #262626;
  transition: .5s;
  z-index: 3;
  margin-left:-10px;
  margin-top:6px
}

.footer ul li a:hover .icon {
  color: #fff;
  transform: rotateY(360deg);
}

.footer ul li a:before {
  content: "";
  position: absolute;
  top: 100%;
  left:0;
  width: 100%;
  height: 100%;
  background: #f00;
  transition: .5s;
  z-index: 2;
}

.footer ul li a:hover:before {
  top: 0;
}

.footer ul li:nth-child(1) a:before{
  background: #3b5999;
}

.footer ul li:nth-child(2) a:before{
  background: #25d366;
}

.footer ul li:nth-child(3) a:before {
  background: #c13584;
}

.footer ul li:nth-child(4) a:before {
  background: #0f0fff;
}
    .body {
        position: relative;
        height: 250px;
        width: 300px;
	  margin-bottom:20px;
    }

</style>

<body background="C:\Users\Kartheek\OneDrive\Desktop\VCARD\7jQpLf.jpg ">
<sql:query var="cards" dataSource="${datasource}">
        SELECT * FROM card ORDER BY id DESC LIMIT 1
    </sql:query>
    <div class="card">
     <c:forEach var="card" items="${cards.rows}">
        <div class="header">
            <i class='fas fa-dna' style='font-size:30px;color:whitesmoke'></i>
            <img src="k1.jpg">
            <p><c:out value="${card.clg}"></c:out></p>
            <h3><c:out value="${card.name}"></c:out></h3>
            <h4><c:out value="${card.branch}"></c:out></h4>
		  <h5></h5>
        </div>

        <div class="body">
            <ul>
                <li>
                    <h3><c:out value="${card.mobile}"></c:out></h3>
                    <p>Mobile number</p>
                    <i class="fas fa-mobile-alt"></i>
                </li>
                <li>
                    <h3><c:out value="${card.email}"></c:out></h3>
                    <p>Email address</p>
                    <i class="fas fa-envelope"></i>
                </li>
                <li>
                    <h3><c:out value="${card.address}"></c:out></h3>
                    <p>Address</p>
                    <i class="fas fa-map-marker-alt"></i>
                </li>
            </ul>
        </div>

        <div class="footer">
            <ul>
                <li><a href="<c:out value="${card.facebook}"></c:out>"><i class="fab fa-facebook-f icon" style='font-size:25px'></i></a></li>
                <li><a href="<c:out value="${card.whatsapp}"></c:out>"><i class="fab fa-whatsapp icon" style='font-size:25px'></i></a></li>
                <li><a href="<c:out value="${card.instagram}"></c:out>"><i class="fab fa-instagram icon" style='font-size:25px'></i></a></li>
                <li><a href="<c:out value="${card.linkedin}"></c:out>"><i class="fab fa-linkedin-in icon" style='font-size:25px'></i></a></li>
            </ul>
        </div>
                    </c:forEach>
</div>
</body>

</html>