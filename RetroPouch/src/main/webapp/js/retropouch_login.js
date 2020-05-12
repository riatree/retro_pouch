let $userBtn = $('.user-btn'),
    $userInfo = $('.user-info_box');

$(document).on("click", function (e) {
    if(!$(e.target).is($userBtn)) {
        if(!$userInfo.hasClass("hidden")) {
            $userInfo.addClass("hidden");
        }
    }
});
$userBtn.on("click", function () {
    $userInfo.toggleClass("hidden");
});