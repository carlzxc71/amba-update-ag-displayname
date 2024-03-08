#! /bin/bash
set -e
if ! az account show; then
    az login --identity
fi

# Fetch IDs, properly handling newlines
IFS=$'\n' IDs=($(az monitor action-group list --query "[?name.contains(@,'AMBA')].id" --output tsv))

# Iterate over each ID
for ID in "${IDs[@]}"; do
    az monitor action-group update --ids $ID --group-short-name $DISPLAYNAME
done

az monitor action-group list -o table
