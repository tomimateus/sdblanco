// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function yellowCards(team, id, op) {
    cards = parseInt(document.getElementById(team + '_yellows_' + id).innerHTML);
    if (op == '+') {
        document.getElementById(team + '_yellows_' + id).innerHTML = cards + 1;
        document.getElementById('hidden_' + team + '_yellows_' + id).value = cards + 1;
    } else if (op == '-' && cards > 0) {
        document.getElementById(team + '_yellows_' + id).innerHTML = cards - 1;
        document.getElementById('hidden_' + team + '_yellows_' + id).value = cards - 1;
    }
}

function redCards(team, id, op) {
    cards = parseInt(document.getElementById(team + '_reds_' + id).innerHTML);
    if (op == '+') {
        document.getElementById(team + '_reds_' + id).innerHTML = cards + 1;
        document.getElementById('hidden_' + team + '_reds_' + id).value = cards + 1;
    } else if (op == '-' && cards > 0) {
        document.getElementById(team + '_reds_' + id).innerHTML = cards - 1;
        document.getElementById('hidden_' + team + '_reds_' + id).value = cards - 1;
    }
}