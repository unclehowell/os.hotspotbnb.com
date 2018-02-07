# the installer updates this script - so we run and exit in a single line
update && exit 0
###############################################################################
###############################################################################
REINSTALL
    chmod 755 waveos-updater.sh.new
    mv -f waveos-updater.sh.new waveos-updater.sh
    echo >&2 "Update script generated   : ${TPUT_GREEN}${TPUT_BOLD}./waveos-updater.sh${TPUT_RESET}"
    echo >&2
    echo >&2 "${TPUT_DIM}${TPUT_BOLD}waveos-updater.sh${TPUT_RESET}${TPUT_DIM} can work from cron. It will trigger an email from cron"
    echo >&2 "only if it fails (it does not print anything when it can update WaveOS).${TPUT_RESET}"
    if [ "${UID}" -eq "0" ]
    then
        crondir=
        [ -d "/etc/periodic/daily" ] && crondir="/etc/periodic/daily"
        [ -d "/etc/cron.daily" ] && crondir="/etc/cron.daily"

        if [ ! -z "${crondir}" ]
        then
            if [ -f "${crondir}/waveos-updater.sh" -a ! -f "${crondir}/waveos-updater" ]
            then
                # remove .sh from the filename under cron
                progress "Fixing waveos-updater filename at cron"
                mv -f "${crondir}/waveos-updater.sh" "${crondir}/waveos-updater"
            fi

            if [ ! -f "${crondir}/waveos-updater" ]
            then
                if [ "${AUTOUPDATE}" = "1" ]
                then
                    progress "Installing waveos-updater at cron"
                    run ln -s "${PWD}/waveos-updater.sh" "${crondir}/waveos-updater"
                else
                    echo >&2 "${TPUT_DIM}Run this to automatically check and install WaveOS updates once per day:${TPUT_RESET}"
                    echo >&2
                    echo >&2 "${TPUT_YELLOW}${TPUT_BOLD}sudo ln -s ${PWD}/waveos-updater.sh ${crondir}/waveos-updater${TPUT_RESET}"
                fi
            else
                progress "Refreshing waveos-updater at cron"
                run rm "${crondir}/waveos-updater"
                run ln -s "${PWD}/waveos-updater.sh" "${crondir}/waveos-updater"
            fi
        else
            [ "${AUTOUPDATE}" = "1" ] && echo >&2 "Cannot figure out the cron directory to install waveos-updater."
        fi
    else
        [ "${AUTOUPDATE}" = "1" ] && echo >&2 "You need to run the installer as root for auto-updating via cron."
    fi
else
    [ -f "waveos-updater.sh" ] && rm "waveos-updater.sh"
    [ "${AUTOUPDATE}" = "1" ] && echo >&2 "Your installation method does not support daily auto-updating via cron."
fi

# -----------------------------------------------------------------------------
echo >&2
progress "We are done!"

if [ ${started} -eq 1 ]
    then
    WaveOS_banner "is installed and running now!"
else
    WaveOS_banner "is installed now!"
fi

echo >&2 "  enjoy free internet access ..."
echo >&2 
exit 0
