function ShowHideDiv() {
    var ddlOther = document.getElementById("ddlOther");
    var dvOther = document.getElementById("dvOther");
    dvOther.style.display = ddlOther.value == "7" ? "block" : "none";
    var btnSubmit = document.getElementById("btnSubmit");
    btnSubmit.setAttribute("ValidationGroup", "other");
}


function selProject() {
   
    var selProjectType = document.getElementById("selProjectType");
    var btnSubmit = document.getElementById("btnSubmit");
    
    var dvWebDesign = document.getElementById("dvWebDesign");
    var dvExmpWebPage = document.getElementById("dvExmpWebPage");
    dvWebDesign.style.display = selProjectType.value == "0" ? "block" : "none";
    dvExmpWebPage.style.display = selProjectType.value == "0" ? "block" : "none";
    btnSubmit.setAttribute("ValidationGroup", selProjectType.value == "0" ? "web" : "XG");
  
    var dvDataAnalys = document.getElementById("dvDataAnalys");
    dvDataAnalys.style.display = selProjectType.value == "1" ? "block" : "none";
    btnSubmit.setAttribute("ValidationGroup", selProjectType.value == "1" ? "data" : "XG");

    
    var dvFixProgramBug = document.getElementById("dvFixProgramBug");
    dvFixProgramBug.style.display = selProjectType.value == "2" ? "block" : "none";
    dvSubject.style.display = selProjectType.value == "2" ? "block" : "none";
    btnSubmit.setAttribute("ValidationGroup", selProjectType.value == "2" ? "bug" : "XG");

  
    var dvTeaching = document.getElementById("dvTeaching");
    dvTeaching.style.display = selProjectType.value == "3" ? "block" : "none";
    dvSubject.style.display = selProjectType.value == "3" ? "block" : "none";
    btnSubmit.setAttribute("ValidationGroup", selProjectType.value == "3" ? "teach" : "XG");

   
    var dvOtherProject = document.getElementById("dvOtherProject");
    dvOtherProject.style.display = selProjectType.value == "4" ? "block" : "none";
    btnSubmit.setAttribute("ValidationGroup", selProjectType.value == "4" ? "other" : "XG");


}

/*function selProject() {
    var selProjectType = document.getElementById("selProjectType");
    var dvWebDesign = document.getElementById("dvWebDesign");
    var dvExmpWebPage = document.getElementById("dvExmpWebPage");
    dvWebDesign.style.display = selProjectType.value == "0" ? "block" : "none";
    dvExmpWebPage.style.display = selProjectType.value == "0" ? "block" : "none";
}
*/