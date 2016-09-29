﻿$(document).ready(function () {
    //Index
    $("#new-calendar-form").hide();
    $("#new-calendar-btn").click(function () {
        $("#new-calendar-form").toggle();
    });
    $("#new-calendar-form").submit(function (event) {
        event.preventDefault();
        $.ajax({
            type: "POST",
            dataType: "html",
            data: $(this).serialize(),
            url: $("#CreateCalendarUrl").val(),
            success: function (result) {
                location.reload();
            }
        });
    });
    $(".edit-calendar").submit(function (event) {
        event.preventDefault();
        $.ajax({
            type: "POST",
            dataType: "html",
            data: $(this).serialize(),
            url: $("#EditCalendarUrl").val(),
            success: function (result) {
                location.reload();
            }
        });
    });
    $(".delete-calendar").submit(function (event) {
        event.preventDefault();
        if (confirm("Are you sure you want to delete this calendar?")) {
            $.ajax({
                type: "POST",
                dataType: "html",
                data: $(this).serialize(),
                url: $("#DeleteCalendarUrl").val(),
                success: function (result) {
                    location.reload();
                }
            });
        }
    });
    //Detail
    $("#new-event-form").hide();
    $("#new-event-btn").click(function () {
        $("#new-event-form").toggle();
    });
    $("#new-event-form").submit(function (event) {
        event.preventDefault();
        $.ajax({
            type: "POST",
            dataType: "html",
            data: $(this).serialize(),
            url: $("#CreateEventUrl").val(),
            success: function (result) {
                location.reload();
            }
        });
    });
    $("#events-list").submit(function (event) {
        event.preventDefault();
        $.ajax({
            type: "GET",
            dataType: "json",
            data: $(this).serialize(),
            url: $("#EventsListUrl").val(),
            success: function (result) {
                for (var i = 0; i < result.length; i++)
                {
                    $("#individual-event").append("<h5>" + result[i].description + "--" + result[i].date + "</h5>");
                }
            }
        });
    });
    $(".delete-calendar-details").submit(function (event) {
        event.preventDefault();
        if (confirm("Are you sure you want to delete this calendar?")) {
            $.ajax({
                type: "POST",
                dataType: "html",
                data: $(this).serialize(),
                url: $("#DeleteCurrentCalendarUrl").val(),
                success: function (result) {
                    location.replace("Index");
                }
            });
        }
    });
});