function setCookie()
{
    var value = window.location.hash;
    document.cookie = "Action=" + value; 
}