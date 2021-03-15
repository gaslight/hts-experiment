/* eslint-disable camelcase */

import React, { useState, useRef } from "react";
import { Link } from "react-router-dom";
import PropTypes from "prop-types";

const EventList = ({ activeId, events }) => {
  const [searchTerm, setSearchTerm] = useState("");
  const searchInput = useRef(null);
  const filteredEvents = events
    .filter((el) => matchSearchTerm(el, searchTerm))
    .sort((a, b) => new Date(b.event_date) - new Date(a.event_date));

  return (
    <section className="eventList">
      <h2>
        Events
        <Link to="/events/new">New Event</Link>
      </h2>
      <input
        className="search"
        placeholder="Search"
        type="text"
        ref={searchInput}
        onKeyUp={() => setSearchTerm(searchInput.current.value)}
      />
      <ul>
        {filteredEvents.map((event) => (
          <li key={event.id}>
            <Link
              to={`/events/${event.id}`}
              className={activeId === event.id ? "active" : ""}
            >
              {event.event_date}
              {" - "}
              {event.event_type}
            </Link>
          </li>
        ))}
      </ul>
    </section>
  );
};

const matchSearchTerm = (
  { id, published, created_at, updated_at, ...rest },
  searchTerm
) =>
  Object.values(rest).some(
    (value) => value.toLowerCase().indexOf(searchTerm.toLowerCase()) > -1
  );

EventList.propTypes = {
  activeId: PropTypes.number,
  events: PropTypes.arrayOf(PropTypes.object),
};

EventList.defaultProps = {
  activeId: undefined,
  events: [],
};

export default EventList;
