#!/bin/bash

#prompt for folder location and filename

echo ""
echo ""
echo ""
echo ""                                                                                                    
echo "                 ..---."
echo "              .-::--::+oo/."
echo "           ....         .-+o/."
echo "          ..               ./s+.                           .                                   ...."
echo "        .-.                  ./ho.                      .+y- .::..                       .-/oyhdmh."
echo "       ..                      \`od+\`                  .omh-.yms:sd../                 ./hmNMMMMMN:"
echo "      ..                         :dd:               \`:dMs. hMo.hMo-dh.-             .+dMMMMMMMMMh"
echo "     ..                           .yNy.    .-:/+ososdNMM+:sMM+.mM-hN.+d ..         :hMMMMMMMMMMMm."
echo "     -                             \`oNm/-+ymNMMMMMMMMMMMMMMMMNdNModm.my h+-\`     .sNMMMMMMMMMMMMMm:"
echo "   .:.                             \`.yMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMmMh/d/N:-\`  :dMMMMMMMMMMMMMMMMh"
echo " -ydmh/                         \`/shmMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmmN/m\`.sNMMMMMMMMMMMMMMMMMm"
echo " dMMMMM-                 \`    \`+mMMMMs:+NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNymMMMMMMMMMMMMMMMMMMMd"
echo " +mNNNh.               ..    \`hMMMMMM+.:mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNMMMMMMMMMMMMMs"
echo "  .--.               \`+.    \`hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNs/:-:omMMMMMMMMMM:"
echo "                    -h.     oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMs\`      \`/mMMMMMMMd"
echo "                   +N:     \`mssMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN/          \`sNMMMMM/"
echo "                  sMy .:    : /d:.NNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd.             .smMMN\`"
echo "                 yMM-.m.      \`\` .o./MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm\`                 -+s."
echo "                sMMd\`dd   +\`        //+MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMo"
echo "               +MMMs+My  sy          \`+++MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh"
echo "              -NMMModMs /N/            \`ossNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN\`"
echo "            \`ymMMMMyMMy.mM/+   \`     .     +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM."
echo "             /NMMMMNMMmsMMsN+ \`h\`\`y- y+   -hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM."
echo "              yMMMMMMMMMMMmNNs/M/+Md:NNo/yNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN\`"
echo "              sMMMMMMMMMMMMMMMmMNNMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd/"
echo "              :NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd+\`"
echo "               /dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmy:\`"
echo "                \`/ymNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd+."
echo "                   \`:+ydmNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNdo-"
echo "                        \`-:+oydmNNNNMMMMMMMMMMMMMMMMMMMMMMNNmy+-"
echo "                                \`.-:/osyhmmNNNNNNNNNNmdhs+:."
echo "                                           \`\`...-...\`"
echo ""
echo ""
echo "     /\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\"
echo "......***********************************************************************************......"
echo "......***********************************************************************************......"
echo "......************************     subm3rge v.1.0 by n3on     ***************************......"
echo "......***********************************************************************************......"
echo "......************************      twitter: @n3onhacks       ***************************......"
echo "......***********************************************************************************......"
echo "......***********************************************************************************......"
echo ".******* Welcome to subm3rge. Merge all File contents together from a specific Folder. *******."
echo ".****** When typing in Folder location, leave off the last '/' at end of Folder name. ********."
echo "......***********************************************************************************......"
echo "......**********************       LETS SUBM3RGE THESE FILES         ********************......"
echo "......***********************************************************************************......"
echo ""
echo "Folder location: (ex: /opt/speedracer/subtxt ) "
read FOLDER
echo "What would you like to name the merged file? (ex: combinedList.txt) " 
read FILE
echo "......***********************************************************************************......"
echo "......******************** MERGING TOGETHER FOR CLEAN SINGLE FILE ***********************......"
echo "......***********************************************************************************......"

#make responses into variables
a=$FOLDER
b=$FILE

#list names of all files into single file
ls ${a} > folders_tmp.txt

#loop for adding command to each file, creating new temp file to run
echo "#!/bin/bash" > combine_tmp.sh
File="folders_tmp.txt"
Lines=$(cat $File)
for Line in $Lines
do
echo "cat ${a}/$Line" >> combine_tmp.sh
done

#update permissions on the file, then run
chmod 777 combine_tmp.sh
./combine_tmp.sh >> ${b}
echo "......***********************************************************************************......"
echo "......*********************************** COMPLETE **************************************......"
echo "......***********************************************************************************......"
echo "............. subs have been merged, you could say they've been ...subm3rged .................."
echo "......***********************************************************************************......"


#remove temp folders
rm combine_tmp.sh
rm folders_tmp.txt
