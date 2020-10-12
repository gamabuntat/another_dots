function tmr(h) {
    let now = new Date();
    let date = now.getDate();
    let hours = now.getHours();
    let minutes = now.getMinutes();
    let seconds = now.getSeconds();
    let alarmDate = new Date(now.getFullYear(), now.getMonth(), date, hours, minutes, seconds + 3);
    console.log(alarmDate);
    while (now <= alarmDate) {
        now = new Date();
        console.log(now);
    }
    console.log( "alarm ")
}

tmr(1);
