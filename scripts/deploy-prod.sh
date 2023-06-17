#!/bin/bash

if [ -n "$VERCEL_PROJECT_ID_MASTER" ]; then
	export VERCEL_PROJECT_ID=$VERCEL_PROJECT_ID_MASTER
else
	echo "\$VERCEL_PROJECT_ID_MASTER is not set."
	exit 1
fi

vercel pull --yes --environment=production
vercel build --prod
vercel deploy --prebuilt --prod
