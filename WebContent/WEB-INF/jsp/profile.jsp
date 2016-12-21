<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="use" class="UserConnect.Utilisateur">
	   <%-- Ici, vous pouvez placer ce que vous voulez : 
	        définir des propriétés, créer d'autres objets, etc. --%>
	   <p>Nouveau bean a été chargé!</p>
	</jsp:useBean>
	
	    <p>
        <% 
    	/* Création d'une liste de légumes et insertion de quatre éléments */
    	java.util.List<String> legumes = new java.util.ArrayList<String>();
        legumes.add( "poireau" );
        legumes.add( "haricot" );
        legumes.add( "carotte");
        legumes.add( "pomme de terre" );
        request.setAttribute( "legumes" , legumes );
        %>

        <!-- Les quatre syntaxes suivantes retournent le deuxième élément de la liste de légumes  -->
        ${ legumes.get(1) }<br />
        ${ legumes[1] }<br />
        ${ legumes['1'] }<br />
        ${ legumes["1"] }<br />
    </p>
	<div class="content-container lyrics">
		<div class="title">
		 <% 
            String attribut = (String) request.getAttribute("name");
            out.println( attribut );
          %></div>
            <%  
	        	UserConnect.Utilisateur notreBean = ( UserConnect.Utilisateur) request.getAttribute("user");
            %>
            
            <%= notreBean.getPrenom() %>   
            <%= notreBean.getBio()  %>   
            <%= notreBean %>   
            
	          
	           
           
		<p>
			Pulling me further<br>Further than I've been before<br>Making
			me stronger<br>Shaking me right to the core, oh<br>I don't
			know what's in the stars<br>Never heard it from above, the world
			isn't ours<br>But I know what's in my heart<br>If you ain't
			mine I'll be torn apart<br>
		</p>
		<p>
			I don't know who's gonna kiss you when I'm gone<br>So I'm gonna
			love you now, like it's all I have<br>I know it'll kill me when
			it's over<br>I don't wanna think about it, I want you to love me
			now<br>
		</p>
		<p>
			I don't know who's gonna kiss you when I'm gone<br>So I'm gonna
			love you now, like it's all I have<br>I know it'll kill me when
			it's over<br>I don't wanna think about it, I want you to love me
			now<br>
		</p>
		<p>
			Oh, oh, love me now, oh, oh, oh, yeah<br>(Love me now, love me
			now)<br>Oh, I want you to love me now<br>
		</p>
		<p>
			Something inside us<br>Knows there's nothing guaranteed, yeah<br>Girl,
			I don't need you<br>To tell me that you'll never leave, no<br>When
			we've done all that we could<br>To turn darkness into light,
			turn evil to good<br>Even when we try so hard<br>For that
			perfect kind of love, it could all fall apart<br>
		</p>
		<p>
			And who's gonna kiss you when I'm gone?<br>Oh I'm gonna love you
			now, like it's all I have<br>And I know it'll kill me when it's
			over<br>I don't wanna think about it, I want you to love me now<br>
		</p>
		<p>
			Oh, love me now, oh, oh, oh<br>Love me now (love me now, love me
			now)<br>Love me now<br>
		</p>
		<p>
			Oh I don't know how the years will go down, it's alright<br>Let's
			make the most of every moment tonight<br>
		</p>
		<p>
			I don't know who's gonna kiss you when I'm gone<br>So I'm gonna
			love you now, like it's all I have<br>I know it'll kill me when
			it's over<br>I don't wanna think about it, I want you to love me
			now<br>
		</p>
		<p>
			I don't know who's gonna kiss you when I'm gone<br>So I'm gonna
			love you now, like it's all I have<br>And I know it'll kill me
			when it's over<br>I don't wanna think about it, I just wanna
			love you now<br>
		</p>
		<p>
			oh, oh <br>Love you now, oh, oh, oh<br>Love you now (love
			me now, love me now)<br>Oh, love you now, oh, oh, oh, oh<br>
		</p>
		
	</div>
</body>
</html>