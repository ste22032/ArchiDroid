#!/sbin/sh

#     _             _     _ ____            _     _
#    / \   _ __ ___| |__ (_)  _ \ _ __ ___ (_) __| |
#   / _ \ | '__/ __| '_ \| | | | | '__/ _ \| |/ _` |
#  / ___ \| | | (__| | | | | |_| | | | (_) | | (_| |
# /_/   \_\_|  \___|_| |_|_|____/|_|  \___/|_|\__,_|
#
# Copyright 2014 Łukasz "JustArchi" Domeradzki
# Contact: JustArchi@JustArchi.net
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# exit 0 -> All fine, we're running ArchiDroid
# exit 1 -> All fine, we're NOT running ArchiDroid
# exit 2 -> No build.prop detected, we can't check ArchiDroid existance. Full wipe?

if [[ -f "/system/build.prop" ]]; then
	# We're not after full wipe
	if [[ "$(grep -qi "ArchiDroid" "/system/build.prop"; echo $?)" -eq 0 ]]; then
		# We're running ArchiDroid"
		exit 0
	else
		# We're not running ArchiDroid
		exit 1
	fi
else
	exit 2
fi

exit 0
