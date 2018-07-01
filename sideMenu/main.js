
var minSidePos = -200;
var maxSidePos = 0;
var stepSideMenu = 4;
var status = 'closed';

function toggleSideMenu() {
    if (status === 'closed') {
        
        var id = setInterval(frame, 1);
        var i = minSidePos;

        function frame() {
            if (i >= maxSidePos) {
                clearInterval(id);
            } else {
                i += stepSideMenu;
                document.getElementById('side_menu').style.left = i + 'px';
            }
        }

        status = 'open';
        return;
    }

    if (status === 'open') {
        var id = setInterval(frame, 1);
        var i = maxSidePos;

        function frame() {
            if (i <= minSidePos) {
                clearInterval(id);
            } else {
                i -= stepSideMenu;
                document.getElementById('side_menu').style.left = i + 'px';
            }
        }

        status = 'closed';
        return;
    }
}