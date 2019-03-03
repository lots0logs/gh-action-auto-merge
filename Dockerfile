FROM alpine:latest

LABEL repository="http://github.com/lots0logs/gh-action-auto-merge"
LABEL homepage="http://github.com/lots0logs/gh-action-auto-merge"
LABEL "com.github.actions.name"="Automatic Merge"
LABEL "com.github.actions.description"="Automatically merge branch upon '/merge $branch' comment."
LABEL "com.github.actions.icon"="git-merge"
LABEL "com.github.actions.color"="blue"

RUN apk --no-cache add jq bash curl git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
