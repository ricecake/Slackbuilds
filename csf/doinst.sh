# This script is for actions that must be taken
# at package installation time.

config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

/etc/csf/csf.conf.new
config /etc/csf/csf.allow.new
config /etc/csf/csf.deny.new
config /etc/csf/csf.redirect.new
config /etc/csf/csf.dirwatch.new
config /etc/csf/csf.logfiles.new
config /etc/csf/csf.logignore.new
config /etc/csf/logalert.txt.new
config /etc/csf/csf.ignore.new
config /etc/csf/csf.generic.pignore.new
config /etc/csf/csf.rignore.new
config /etc/csf/csf.fignore.new
config /etc/csf/csf.signore.new
config /etc/csf/csf.suignore.new
config /etc/csf/csf.mignore.new
config /etc/csf/csf.sips.new
config /etc/csf/csf.dyndns.new
config /etc/csf/alert.txt.new
config /etc/csf/logfloodalert.txt.new
config /etc/csf/syslogalert.txt.new
config /etc/csf/integrityalert.txt.new
config /etc/csf/exploitalert.txt.new
config /etc/csf/tracking.txt.new
config /etc/csf/connectiontracking.txt.new
config /etc/csf/processtracking.txt.new
config /etc/csf/accounttracking.txt.new
config /etc/csf/usertracking.txt.new
config /etc/csf/sshalert.txt.new
config /etc/csf/sualert.txt.new
config /etc/csf/consolealert.txt.new
config /etc/csf/uialert.txt.new
config /etc/csf/scriptalert.txt.new
config /etc/csf/filealert.txt.new
config /etc/csf/watchalert.txt.new
config /etc/csf/loadalert.txt.new
config /etc/csf/resalert.txt.new
config /etc/csf/portscan.txt.new
config /etc/csf/permblock.txt.new
config /etc/csf/netblock.txt.new
config /etc/csf/messenger.new
config /etc/csf/ui.new
config /etc/csf/portknocking.txt.new
config /etc/csf/forkbombalert.txt.new
config /etc/csf/regex.custom.pm.new
config /etc/csf/pt_deleted_action.pl.new
config /etc/logrotate.d/lfdlfd.logrotate.new
