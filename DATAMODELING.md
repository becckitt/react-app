# Data Modeling for our 99cent app

## User
- First name (required), string
- Last name (Required), string
- Email address, string (it looks like from the mocks users are typically found by their full name; in the real world i would wonder if we want to enforce email uniqueness and index on emails for faster lookup, since names are not guaranteed to be unique)
- Payment (in a production world, this would probably be outsourced, and stored securely), string
- Referrals: # will determine platinum or gold status
  - Status related to referral #
- JWT/Authentication: Not going to be able to implement in time for this, but with more time I'd add in more auth to the endpoints, likely using JWT.

## Analytics
- Google analytics

## Referrals
- Referrer (ie Twitter, FB)
- Research for links: [Glossier referral links](https://www.glossier.com/account/referral), [Reddit Skincare referral code threads](https://www.reddit.com/r/SkincareAddiction/search/?q=referral%20code%20thread&restrict_sr=1)
- Thought process 1: Generate a link, and append `referrer=user_id`. When a user visits the site given a link, check the referrer id, find the associated user, and increment their referral number. (flaw: no referral model means there's no good place for the concept of a referral status [ie platinum, gold] to live. also, no good way to track who got referred if we want that)
- Thought process 2: Let's go ahead and give this a model. Would need to add a column to User to store a generated unique referral code (maybe a hashed version of their name or id). Would need a Referral table, which would have a foreign key to the referring  user, and a foreign key to the referred user, as well as a column for source to determine where the referral came from. Upon successful signup through the form, a referral would be generated in the api call to create the new user. Referral count would be determined by the count of referrals that belong_to a user, and the model would be able to determine referral level based on count. 
  - Conditions to guard against: User can't refer themselves (referrer and referred cant be the same), referral code must be valid

------------
## Endpoints
- GET all members /members to populate list
- POST /user to create a user w/ form params _(possibly validate so we don't have duplicate users. I would clarify here what we want to do in case a user, say, wants to pay 99 cents dozens of times. For the first draft I'm going to assume we just want them to be able to pay once)_

## API/backend
- Rails is an obvious choice bc I've set up a few APIs with it and it's firaly simple. A downside is it has a ton of unnecessary stuff on setup.
- Node would be a great choice, as it's also in Javascript, so would integrate nicely. There's a lot of support for React/Node apps as well. [MERN stack tutorial](https://alligator.io/react/mern-stack-intro/)
- Go, since this is a small app it could be a great opportunity to learn. Also since it's the language of choice, would be a good decision since if I were in the real world deciding on the stack for a company app, I would probably fall on past precedent to decide what technology we would use.

------------
## Integrations
- Analytics platform
- Referral program

------------
## State to keep track of
- Need to know current user, so we can add 'That's you!' next to their name, put current user at top of members list

# Given more time I would...
- Clean up the state in React. This was my first time building a React app outside of tutorials, and while it went fine, I'm sure there is some cleanup specifically around state management to do. Redux feels a little intense for such a small app, but it's something I considered.
- Referral system: As nice as our sample share text is, I am sure users would love to be able to edit it. I would change the referral system to a form, and change the text to input. I would also hook up the submit buttons to actual social implementations, so you could tweet it out. Finally, I would add the current user into state 
- Tests! I would add more tests. Particularly on the frontend.

