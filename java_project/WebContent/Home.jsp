<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
* {
	margin: 0;
	padding: 0;
}
body {
	font-family: 'Poppins', sans-serif;
}
.wrapper {
	width: 1190px;
	margin: auto;
}
header {
	background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url(https://imgscf.slidemembers.com/docs/1/1/244/pharmacy_pharmacist_multipurpose_presentation_keynote_template_243482.jpg);
	height: 100vh;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	position: relative;
}
.nav-area {
	float: right;
	list-style: none;
	margin-top: 30px;
}
.nav-area li {
	display: inline-block;
}
.nav-area li a {
	color: #fff;
	text-decoration: none;
	padding: 5px 20px;
	font-family: poppins;
	font-size: 16px;
	text-transform: uppercase;
}
.nav-area li a:hover {
	background: #fff;
	color: #333;
}
.logo {
	float: left;
}
.logo img {
	width: 100%;
	padding: 15px 0;
}
.welcome-text {
	position: absolute;
	width: 600px;
	height: 300px;
	margin: 20% 30%;
	text-align: center;
}
.welcome-text h1 {
	text-align: center;
	color: #fff;
	text-transform: uppercase;
	font-size: 60px;
}
.welcome-text h1 span {
	color: #00fecb;
}
.welcome-text a {
	border: 1px solid #fff;
	padding: 10px 25px;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 14px;
	margin-top: 20px;
	display: inline-block;
	color: #fff;
}
.welcome-text a:hover {
	background: #fff;
	color: #333;
}
/*resposive*/

@media (max-width:600px) {
	.wrapper {
		width: 100%;
	}
	.logo {
		float: none;
		width: 50%;
		text-align: center;
		margin: auto;
	}
	img {
		width: ;
	}
	.nav-area {
		float: none;
		margin-top: 0;
	}
	.nav-area li a {
		padding: 5px;
		font-size: 11px;
	}
	.nav-area {
		text-align: center;
	}
	.welcome-text {
		width: 100%;
		height: auto;
		margin: 30% 0;
	}
	.welcome-text h1 {
		font-size: 30px;
	}
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
  <meta charset="UTF-8">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet">    
</head>
<body>
<br><br>

<header>
<div class="wrapper">
        <div class="logo">
            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABa1BMVEX////VoIABfceFxEEAAAC10zP///7///38//////v//f///v3ToYDz8/P///nb29uhoaG5ubmzs7MAfcXWn32Tk5M8PDz4+PjLy8vv7+8AesYAdMPBwcHl5eXZnX7ToIPR0dHWnofr2swFfMsAfsKmzOu10jgAc8EAdr0Aes8BgMDZoXjNnIgAcsWGxD3UmXosLCwRERPWsZn36uLWp47EnI0mgrnPqXHWonwAedTNo4MAWpp/wy9Aksfv+/5DlchTU1MbGxtLS0tra20YGBjix7bauqTs2tLH5PqwzOeCtd1Zo9Qzisre7/Sfw9aTvNcgjdOJweB2ruRjpM3+9uvS7vXAmHcjfbcch7n66trQ4vBzjqG63urVtJ/h79O1nph9f4iq0HuWylxQaJDG465re46biowAV4wAV6DA35yp0Xk4c6YAUpkEaKY8dqHu++nd7sWhzGXa56PQ4YvG23S+1k/j8Luv0QDY5ZclHKpBAAAPp0lEQVR4nO2di3/SVhvHDxCTc0hIaUnLpS1BoPZCb0B1rkVsrdTp7N5uw9fp9vZV123q5lucde7Pf59zQhIu4RJIaN3nfKfUcEnzy/Oc53JywhDicDgcDofD4XA4HA6Hw+FwOBwOh8PhcDgcDofzzwKLIhIREkU89q4IFomMsCyLhCBJ8uDgvECSRKyqKkFIHntfRJQw2xnBcLpED47OKzDG4xuQIhIqi+6LXLIFsaRisB1GajlbOyrtAKWj2oMyQVSqTFzpFYlEDFVfPXz09Z3HlK8fPXxeZb+JYMnd7rwCXFJ8VivtakAgEKA/tIK2W8rWqUXDbvZEPUBVj7+5s7oyn4ulDFZXV1KP//WEuj++DHeF4VKvlQLpdJrKM7mtaemCUsoSVz6LMVHjS483VnOpYCrYSmr1y5Olqqr6JqMfkZpCbacoeqANRQkUtvSam4PCUvXbtflULBiMxWKt+uif/Gr+0RNpokaEWCBjuaZrWqAnmqZnYQCh8EBTYjUsqt/kl4N5qi/YRSwXC87Hvq2qWJ7UWAzTUfZM7yPPoFAqwxsHnnyC1SePl1Pd0lpVxubXvlJdDe1xgACjHoGNBinUC1pNpbXAANQl0JfK9ZUIIle+m5ANRbBgvbSlKwNtCOdAO1IHe+n3ED1z1Ef7ksvl7xzD24nvCuE3lHcLg9RZKkv9Aw4Wq4/nB2gzSa2sPYcQ7rdAiBxlvTDQQ02BBW2n3i9vSNWTQe7Zasfgc7/1Abg+2D8tFEiPO/U+ezs+WXEInz3kBVP5+WN/xUHvgOs7BWVwHLUkKgFqReQYBQmp5oe3YApSSS4WO8Z+jkRQSErDW9B01VIdOTkqIccn/ZOEk847qgcNTB+JpFYoKC4VptPUig4Kj0+G9VBLH1jxu8HheWQgZDwoBIaNMiZwQrQdp4haPXHhowa5fDC38tC/IpWE1bRLeU00vY7DrWNRhEYi5tpFmchYrEqbEV8UYlQbVWG6M2mox0G3Lmpp/B5ijU92rG/dHk1hIA3hpq2sPD4ZVMT0Zv6J6ktAhQLzKO02yjRRWEQ1jSgT6fjxaD5Kyae+Jn40U7DLcsB1mGnBTv0q5MGR9VFWjon3NiQEo6OhqzUn0mldNcYiqeZGHYMG848k7yMNnbPY1YYvZrqA4sa0IozBsUwYTK1VvS/AsYSzo8trQgs4GR0/To0+CBmxjYfej0PwiqOxFQbSUMC56iZ62DD3vecCoS1Udz1QqClP1lbHG4RUYfCk6r1CXB5fICSN9L/XoKN3Xa61k8/RLspjRxU9GIYUvXDz1uApi4E2XFnyfj4D1zxRqF3/4ubT1dW18SQGVx85t5xjURqxJm1HSV8vrP8QXB1PYGz1LgR3b91UxCMWbB1cVzS9cH0N0sXaGGMxljoRiccKJTx4gnRYdrWbT6GXHctTU47TBuNA8JZnCtPK7fVbX44XT5eR6vFAJHIh4EmoAdbBUSHcjJUWl+NeK5Ti3tkwQJPG+tPg6q3RzbgcUT32Uy+9NNBMGsEvb42uMOy9QtdzbP1Q0ro2VtJY8TzhS3hUMboecLjQqGu71FFjudGSRiwvEtnr/qI04hSGkt55VnK6mApJ49ZqfrSkkbpDvM6HCNW00RRqCjSFTjPlmv7F+tMvR7JgKvfI8wlFqLxvj6RQ261jCTlJ1KGA272VGqEZztPKW/J4II7WPelKYaeMsIyxWtK6PJUWcOtPY1CGux2LsY3nnndPEq6PMElzmwo0zpBaKjh8Xr+9uxZczbvtplJ57ztgURplFkPbLTenusGK/3Eai4p2/YdV1zb0YxYDSnm3LbCuaTtlTOi1MEzd3OnC3DpLGtDzu6tS55e8VyhhVNfTrhxVKeyWW/YAWnecksYIXX8sdez9XJsxI+zKhjAG2wK6KMUdk4b7rj/1tU/XEMuamwsz1EVbzjRmq9ccxuIIXf/yc18WZooiKrlJ+noEY8mQRhf7sqWVkDS2Ah2n6bpSCNy+/nRYN40FU1DQ+HQxHz/bGnocQqJvfkpSJWReK4JispReb29SIB7tBAo/uvDRjZ98Uyg6BXxngcozc6SQsHSqIrl5SGL1v+mOneiBwu0Xy8MvOsndhYrNn4VDYVzfGlJh4Zl9ls9fVl6dGqcI/sjVH9sjsq4Vbv78bvhrNbGNY3oVxReFcMzZgj6wEdYUvfDAWKktSaJ4GqqENitnavPCtIiqv79YL2jargJ1HF2hevOXPbDg0Plw+Vv/FtRINBgWBs+5aYWj5idEgs42K6FQaHPzpRpWm0/Ff9/75debGqjU9PVff/nt9etYfuirUfN3vJ6gaYHeUzFEdapoCnQ2ojFS3hj6QqHKW9V4RpLAin/s7b37Gfj9t73Xe+8gjg7bYqTWjlUfF0VJsoTLdFlb36ShaVm6glCWwFxU4KahsfJWAkelK/lFqfr767293/Yor/dWgqncsAJjG1+JPo1Bm6yi9en2dXqRkN0xQcfdGSijAqlGkIhktngSglD1f38wfX+8HnrlHiW/8ZPP6tjqy6ze/wqGXjZWnqmoUWmakCkMVd4Y00eYECnOJL5bcSEPXHT+G98NSM8/yvafGy5hI1PI51RWU6AhsWEtgCXxH5aNo3bR46eWVOznsj0D6oBZqG0UZ09VAltl+iY65l5WQm1shl41ow2kErl6ZyXn5np+Ls96ponclYCl7Fa6h6cqgR0qIqyKqLEZCnVKfGPtBMbinZSbcju/sTS5+0r6jEUFAikTIKFXlVCnxsrmuaVQAiu6mYWaX/Jx2WUnYYSzPdZCK4UIPQ5oRBqVThPSePoGGUU4hn2Q6t2hK5kYFej/Ov1WaLhxGIqKgqkvSQS973JSZkXVuocJggZYcSiNuTU/5i36EsZiNuDkqFqNhUuCzh0FhipnyFx1F5bUYSVOdAzaOCYNzZiaweis20mZo75vi4YEIuoQCkGgT/3SEBI7PHXLONcSeu8oECSeW15K5zVY0hjgovnlJTThMdhEzCrpzgJONy7riWoPgaHKaduxksGOCnnwsm6XdUoaO8QoW06dhyHtFNv2QcjApDHRNNEOTRodMzfaETYUOuQKQ2HoJeqYgSP9JcIY9LNfGkhHAafVsMzGWY9AA176vmMPILJ6N9Vj3UKzVLtEoIALtBZwVCE74WeVHm7apZA2IT3HIgi8nFuAbehY1MZUKMk9k8by0iXd5NxGa9IAhZJLhRjKB5o0uq2Yg0QvXU6a6AAkpm2FpKmw1zh863STpOTUaaxtLF2Nb41oTRoQSw2FvWJpaPONg8IwIWHcacXYJaaJLqwCTis1FZ73yhabZw4rYeh3fHQljcl3E/2wksaOyu7AJ31qGisfyhLke4mIBNplhMUw6/rb0sRV+fKWtq7fnNl2bp7AiFZshCgZFmlVg4y5ubau/5K6id5YY1Ezror27C0qL63bziT6fSb0e3uQMXvT1vVfpTHIsLr+wgN2ixqWe/aHbHKf9ojq6Z8fLi4uPvzZoFMbIg5LVtd/CR39MBhdf8nYkNDbza5pGsp5WJbAdmrj4prJpxsXDXr7poSMrj81+Y5+GMyuX286Yfi0EuqUyOZpWBn918dPlsBrN0Dkxz9VpDa7/uBVG4M2YEUF3JT+E8voffdc2+arc3qpWwX73bhhK2T/vDhn1RAkjeVL6uiHIRsIpI8Q+7IPyaFF3KQmDKOGYbcOPv0lS/S7XMTqw0vq6IdBpFaMoOZk05vNTi99D44IAj916wPOWfqTPfhGNB+BpLFbqCFj3WBYfdVpwwakitM2D7W5kMJmLr3ChNl18DpmC2kICzatmeINkvH5x2s9nNRcTilfWRdtkt2qmcNIbLT6KSR7cMMPji5649pH1bxsfNWhXX+ZzXsTOOIzO55W3mIozBpOIxAEfmpACfd5KKRjscS+P04kYlg9swS+pAW2+tFRIYxCY5nA50K2Rq/WQ0SFCq5BSxv47w3kARpHHXyUPnVOrsy3QA6D+KBsXo2GtPiqAjSMzQ8O+qjAU7++BsIfMEbliOlxkoRfbr49ZzdEivUeTvrX5yWQrrYlSWIeM5HRqSqzVKCeOwfSBi1JL/OI3cLMF7EPmZhPiuSDle5vGA/w46JOs8jnE2X6oSJyevHpU2tJ8+ljQ730Lyr1EBHsWf8bsp+VJE7RP8V8DAkZ3zd83vjzw4cPf/9F153SSZrB3zzI4XA4HA6Hw+FwOBwOh8PhcDhXl3gEaNuEx0jEvj1QjkTi9uvt74a3x5tPyy3PtX4AXksm23be9uYJMCscFO9vz5qbUeEePArCtP2G4v19a2NKOLhfPDi0RM4V2WszgjBlvWf/fvHQ3v/CXFFg+wQWi/RtU8L9Ra9V9AMU7t8rCjPNzW6Fc0JRsBRNCcV7+wfCvvUiO2bzByOyXRTmLCNmBGFu/95cc+tQeIHQC6HlBEyAWQF+/T79zYwuhcni9qGwYG6BwkU0LWybkkHaCyqjRWFG2N8WLCNFhe2WX5YQDiLxAyHhh5CezNJDOOytMCEcRgXLiZnChVaFB0IcPr5tK4wK0UP741HBtB9jW1hItD/jP8yGbQohlrQonBWiCdsruxQKL4SZSHF/zlZ4KCRaTkmHwqjw4oUQ9UNHb7q8FAID/LUU7guJpCCYW6BwNnrPjBxU4UJxPyok7EgT2RbiGfsNHQojwja87ouQnswK97cPBGukwbg5PDy0FSZhTCXnhExzc4qdgDnLYPDKrFDcRrbCRTDwomDFpg6FYOEJxxkWS+/d228ZN+3jMMMkWY4FChP7tg+CwgTImW1ROCMwH7DPWLtCiK0ZH1T0g3ppSwLuVBgV9mdnD62BSMfhglA0Uzj1UhSdTbYohFwwO2ufhE6FMMSTaLLMtoXzLoWHNFNOWQORRZpt24hzTWPZCllUnbZ0TQvF6MKCHVuSV0AhPTZLYYQdeuS+6VpTdDtqH+V2p0JjCMJjM5zE96nXWpGKKpxoQQNMzUy3b9JDnplpHkZ8hhU7C+Z2ZGY6Ag/mpvXCzExT8yL7fHx6xrJUZiY6Y6d42GFrXcvhcDgczpUkTis4lq3pg0wf4nH7L0L2T9T2P5lnz8rWLtr2OeFmoj/TC3GUyUCGXpiCh8RUHE0lIig5DYl9BsoWSOeLiQVI+lE5A+UBbCaNYia+kKDpPE4/k2TvQwn47MJi0vjw1YGWH5kFWloi0JrIUIVw2Bk6g5RgR56IJzMomUhk4M1Q4MAGg+qagpMQT9BnTIX0bCSnJ12J9oXWV1MRaj4qIUO3EkkUyTDh7OXkAkhPLk5l4FkQE5k2jAjGAk30LfS90wlDYQRqtMjVsiGHw+FwOBwOh8PhcDgcDofD4XA4HA6Hw+FwOBwOh8P5HPg/2gTiUooX3pcAAAAASUVORK5CYII=" alt="">
        </div>
<ul class="nav-area">
<li><a href="Home.jsp">Home</a></li>
<li><a href="login.jsp">Sign In</a></li>
<li><a href="About.jsp">About</a></li>
<li><a href="Contact.jsp">Contact</a></li>
</ul>
</div>
</header>
</body>
</html>