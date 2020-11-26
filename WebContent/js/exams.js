function showExam(n,cur) {
	if(document.getElementById("Exam-"+cur).style.display == "block")
	{
		document.getElementById("Exam-"+cur).style.display = "none";
		return;
	}
	for(i=1; i<=n; i++) {
		document.getElementById("Exam-"+i).style.display = "none";
	};
	document.getElementById("Exam-"+cur).style.display = "block";
}

function showQuickGlance() {
	if(document.getElementById("QuickGlanceTable").style.display == "block")
	{
		document.getElementById("QuickGlanceTable").style.display = "none";
	}
	else
	{
		document.getElementById("QuickGlanceTable").style.display = "block";
	}
}

function searchExam() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName('a');
  
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
      a = li[i];
      txtValue = a.textContent || a.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        li[i].style.display = "";
      } else {
        li[i].style.display = "none";
      }
    }
  }