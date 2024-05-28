<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="datasource" url="jdbc:mysql://localhost:3306/my_organization"
user ="root" password ="root" driver="com.mysql.cj.jdbc.Driver"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href='https://fonts.googleapis.com/css?family=Tangerine' rel='stylesheet'>
    <title>digital-card</title>
    <link rel="icon" type="image/x-icon" href="C:\Users\Kartheek\OneDrive\Desktop\VCARD\INV.jpg">
</head>

<style>
    .card {
        position: relative;
        height: 535px;
        width: 300px;
        margin: 40px auto;
        box-shadow: 0 0px 5px rgba(0, 0, 0, 0.2);
        background-color: #f5f5ef;
    }
    .header {
        position: absolute;
        height: 100px;
        left: 0;
        right: 0;
        top: 0;
        background-image: linear-gradient(180deg, #000000 50%, #000000 50% );
        box-shadow: 0 0px 10px rgba(0, 0, 0, 0.2);
    }
    .header img {
        position: absolute;
        border-radius: 10%;
        height: 110px;
        width: 110px;
        left: 95px;
        top: 70px;
        border-radius: 50%;
        border: 3px solid #f5f5ef;
    }
    
    .header i{
        position: absolute;
        left: 72px;
        top: 10px;
    }
    .header p {
        position : absolute;
        top : 0px;
        left : 120px;
        color : white;
    }
    
    .header h3 {
        position: absolute;
        font-family: 'tangerine';
        color: black;
        font-size: 40px;
        font-weight: 600;
        letter-spacing: 1px;
        top: 145px;
        left: 70px;
        text-transform: capitalize;
    }
    .header h4 {
        position: absolute;
        font-family: sans-serif;
        color: black;
        font-size: 16px;
        font-weight: 500;
        letter-spacing: 1px;
        top: 200px;
        left: 100px;
        text-transform: capitalize;
    }
.header h5 {
        position: absolute;
        font-family: sans-serif;
        color: #f5f5ef;
        background-color: black;
        width: 90px;
        height: 22px;
        font-size: 16px;
        font-weight: 500;
        letter-spacing: 1px;
        top: 200px;
        left: 110px;
        text-align: center;
        text-transform: capitalize;
        
    }
    
    .body {
        position: absolute;
        height: 100px;
        left: 0px;
        right: 0px;
        top: 58%;
        background-color: #f5f5ef;
        box-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
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
        height: 50px;
        width: 100%;
        left: 0;
        right: 0;
        background-color: #f5f5ef;
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
        color: black;
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
        height: 60px;
        bottom: 10px;
        left: 0;
        right: 0;
        top : 500px;
        background-color: black;
       
    }
    
    .footer ul {
  display: flex;
  position: absolute;
  top: 12px;
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
  color: black;
  transition: .5s;
  z-index: 3;
  margin-left:-10px;
  margin-top:7px
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
    .insta{
        position : relative;
        height: 400px;
        width : 10px;
        left : 100px;
    }

</style>

<body background="C:\Users\Kartheek\OneDrive\Desktop\VCARD\7jQpLf.jpg ">
<sql:query var="cards" dataSource="${datasource}">
        SELECT * FROM card ORDER BY id DESC LIMIT 1
    </sql:query>
    

    <div class="card">
    
        <div class="header">
        <c:forEach var="card" items="${cards.rows}">
            <i class="fa fa-mortar-board" style="font-size:30px;color:WHITE"></i>
            <img src="k1.jpg">
            <p>M U R D O C H</p>
            <h3><c:out value="${card.name}"></c:out></h3>
            <h5><c:out value="${card.clg}"></c:out> </h5>
		  
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
                <li><a href="<c:out value="${card.facebook}"></c:out>"><i class="fab fa-facebook-f icon" style='font-size:25px'></i></a> </li>
                <li> <a href="<c:out value="${card.whatsapp}"></c:out>"><i class="fab fa-whatsapp icon" style='font-size:25px'></i></a></li>
                <li> <a href="<c:out value="${card.instagram}"></c:out>"><i class="fab fa-instagram icon" style='font-size:25px'></i></a></li>
                <li> <a href="<c:out value="${card.linkedin}"></c:out>"><i class="fab fa-linkedin-in icon" style='font-size:25px'></i></a></li>
            </ul>
            </c:forEach>
        </div>
    </div>

</body>

</html>