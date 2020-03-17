$(document).ready(function () {
    //初始化浮窗		   
    window.setInterval('compFloatScroll()', 200);
    ShowComp();
});

//获得浮窗每次滚动的高度
function body() {
    var bodyST, bodyCH;
    if (window.pageYOffset) {
        bodyST = window.pageYOffset;
    } else if (document.documentElement && document.documentElement.scrollTop) {
        bodyST = document.documentElement.scrollTop;
    } else if (document.body) {
        bodyST = document.body.scrollTop;
    }
    if (window.innerHeight) {
        bodyCH = window.innerHeight;
    } else if (document.documentElement && document.documentElement.clientHeight) {
        bodyCH = document.documentElement.clientHeight;
    } else if (document.body) {
        bodyCH = document.body.clientHeight;
    }
    var W, SL;
    var w = window, d = document, dd = d.documentElement;
    if (dd && dd.clientWidth) {
        W = dd.clientWidth;
    } else if (w.innerWidth) {
        W = w.innerWidth;
    } else if (d.body) {
        W = d.body.clientWidth;
    }
    if (w.pageXOffset) {
        SL = w.pageXOffset;
    } else if (dd && dd.scrollLeft) {
        SL = dd.scrollLeft;
    } else if (d.body) {
        SL = d.body.scrollLeft;
    }
    return { "scrollTop": bodyST, "scrollLeft": SL, "clientWidth": W, "clientHeight": bodyCH };
}
//根据获得浮窗滚动的高度设浮窗的高度
function compFloatScroll() {
    document.getElementById('float').style.top = body().scrollTop + 250 + 'px';
}

function addComp(CollegeID, CollegeName) {
    var CompCollege = $.cookie("CompCollege");
    if (CompCollege == "") { CompCollege = undefined; }
    var obj;
    if (CompCollege != undefined) {
        if (CompCollege.indexOf("|") > 0) {
            var arr = CompCollege.split("|");
            if (arr.length == 4) {
                alert("最多只能有四所学校参加比较");
                return;
            }
            for (var i = 0; i < arr.length; i++) {
                obj = eval('(' + arr[i] + ')');
                if (obj.CollegeID == CollegeID) {
                    return;
                }
            }
        }
        else {
            obj = eval('(' + CompCollege + ')');
            if (obj.CollegeID == CollegeID) {
                return;
            }
        }
        var CompItem = CompCollege + "|" + '{ "CollegeID": ' + CollegeID + ', "CollegeName": "' + CollegeName + '" }';
    }
    else {
        var CompItem = '{ "CollegeID": ' + CollegeID + ', "CollegeName": "' + CollegeName + '" }';
    }
    $.cookie("CompCollege", CompItem, { expires: 30, path: "/" });
    ShowComp();
}

function ShowComp() {
    var CompCollege = $.cookie("CompCollege");
    var obj;
    var str = "";
    if (CompCollege == "") { CompCollege = undefined; }
    if (CompCollege != undefined) {
        if (CompCollege.indexOf("|") > 0) {
            var arr = CompCollege.split("|");
            for (var i = 0; i < arr.length; i++) {
                obj = eval('(' + arr[i] + ')');
                str += '<div id="com_item"><font size="1" color="#CCCCCC"><b>|</b></font><br><input type="button" title="单击学校名称可取消"  value="' + obj.CollegeName + '" onclick="Del(' + i + ')"><br></div>';
            }
        }
        else {
            obj = eval('(' + CompCollege + ')');
            str += '<div id="com_item"><font size="1" color="#CCCCCC"><b>|</b></font><br><input type="button" title="单击学校名称可取消"  value="' + obj.CollegeName + '" onclick="Del(0)"><br></div>';
        }
    }
    $("#ShowComp").html(str);
}

function Del(n) {
    var CompItem = "";
    var obj;
    var CompCollege = $.cookie("CompCollege");
    var arr = CompCollege.split("|");
    for (var i = 0; i < arr.length; i++) {
        if (i != n) {
            obj = eval('(' + arr[i] + ')');
            if (CompItem == "") {
                CompItem = '{ "CollegeID": ' + obj.CollegeID + ', "CollegeName": "' + obj.CollegeName + '" }';
            }
            else {
                CompItem += "|" + '{ "CollegeID": ' + obj.CollegeID + ', "CollegeName": "' + obj.CollegeName + '" }';
            }
        }
    }
    $.cookie("CompCollege", CompItem, { expires: 30, path: '/' });
    ShowComp();
}