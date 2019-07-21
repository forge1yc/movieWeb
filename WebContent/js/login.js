$('#mpanel4').slideVerify({
    type: 2, //类型
    vOffset: 5, //误差量，根据需求自行调整
    vSpace: 5, //间隔
    imgName: ['1.jpg', '2.jpg'],
    imgSize: {
        width: '200px',
        height: '100px',
    },
    blockSize: {
        width: '25px',
        height: '25px',
    },
    barSize: {
        width: '200px',
        height: '25px',
    },
    ready: function () {},
    success: function () {
        alert('验证成功，请点击确认信息完成登录！');
        //......后续操作
    },
    error: function () {
        alert('验证失败！请从新验证');
    }

});
$('#mpanel2').codeVerify({
    type: 1,
    width: '200px',
    height: '50px',
    fontSize: '30px',
    codeLength: 6,
    btnId: 'check-btn',
    ready: function () {},
    success: function () {
        alert('验证匹配！');
    },
    error: function () {
        alert('验证码不匹配！');
    }
});

$('#mpanel3').codeVerify({
    type: 2,
    figure: 50, //位数，仅在type=2时生效
    arith: 0, //算法，支持加减乘，不填为随机，仅在type=2时生效
    width: '200px',
    height: '50px',
    fontSize: '30px',
    btnId: 'check-btn2',
    ready: function () {},
    success: function () {
        alert('验证匹配！');
    },
    error: function () {
        alert('验证码不匹配！');
    }
});

$('#mpanel1').slideVerify({
    type: 1, //类型
    vOffset: 5, //误差量，根据需求自行调整
    barSize: {
        width: '50%',
        height: '40px',
    },
    ready: function () {},
    success: function () {
        alert('验证成功，添加你自己的代码！');
        //......后续操作
    },
    error: function () {
        //		       alert('验证失败！');
    }

});


$('#mpanel5').pointsVerify({
    defaultNum: 4, //默认的文字数量
    checkNum: 2, //校对的文字数量
    vSpace: 5, //间隔
    imgName: ['1.jpg', '2.jpg'],
    imgSize: {
        width: '400px',
        height: '200px',
    },
    barSize: {
        width: '400px',
        height: '40px',
    },
    ready: function () {},
    success: function () {
        alert('验证成功，添加你自己的代码！');
        //......后续操作
    },
    error: function () {
        //		        	alert('验证失败！');
    }

});

$('#mpanel6').pointsVerify({
    defaultNum: 4, //默认的文字数量
    checkNum: 2, //校对的文字数量
    vSpace: 5, //间隔
    imgName: ['1.jpg', '2.jpg'],
    imgSize: {
        width: '400px',
        height: '200px',
    },
    barSize: {
        width: '400px',
        height: '40px',
    },
    ready: function () {},
    success: function () {
        alert('验证成功，添加你自己的代码！');
        //......后续操作
    },
    error: function () {
        //		        	alert('验证失败！');
    }
});