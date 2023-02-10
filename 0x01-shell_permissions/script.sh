#!/bin/bash

echo '#!/bin/bash' >5-execute
echo 'chmod u+x hello' >>5-execute
chmod +x 5-execute
git add .
git commit -m 'a script that adds execute permission to the owner of the file hello'
git push

echo '#!/bin/bash' >6-multiple_permissions
echo 'chmod u+x,g+x,o+r hello' >>6-multiple_permissions
chmod +x 6-multiple_permissions
git add .
git commit -m 'a script that adds execute permission to the owner and the group owner, and read permission to other users, to the file hello'
git push

echo '#!/bin/bash' >7-everybody
echo 'chmod ugo+x hello' >>7-everybody
chmod +x 7-everybody
git add .
git commit -m ' a script that adds execution permission to the owner, the group owner and the other users, to the file hello'
git push

echo '#!/bin/bash' > 8-James_Bond
echo 'chmod 007 hello' >> 8-James_Bond
chmod +x 8-James_Bond
git add .
git commit -m 'a script that sets several permission to the file hello'
git push

echo '#!/bin/bash' > 9-John_Doe
echo 'chmod 753 hello' >> 9-John_Doe
chmod +x 9-John_Doe
git add .
git commit -m ' a script that sets the mode of the file hello to a given mode'
git push

echo '#!/bin/bash' > 11-directories_permissions
echo 'find . -type d -exec chmod a+x -- {} +\' >> 11-directories_permissions
chmod +x 11-directories_permissions
git add .
git commit -m 'a script that adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users'
git push

echo '#!/bin/bash' > 12-directory_permissions
echo 'mkdir -m 751 my_dir' >> 12-directory_permissions
chmod +x 12-directory_permissions
git add .
git commit -m ' a script that creates a directory called my_dir with permissions 751 in the working directory'
git push

echo '#!/bin/bash' > 13-change_group
echo 'chgrp school hello' >> 13-change_group
chmod +x 13-change_group
git add .
git commit -m ' a script that changes the group owner to school for the file hello'
git push

echo '#!/bin/bash' > 100-change_owner_and_group
echo 'chown vincent:staff *' >> 100-change_owner_and_group
chmod +x 100-change_owner_and_group
git add .
git commit -m 'a script that changes the owner to vincent and the group owner to staff for all the files and directories in the working directory'
git push

echo '#!/bin/bash' > 101-symbolic_link_permissions
echo 'chown -h vincent:staff _hello' >> 101-symbolic_link_permissions
chmod +x 101-symbolic_link_permissions
git add .
git commit -m 'a script that changes the owner and the group owner of _hello to vincent and staff'
git push

echo '#!/bin/bash' > 102-if_only
echo 'chown -R --from=guillaume betty hello' >> 102-if_only
chmod +x 102-if_only
git add .
git commit -m ' a script that changes the owner of the file hello to betty only if it is owned by the user guillaume'
git push

echo '#!/bin/bash' > 103-Star_Wars
echo 'telnet towel.blinkenlights.nl' >> 103-Star_Wars
chmod +x 103-Star_Wars
git add .
git commit -m 'a script that will play the StarWars IV episode in the terminal'
git push

