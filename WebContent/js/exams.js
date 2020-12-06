function showExam(n,cur) {
	hideQuickGlance();
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

function toggleQuickGlance() {
	if(document.getElementById("QuickGlanceTable").style.display == "block")
	{
		document.getElementById("QuickGlanceTable").style.display = "none";
	}
	else
	{
		document.getElementById("QuickGlanceTable").style.display = "block";
	}
}

function hideQuickGlance() {
	document.getElementById("QuickGlanceTable").style.display = "none";
}

function searchExam() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    examsDiv = document.getElementById("myExams");
    li = examsDiv.getElementsByTagName('a');
  
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