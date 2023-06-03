#!/bin/sh
# Get notified when you favorite cars are avlailbe!

URL="https://www.autovit.ro/autoturisme/de-la-2017\?search%5Bfilter_enum_damaged%5D\=0\&search%5Bfilter_enum_gearbox%5D\=automatic\&search%5Bfilter_enum_keyless_entry%5D\=1\&search%5Bfilter_enum_keyless_go%5D\=1\&search%5Bfilter_enum_no_accident%5D\=1\&search%5Bfilter_enum_original_owner%5D\=1\&search%5Bfilter_enum_pollution_standard%5D\=euro-6\&search%5Bfilter_float_mileage%3Ato%5D\=125000\&search%5Bfilter_float_price%3Ato%5D\=11000\&search%5Badvanced_search_expanded%5D\=true"

RESULT=$(eval curl -s $URL | grep -ic "Nu sunt rezultate")

if [ $RESULT -eq 0 ]; then
  # if macOS show a dialog on screen
  if [ $OSTYPE[1,6] = 'darwin' ]; then
    osascript >/dev/null <<EOT
    tell app "System Events" to display dialog "You got cars!" 
EOT
  fi
  echo "There was at least one car at: $(date '+%d-%m-%y %H:%M')" >> ~/car_results.log
fi