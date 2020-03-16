function CommentSubmit(the, replayID, isReplay, CommentType) {
    var Content = $(the).parent().prev().val();
    var obj = $(the).parent().parent().parent();
    var num = parseInt(obj.find("#Comment_" + replayID).html()) + 1;
        
    if (Content == "") {
        alert("请输入评论内容");
        return;
    }
    $.getJSON("/Comment/AddComment/", {
        'InfoID': InfoID,
        'txtContent': Content,
        'replayID': replayID,
        'CommentType': CommentType
    },
    function (data) {
        if (typeof (data) != "undefined" && data != "") {
            html = "";
            var str = "";
            var time = new Date(data.AddTime);
            str += '    <span class="c1968">用户：' + data.UserName + ' [' + data.IP + ']</span>　<span class="c999">' + time.Format("yyyy-MM-dd") + '</span><br>';
            str += data.Content;
            str += '    <div class="tjann c999">';
            str += '        <div class="tjannz" onclick="AddDiggTop(this,' + data.CommentID + ')"><a href="javascript:void();"><span></span>(' + data.DiggTop + ')</a></div>';
            str += '        <div class="tjannh" onclick="Replay(this)"><a href="javascript:void()"><span></span>回复(<font id="Comment_' + data.CommentID + '">' + data.ReplayNum + '</font>)</a></div>';
            str += '        <div class="clear"></div>';
            str += '    </div>';
            str += '    <div class="olfc" style="display:none;">';
            str += '        <textarea class="olfcbd"></textarea>';
            str += '        <div class="olfcanx"><input class="olfcan" type="submit" value="提 交" onclick="CommentSubmit(this,' + data.CommentID + ',0,' + CommentType + ')"></div>';
            str += '    </div>';
            if (replayID == 0) {
                html += '<li id="li_' + data.CommentID + '" replayid="' + data.replayID + '">' + str + '</li>';
                html += $("#comment_ul").html();
                $("#comment_ul").html(html);
            }
            else {
                if (isReplay == 0) {
                    html += '<div class="plcr">';
                    html += $("#li_" + replayID).html();
                    html += '</div>';
                    html += str;
                    $("#li_" + replayID).html(html);
                    $("#li_" + replayID).attr("id", "li_" + data.CommentID);
                }
                else {
                    str = '     <div style="height:0px;border-top:1px #cccccc dashed;margin:30px 0px;"></div>';
                    str += '    <span class="c1968">用户：' + data.UserName + ' [' + data.IP + ']</span>　<span class="c999">' + time.Format("yyyy-MM-dd") + '</span><br>';
                    str += data.Content;
                    obj.html(obj.html() + str);
                }
            }
            obj.find("#Comment_" + replayID).html(num);
            $(".olfcbd").val("");
            $("#comment_ul .olfc").hide();
        }
        else {
            alert("发表评论失败，请重新提交。");
        }
    })
}
function GetReplay(CommentType) {
    $("#comment_ul li").each(function () {
        var ReplayID = parseInt($(this).attr("replayid"));
        html = "";
        layer = 0;
        if (ReplayID > 0) {
            GetReplay2(ReplayID, CommentType);
            $(this).html(html + $(this).html());
        }
    });
}
function GetReplay2(ReplayID, CommentType) {
    layer += 1;
    $.ajax({
        url: "/Comment/GetComment/?CommentID=" + ReplayID,
        dataType: 'json',
        async: false,
        success: function (data) {
            if (data != null) {
                var time = new Date(data.AddTime);
                
                html += '<div class="plcr">';
                if (data.replayID > 0 && layer < 5) {
                    GetReplay2(data.replayID);
                }
                html += '  <span class="c1968">用户：' + data.UserName + '[(' + data.IP + ')]</span>　<span class="c999">' + time.Format("yyyy-MM-dd") + '</span><br>';
                html += '  ' + data.Content + '';
                html += '  <div class="tjann c999">';
                html += '    <div class="tjannz" onclick="AddDiggTop(this,' + data.CommentID + ')"><a href="javascript:void();"><span></span>(' + data.DiggTop + ')</a></div>';
                html += '    <div class="tjannh" onclick="Replay(this)"><a href="javascript:void();"><span></span>回复(<font id="Comment_' + data.CommentID + '">' + data.ReplayNum + '</font>)</a></div>';
                html += '    <div class="clear"></div>';
                html += '  </div>';
                html += '  <div class="olfc" style="display:none;">';
                html += '    <textarea class="olfcbd"></textarea>';
                html += '    <div class="olfcanx"><input class="olfcan" type="submit" value="提 交" onclick="CommentSubmit(this,' + data.CommentID + ',1,' + CommentType + ')"></div>';
                html += '  </div>';
                html += '</div>';
            } else {
                alert("服务器繁忙，请稍后再试");
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("服务器繁忙");
        }
    });
}
function Replay(the) {
    var obj = $(the).parent().next();
    obj.toggle();
}

function AddDiggTop(the,CommentID) {
    if (typeof ($.cookie("DiggTop_" + CommentID)) != "undefined") { return; }

    $.post('/Comment/AddDiggTop', { "CommentID": CommentID }, function (i) {
        html = "<span></span>";
        html += "已支持("+i+")";
        $(the).html(html);
        $.cookie("DiggTop_" + CommentID, CommentID, { expires: 30 });
    });
}