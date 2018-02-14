# browser_fingerprint
# Browser Fingerprint Tests

Using the Panopticlick-Python project as a starting point, make modifications for program.  Concept is to preserve what is setup in
Panopticlick but add latest fingerprint library and collect results without requiring MySQL.  Add other fingerprinting collections such
as netstat.

Initial Version:
1) Use the Panaopticlick infrastructure as it provides both stand alone(no MySQL stand alone setup yet) and docker deployment.  Flask app
   framework and server.
2) Brought in latest fingerprint2js library and flask app routing http://localhost:5000/new_fingerprint
