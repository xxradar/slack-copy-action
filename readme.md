# Copy files via slack in a Github Action

You can invoke the action as ...

```
on: [push]

jobs:
  Slack-copy:
    runs-on: ubuntu-latest
    name: A job to copy files via slack !!!!
    steps:
      - uses: actions/checkout@v2
      - id: copying
        uses: xxradar/slack-copy-action@v5
        with:
          what-to-copy: 'README.md'
        env:  
          SLACK_TOKEN: ${{ secrets.SLACK_TOKEN }}
      - run: echo "Ending test-slack-action ..."
        shell: bash
```
