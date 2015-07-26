# hubot-slack-information

Show an information of the Slack.

See [`src/slack-information.coffee`](src/slack-information.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install --save https://github.com/ganta/hubot-slack-information/tarball/v1.0.0`

Then add **hubot-slack-information** to your `external-scripts.json`:

```json
["hubot-slack-information"]
```

## Sample Interaction

```
user1>> hubot whoami
hubot>> name: `user1`, id: `U01234567`, real_name: `John Smith`, email: `john.smith@example.com`
```

```
user1>> hubot who is hans
hubot>> name: `hans`, id: `U01ABCDEF`, real_name: `Hans Schmidt`, email: `hans.schmidt@example.com`
```
