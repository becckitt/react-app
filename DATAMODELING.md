# Data Modeling for our 99cent app

## User
- First name (required), string
- Last name (Required), string
- Email address, string (it looks like from the mocks users are typically found by their full name; in the real world i would wonder if we want to enforce email uniqueness and index on emails for faster lookup, since names are not guaranteed to be unique)
- Payment (in a production world, this would probably be outsourced, and stored securely), string
- Referrals: Can 'have many'. # will determine platinum or gold status
  - Status related to referral #
- jwt?

## Analytics
- 

## Referrals
- Referrer (ie Twitter, FB)
- 

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


