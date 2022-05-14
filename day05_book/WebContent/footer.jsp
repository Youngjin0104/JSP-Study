<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<footer>
	<p>Copyright By KGITBANK, 2021</p>
</footer>
<script>
	const maxHeight = window.outerHeight;
	const bodyHeight = document.body.clientHeight;
	const main = document.querySelector('main');
	const indexImg = document.querySelector('.indexImg');
	const table = document.querySelector('table');
	
	if(indexImg != null) {
		indexImg.style.height = ((maxHeight - bodyHeight) * 0.89) + 'px';
		indexImg.style.width = (((maxHeight - bodyHeight) * 0.89) / 9 * 16) + 'px'; 
		console.log(indexImg.style.height, indexImg.style.width);
	}
	
	if(table != null) {
		document.querySelectorAll('tr').forEach((tr) => {
			tr.querySelectorAll('th').forEach((th, index) => {
				th.style.textAlign = 'center';
				switch(index) {
				case 0: th.style.width = '100px'; break;
				case 1: th.style.width = '500px'; break;
				case 2: th.style.width = '200px'; break;
				case 3: th.style.width = '200px'; break;
				case 4: th.style.width = '200px'; break;
				case 5: th.style.width = '100px'; break;
				case 6: th.style.width = '100px'; break;
				case 7: th.style.width = '100px'; break;
				}
			});
		});
	}
	
</script>

</body>
</html>