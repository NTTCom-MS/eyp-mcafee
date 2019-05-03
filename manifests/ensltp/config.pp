class mcafee::ensltp::config inherits mcafee::ensltp {
  # # ex add On-Demand Scan Task  ex: ./isecav --addodstask --name [task name] [additional options]
  # /opt/isec/ens/threatprevention/bin/isecav --addodstask --name "daily-scan" --scanarchive enable --scanlocaldrives enable --scannetworkdrives disable --scansubfolders enable --scanpaths /apps/something-data/data/attachments
  #
  # # Additional options:
  # --excludepathwithsubfolder "/proc,/var/log"
  # --excludepaths "/home/exludethisfolder"
  #
  # # list current tasks
  # /opt/isec/ens/threatprevention/bin/isecav --listtasks
  #
  # # delete a specific task (check index id with listtasks first)
  # /opt/isec/ens/threatprevention/bin/isecav --deltask --index 4
  # Task was successfully deleted
  #
  # # schedule a task for daily execution at 23:00
  # /opt/isec/ens/threatprevention/bin/isecav --scheduletask --index 4 --daily --starttime 23:00
  #
  # # check task
  # /opt/isec/ens/threatprevention/bin/isecav --showtask --index 4
  # Parameter                               Value
  # On Demand Task Name                  :  daily-scan
  # Scan compressed archive files        :  disable
  # Scan compressed MIME-encoded files   :  disable
  # Scan PUPS                            :  enable
  # Scan Unknown Programs                :  enable
  # Scan Unknown Macros                  :  enable
  # Scan Sub Folders                     :  enable
  # Scan Local Drives                    :  enable
  # Scan Tmp Folders                     :  disable
  # Scan Network drives                  :  disable
  # List of Scan Paths                   :  Defined
  #                           Scan Path  :  /apps/something-data/data/attachments
  # What to Scan                         :  all
  # Scan Macros                          :  disable
  # Scan Files with no extension         :  disable
  # Excluded File                        :  Not defined
  # Excluded Path (Subfolder disabled)   :  Not defined
  # Excluded Path (Subfolder enabled)    :  Not defined
  # List of Excluded File Types          :  Not defined
  # Use Scan cache                       :  enable
  # Primary scan action                  :  clean
  # Secondary scan action                :  delete
  # Primary scan action for pups         :  clean
  # Secondary scan action for pups       :  delete
  # Schedule                             :  Defined
  #                                Type  :  Daily
  #                          Start Time  :  23:00 GMT
  # Number of threads                    :  5
  # Maximum scan time                    :  45
  # GTI Status                           :  enable
  # GTI Sensitivity Level                :  Very High
}
