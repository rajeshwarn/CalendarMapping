﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CalendarMapping.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;
using Google;
using System.Globalization;

namespace CalendarMapping.Controllers
{
    public class EventController : Controller
    {
        private readonly DBContext _db;
        private readonly UserManager<User> _userManager;

        public EventController(UserManager<User> userManager, DBContext db)
        {
            _userManager = userManager;
            _db = db;
        }

        //Empty constructor for EventControllerTest BUT needs to be commented out when running program otherwise Event/Index is a blank page
        //public EventController() { }

        //-----------------------------------------------------------------------------------------------------//

        [Authorize(Roles = "SiteBoss, AccountHolder")]
        public async Task<IActionResult> Index()
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);

            var eventsList = _db.Events.Where(e => e.User.Id == currentUser.Id).OrderBy(e => e.StartingDateTime).ToList();

            ViewData.Add("UserId", userId);

            return View(eventsList);
        }

        //Event Details
        [Authorize(Roles = "SiteBoss, AccountHolder")]
        public IActionResult Detail(int eventId)
        {
            var currentEvent = _db.Events.FirstOrDefault(e => e.Id == eventId);
            return View(currentEvent);
        }

        //Edit An Event
        [Authorize(Roles = "SiteBoss, AccountHolder")]
        [HttpPost]
        public IActionResult EditEvent(string description, DateTime startingDateTime, DateTime endingDateTime, string address, int eventId)
        {
            var editedEvent = _db.Events.Where(e => e.Id == eventId).FirstOrDefault();
            editedEvent.Description = description;
            editedEvent.StartingDateTime = startingDateTime;
            editedEvent.EndingDateTime = endingDateTime;
            editedEvent.Address = address;

            _db.SaveChanges();

            //Reloads current page not redirect to Event/Index
            return RedirectToAction("Index");
        }

        //Delete An Event
        [Authorize(Roles = "SiteBoss, AccountHolder")]
        [HttpPost]
        public IActionResult DeleteEvent(int eventId)
        {
            var selectedEvent = _db.Events.FirstOrDefault(e => e.Id == eventId);
            _db.Events.Remove(selectedEvent);
            _db.SaveChanges();

            return RedirectToAction("Index");
        }

        //-----------------------------------------------------------------------------------------------------//

        //Create Today's Events Map
        [Authorize(Roles = "SiteBoss, AccountHolder")]
        [HttpPost]
        public IActionResult UserEventsMap(string userId)
        {
            var eventsList = _db.Events.Where(e => e.User.Id == userId).ToList();
            var todaysEvents = new List<Event>();

            foreach (var individualEvent in eventsList)
            {
                if (individualEvent.StartingDateTime.Month == DateTime.Today.Month && individualEvent.StartingDateTime.Day == DateTime.Today.Day && individualEvent.StartingDateTime.Year == DateTime.Today.Year)
                {
                    todaysEvents.Add(individualEvent);
                }
            }

            return Json(todaysEvents);
        }

        //View Past Events
        [HttpPost]
        public IActionResult PastEvents(string userId, DateTime currentDate)
        {
            var eventsList = _db.Events.Where(e => e.User.Id == userId).ToList();
            var previousEvents = new List<Event>();

            foreach (var individualEvent in eventsList)
            {
                if (individualEvent.StartingDateTime.Month == currentDate.Month && individualEvent.StartingDateTime.Day == (currentDate.Day - 1) && individualEvent.StartingDateTime.Year == currentDate.Year)
                {
                    previousEvents.Add(individualEvent);
                }
            }

            return Json(previousEvents);
        }

        //View Future Events
        //[HttpPost]
        //public IActionResult FutureEvents(string userId, DateTime currentDate)
        //{
        //    var eventsList = _db.Events.Where(e => e.User.Id == userId).ToList();
        //    var futureEvents = new List<Event>();

        //    foreach (var individualEvent in eventsList)
        //    {
        //        if (individualEvent.StartingDateTime.Month == currentDate.Month && individualEvent.StartingDateTime.Day == (currentDate.Day + 1) && individualEvent.StartingDateTime.Year == currentDate.Year)
        //        {
        //            futureEvents.Add(individualEvent);
        //        }
        //    }

        //    return Json(futureEvents);
        //}
    }
}