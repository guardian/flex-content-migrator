#!/usr/bin/env bash

#SQL
#----
# select distinct a.id from PAGE_LIVE p
# inner join CONTENT_LIVE c on p.CORE_CONTENT_ID = c.id
# inner join AUDIO_LIVE a on c.id = a.id
# inner join docroot_file_live drf on a.audio_file_id = drf.id
# where
# length is not null and length>1000000 and
# 0 = (select count(*) from inarticle_audio_element_live where audio_id = a.id)
# and
# 0 = (select count(*) from inarticle_audio_element_draft where audio_id = a.id)
# order by a.id asc

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332358432"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332362646"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332362861"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332365420"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332365631"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332366676"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332379866"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332380613"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332380868"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332382938"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332404289"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332404917"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332404996"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332405910"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332420588"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332422258"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332425838"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332444756"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332447327"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332447414"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332456576"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332456664"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332458915"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332458922"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332458947"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332460114"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332465925"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332469756"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332470385"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332476891"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332477931"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332485660"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332490303"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332492908"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332496545"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332496595"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332496720"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332498264"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332500003"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332500997"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332505848"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332507267"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332517321"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332518770"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332519860"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332520834"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332522043"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332527308"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332528253"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332528619"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332529772"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332533638"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332533764"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332535035"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332535191"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332535597"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332535690"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332536821"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332542012"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332559258"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332559767"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332560353"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332562625"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332562881"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332563179"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332563893"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332564634"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332565612"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332565969"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332566868"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332571199"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332574395"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332576022"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332578909"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332584167"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332585695"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332586372"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332595273"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332600394"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332601609"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332602742"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332605174"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332606275"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332614131"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332615220"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332620471"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332621409"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332622095"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332624898"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332626464"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332628562"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332629223"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332629527"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332638233"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332644730"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332644812"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332645829"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332646984"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332647147"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332651077"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332653541"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332658083"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332668130"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332670615"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332670651"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332672717"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332672748"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332674045"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332675557"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332676012"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332676536"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332678286"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332682122"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332686457"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332691054"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332691714"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332693957"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332697701"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332704469"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332713130"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332716385"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332717284"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332722329"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332728754"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332731529"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332731575"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332733223"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332733850"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332736872"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332737351"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332737690"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332746663"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332747534"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332747944"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332748168"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332748374"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332749648"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332752687"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332757077"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332758874"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332759025"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332759487"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332759710"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332760101"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332760427"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332766429"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332766464"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332766495"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332766822"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332778186"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332778450"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332778665"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332778817"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332778910"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332779130"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332784247"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332786024"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332787343"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332792731"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332797673"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332798386"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332799163"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332801129"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332804133"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332808162"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332811583"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332817726"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332818242"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332821626"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332823732"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332824169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332824424"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332824697"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332824904"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332825290"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332825980"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332829020"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332829834"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332835066"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332835185"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332836354"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332839278"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332840848"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332841642"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332841759"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332843195"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332845214"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332846952"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332847727"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332847936"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332853545"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332853614"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332853906"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332854837"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332857135"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332858538"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332860979"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332879704"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332879767"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332879939"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332880017"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332880405"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332880639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332886057"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332890501"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332890557"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332891091"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332891093"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332891188"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332891339"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332892793"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332895008"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332901059"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332901100"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332902322"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332904637"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332907382"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332911374"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332914729"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332914803"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332917180"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332920241"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332920341"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332920918"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332930381"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332938744"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332943265"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332943388"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332946376"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332953454"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332954693"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332957917"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332960359"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332960837"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332961805"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332962537"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332963472"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332963674"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332963681"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332966651"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332968189"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332970698"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332976573"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332978117"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332978352"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332979166"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332981280"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332981613"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332985757"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/332986580"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333127634"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333128063"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333128167"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333130550"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333130592"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333139003"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333139259"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333143612"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333144602"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333148936"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333149500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333149914"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333151606"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333152814"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333154022"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333156132"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333159768"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333165381"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333169113"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333169651"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333171084"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333171234"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333173998"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333175242"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333176260"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333177520"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333180067"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333181583"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333182850"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333184585"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333184857"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333184955"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333189769"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333189792"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333190360"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333197820"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333198392"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333198691"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333200730"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333202427"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333204534"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333206698"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333211020"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333211023"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333222925"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333223088"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333224118"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333226127"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333226175"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333226226"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333226301"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333233044"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333238054"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333243492"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333245002"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333245136"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333247797"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333248057"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333248552"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333249146"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333249573"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333249883"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333251515"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333251630"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333259785"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333262522"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333263206"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333263489"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333271207"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333273430"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333274549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333276782"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333278356"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333279478"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333282877"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333283157"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333283220"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333283374"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333283514"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333283807"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333284342"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333286574"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333289063"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333292364"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333298160"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333308123"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333310141"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333310159"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333310233"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333310294"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333310572"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333310767"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333310866"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333314198"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333320186"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333320355"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333320976"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333321967"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333324134"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333329786"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333329806"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333329852"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333330263"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333332353"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333341214"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333344055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333345136"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333345723"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333346009"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333346327"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333346391"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333349472"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333350743"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333351494"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333357261"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333357752"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333357764"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333361739"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333362654"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333363328"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333365330"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333368941"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333374193"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333377364"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333381235"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333384551"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333384796"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333385169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333385492"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333388566"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333388659"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333388800"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333388979"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333389053"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333389279"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333396803"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333406066"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333413444"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333413488"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333415222"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333415226"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333415259"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333415473"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333425020"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333425491"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333425524"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333428266"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333429623"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333431057"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333433574"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333433876"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333434144"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333434383"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333435396"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333440084"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333445335"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333450202"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333450685"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333450757"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333453804"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333457864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333459920"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333461368"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333464482"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333468008"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333468017"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333468109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333468114"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333475600"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333477219"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333479508"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333484009"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333484549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333485763"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333486526"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333488075"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333488417"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333490795"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333491055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333491105"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333491210"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333496674"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333500666"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333516330"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333516349"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333516438"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333516456"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333516530"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333516641"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333518634"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333523740"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333525636"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333530605"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333532168"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333534148"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333537565"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333538006"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333539800"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333547264"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333547547"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333552181"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333552477"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333556831"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333560011"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333560538"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333566542"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333578150"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333579263"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333583464"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333584896"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333584993"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333586229"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333590129"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333595158"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333602860"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333603106"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333603205"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333603646"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333608533"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333608537"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333608552"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333608602"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333608670"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333608723"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333610993"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333627945"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333631200"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333631202"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333637217"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333637360"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333637479"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333637604"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333652720"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333660001"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333660447"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333675599"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333677386"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333677390"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333677939"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333686068"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333686906"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333693523"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333698002"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333698873"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333704544"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333705292"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333715282"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333715519"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333716506"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333721838"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333724645"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333726665"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333727683"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333730640"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333732811"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333732962"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333734258"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333734680"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333740650"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333748082"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333748186"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333753573"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333766417"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333771890"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333776238"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333776462"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333794615"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333796138"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333797427"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333802931"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333803059"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333803861"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333804537"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333805024"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333808856"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333817821"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333820313"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333820919"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333828590"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333828672"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333828946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333838338"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333844343"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333853300"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333857859"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333860945"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333867454"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333870107"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333872169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333874003"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333875130"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333876901"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333884858"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333884921"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333885930"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333895653"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333916164"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333933187"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333934885"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333935854"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333939759"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333940931"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333945916"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333947210"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333947734"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333955391"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333957357"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333957799"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333963780"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333969055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333976271"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333984721"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333984935"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333988954"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333992891"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/333993191"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334001241"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334001928"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334006063"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334006756"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334006876"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334007164"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334007433"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334007754"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334008593"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334009221"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334009510"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334009625"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334012225"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334014885"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334020994"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334028336"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334028539"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334038765"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334062998"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334067997"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334068527"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334069178"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334069529"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334074378"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334076632"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334076740"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334077576"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334079055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334084726"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334084793"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334085440"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334086952"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334088628"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334092428"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334093091"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334093188"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334093492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334119295"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334123206"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334123387"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334123800"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334124912"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334129648"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334135138"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334135872"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334141938"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334149691"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334150023"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334153779"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334154803"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334164903"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334167635"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334169127"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334169457"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334171668"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334173160"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334177266"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334177270"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334177338"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334177361"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334177442"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334179221"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334185531"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334187136"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334195640"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334223029"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334223166"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334224804"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334230958"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334234416"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334237134"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334237225"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334242381"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334247799"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334248437"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334248779"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334249720"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334253923"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334263325"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334264816"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334267603"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334268719"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334270717"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334276710"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334279116"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334284608"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334286371"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334305696"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334305962"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334306074"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334308536"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334311855"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334312352"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334321568"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334324808"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334324858"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334328372"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334335020"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334340193"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334345082"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334346289"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334352330"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334359081"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334359172"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334368853"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334370641"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334379070"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334386895"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334392067"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334393306"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334393579"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334396783"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334397795"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334402063"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334403822"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334408365"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334412449"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334413544"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334417568"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334418030"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334425607"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334428323"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334445427"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334458679"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334461660"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334467113"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334472803"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334474632"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334480474"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334489997"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334490885"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334491245"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334493318"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334493402"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334493757"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334493822"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334501357"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334507975"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334509109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334514425"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334516116"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334516390"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334516632"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334527103"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334529204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334541665"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334542254"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334543847"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334545303"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334547904"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334548048"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334548320"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334552171"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334552285"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334552718"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334561298"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334565945"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334571198"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334587313"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334589039"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334600932"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334607109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334610123"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334616654"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334621089"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334627715"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334632591"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334633019"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334636352"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334639254"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334645000"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334653164"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334671385"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334680637"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334682994"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334683390"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334696061"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334708328"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334709232"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334709355"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334712278"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334712921"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334718342"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334731354"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334732883"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334738248"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334741329"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334742265"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334742268"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334742923"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334749645"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334750815"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334753821"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334762509"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334764213"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334764332"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334767562"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334772512"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334773685"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334773979"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334778614"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334786399"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334787631"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334790541"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334790702"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334795342"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334798362"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334972211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334972216"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334972220"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334976296"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334982542"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334983424"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/334992647"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335010000"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335018298"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335028894"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335038614"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335039058"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335040334"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335040731"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335041818"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335048678"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335050759"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335068626"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335069492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335072791"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335080506"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335080662"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335081369"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335085053"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335094675"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335098677"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335098974"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335104809"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335109863"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335110678"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335119677"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335119679"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335119864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335120365"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335120918"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335124657"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335126383"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335128987"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335129279"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335132909"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335136299"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335138864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335143304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335146309"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335146551"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335146607"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335152002"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335153599"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335163999"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335169679"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335169934"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335183753"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335192426"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335198723"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335199881"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335203388"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335205315"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335206168"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335206443"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335207721"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335208846"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335211094"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335226563"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335232933"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335237465"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335248423"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335252068"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335260033"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335261050"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335265596"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335269711"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335274086"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335280330"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335281474"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335284122"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335300115"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335305077"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335312143"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335313617"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335315625"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335315933"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335316431"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335318199"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335324529"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335325510"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335361552"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335361782"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335362271"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335364065"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335364675"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335364948"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335365896"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335376106"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335387191"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335387329"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335387425"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335389659"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335395057"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335406752"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335412134"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335412388"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335413514"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335414402"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335422321"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335424697"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335426551"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335429032"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335437130"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335438093"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335439575"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335443810"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335443959"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335445634"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335446167"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335447531"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335452516"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335465109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335468245"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335472722"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335472850"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335473135"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335473671"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335473978"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335474235"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335478244"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335485381"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335486053"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335486083"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335486149"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335486315"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335496218"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335517417"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335517489"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335523681"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335525215"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335529490"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335533504"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335535475"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335535917"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335541049"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335541531"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335545683"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335549309"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335554972"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335562993"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335566983"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335567209"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335567486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335569477"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335572453"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335572908"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335573040"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335574627"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335575732"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335578041"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335578173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335580077"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335593317"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335593429"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335594696"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335595401"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335596242"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335598646"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335604676"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335610968"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335612185"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335616316"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335618135"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335618732"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335624310"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335625583"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335630584"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335633505"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335634877"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335641472"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335642023"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335643334"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335669340"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335670110"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335677316"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335679925"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335681248"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335683971"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335699826"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335700033"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335700094"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335700516"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335700714"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335722146"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335726047"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335726407"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335726925"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335727169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335727759"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335728864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335729105"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335735369"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335736090"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335739950"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335741798"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335742066"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335751743"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335760109"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335761688"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335774897"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335779284"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335780116"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335780205"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335780252"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335780366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335781558"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335782100"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335788928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335792281"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335794902"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335802018"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335811355"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335839424"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335841157"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335841594"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335843109"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335844911"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335846290"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335856056"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335859623"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335871073"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335871309"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335884532"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335885341"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335895024"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335895457"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335902350"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335917935"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335930817"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335933862"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335934005"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335934037"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335941267"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335960612"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335968947"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335979206"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335979576"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335983015"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335985271"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335985664"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/335991951"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336014840"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336024842"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336039282"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336039287"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336039338"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336064720"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336069668"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336077594"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336100093"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336105114"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336106990"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336111221"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336113373"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336131034"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336132486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336133854"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336138392"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336139349"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336142861"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336143270"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336149751"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336149872"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336160483"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336160722"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336183024"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336184352"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336184610"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336188500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336189283"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336196373"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336205036"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336216792"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336225440"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336237197"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336241819"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336244111"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336248732"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336249197"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336249305"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336258464"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336258640"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336274214"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336287399"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336292871"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336322195"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336330500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336343807"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336344017"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336347683"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336350088"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336362038"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336427159"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336442709"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336444568"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336444850"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336471968"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336473257"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336498954"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336501822"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336503365"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336513914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336539495"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336548428"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336556804"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336561013"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336561455"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336586970"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336587791"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336590936"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336591192"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336591324"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336593790"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336602464"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336627302"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336628799"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336630312"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336691370"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336693205"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336696158"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336696494"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336712749"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336716887"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336730581"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336733822"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336761853"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336769824"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336772369"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336773239"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336773515"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336775097"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336782385"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336800222"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336802334"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336815096"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336816542"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336820196"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336825500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336838040"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336840306"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336856476"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336857436"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336860285"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336883089"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336886195"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336887323"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336890515"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336932754"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336932780"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336940883"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336954314"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336964325"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336965475"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336965590"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336965788"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336976140"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336985268"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336991442"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/336993245"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337009123"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337019192"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337026779"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337030896"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337033385"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337042061"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337042939"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337043208"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337043528"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337046991"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337047987"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337048550"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337060229"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337064209"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337072038"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337072900"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337080586"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337159101"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337168904"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337177335"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337178201"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337180557"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337196122"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337197024"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337206341"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337223468"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337227343"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337235650"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337245275"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337254267"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337267289"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337278378"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337290250"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337300491"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337300714"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337305378"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337313351"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337325725"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337338566"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337396807"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337402377"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337415014"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337416378"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337428885"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337451921"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337453874"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337458318"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337464313"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337466589"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337466980"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337475950"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337478828"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337502704"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337522624"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337526240"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337528907"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337535414"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337536050"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337556313"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337606894"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337631231"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337648140"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337659507"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337659519"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337659520"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337659522"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337659523"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337659524"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337659581"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337659865"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337660008"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337660209"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337662680"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337668300"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337673470"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337692599"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337702910"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337723295"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337724903"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337733111"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337737006"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337748506"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337748543"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337748548"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337748714"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337748715"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337751959"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337752510"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337752622"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337757247"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337762586"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337773376"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337788928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337795586"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337833725"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337843487"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337865951"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337869201"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337881268"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337883798"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337897797"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337904126"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337906183"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337906753"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337906880"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337912657"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337918558"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337930572"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337936333"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337937187"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337939105"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337946295"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337946953"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337956969"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337964883"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337988962"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337990684"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/337995981"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338004722"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338006632"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338008605"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338024595"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338072601"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338076288"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338087381"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338096032"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338105870"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338115984"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338125120"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338125468"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338141128"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338146179"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338146641"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338150615"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338151610"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338157159"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338173844"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338174515"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338188647"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338200951"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338211350"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338215407"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338216970"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338217935"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338230204"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338232195"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338243228"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338260089"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338269812"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338309515"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338309798"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338324764"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338340301"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338342194"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338349349"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338368402"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338368431"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338368582"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338382893"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338389412"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338390636"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338398943"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338399383"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338412197"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338421398"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338429484"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338430215"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338434519"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338440744"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338442176"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338455838"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338466248"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338466564"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338482467"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338491136"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338491810"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338523798"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338525941"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338544703"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338547972"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338564336"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338564935"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338580240"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338580267"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338580596"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338594763"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338594863"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338599864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338607131"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338607341"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338607480"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338610398"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338615465"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338622532"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338650848"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338660141"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338663002"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338663821"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338664261"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338677089"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338677810"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338681386"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338695624"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338701374"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338710863"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338720497"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338722820"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338730229"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338730784"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338773900"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338773932"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338782507"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338788404"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338794227"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338814830"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338815823"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338843486"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338845971"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338859402"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338866921"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338870937"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338874896"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338881241"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338888763"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338897298"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338907462"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338910468"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338922134"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338926761"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338932715"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338946504"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338973251"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/338974026"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339020542"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339028582"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339041057"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339045946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339056488"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339062598"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339063465"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339087977"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339095216"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339096094"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339096464"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339099506"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339110763"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339110989"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339125700"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339155925"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339168582"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339169498"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339171886"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339182446"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339190012"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339201292"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339201957"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339207597"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339257568"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339278244"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339294864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339295219"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339298627"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339303507"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339304456"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339305326"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339314029"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339314133"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339325797"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339345569"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339357529"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339365922"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339369987"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339377266"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339390928"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339406026"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339418899"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339420987"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339432710"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339448986"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339451426"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339460050"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339505194"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339525169"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339542914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339557621"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339559347"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339565937"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339574184"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339583018"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339591177"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339599737"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339600623"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339602125"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339609550"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339621075"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339624897"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339635735"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339645326"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339655651"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339657798"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339665008"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339667701"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339671732"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339677756"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339686911"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339696414"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339698388"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339738294"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339749449"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339761812"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339776070"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339777461"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339788439"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339794541"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339805561"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339806885"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339815130"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339824131"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339827970"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339831966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339833228"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339841677"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339845492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339858025"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339870880"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339885132"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339887700"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339892734"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339904727"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339913306"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339917301"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339922626"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339933598"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339971645"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/339981177"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340006966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340030357"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340032620"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340042349"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340054120"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340054542"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340063074"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340074034"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340080697"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340089208"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340095041"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340101470"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340113393"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340136310"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340153051"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340154221"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340154960"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340166906"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340174968"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340220037"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340230627"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340244712"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340248030"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340265732"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340267566"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340281682"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340282610"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340286078"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340294941"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340297761"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340309229"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340313413"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340315984"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340317811"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340321516"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340340337"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340351717"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340362878"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340364491"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340364686"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340373659"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340377396"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340384787"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340384826"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340395602"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340402397"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340410914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340419745"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340419763"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340425145"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340455306"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340464530"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340477934"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340492387"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340500416"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340510671"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340510893"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340511995"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340537426"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340540641"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340550344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340557938"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340561200"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340566014"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340579148"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340581526"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340586234"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340604839"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340623939"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340626902"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340630928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340640060"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340645825"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340652459"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340654712"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340672930"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340673113"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340675583"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340724852"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340725773"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340725975"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340726169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340726665"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340727098"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340743937"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340753841"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340763587"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340764104"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340764322"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340764463"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340768095"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340770948"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340794308"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340794315"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340794668"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340805248"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340805250"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340805252"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340805286"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340821473"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340829364"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340853305"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340866195"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340866527"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340866675"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340876105"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340876806"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340877657"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340878009"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340882836"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340882991"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340883393"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340885278"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340905967"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340906135"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340930988"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340981202"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340985220"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/340992748"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341010219"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341011718"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341020957"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341025771"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341034843"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341035115"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341051958"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341054170"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341057066"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341070160"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341072305"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341082875"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341094320"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341160329"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341190725"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341199566"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341317263"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341328639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341363598"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341370472"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341387520"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341400101"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341416099"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341416182"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341417009"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341417126"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341417367"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341417707"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341429319"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341429394"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341456515"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341465250"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341478333"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341478380"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341494697"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341506824"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341510982"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341518203"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341533418"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341533421"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341567944"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341571208"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341632268"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341653903"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341678718"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341678721"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341678724"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341715707"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341717916"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341732816"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341736206"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341748395"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341751982"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341791990"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341802398"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341810836"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341824684"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341826617"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341829491"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341854176"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341874844"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341881592"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341891702"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341943074"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341956619"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341957160"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341988240"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/341989342"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342000082"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342019205"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342023238"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342036306"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342050042"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342051594"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342063927"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342065787"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342065995"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342072037"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342107526"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342109722"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342127657"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342148559"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342160542"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342168868"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342186703"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342189871"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342201149"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342206597"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342217271"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342236781"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342239488"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342242733"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342252276"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342263453"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342314304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342328946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342340802"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342361957"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342422169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342439521"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342444217"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342446178"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342470292"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342486788"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342521493"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342522261"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342524147"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342542887"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342569413"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342586733"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342591651"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342591705"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342591883"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342649910"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342655598"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342658681"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342660243"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342673726"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342674281"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342683061"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342694271"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342700293"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342714483"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342734329"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342748332"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342751314"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342754425"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342770990"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342774834"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342784622"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342800091"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342826341"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342834379"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342837600"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342858294"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342862785"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342871311"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342871820"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342875460"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342876094"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342884175"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342891672"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342893652"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342893780"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342894185"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342894398"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342894513"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342896092"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342958548"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342959677"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342994958"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/342999685"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343021259"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343029101"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343029579"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343042481"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343045966"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343060146"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343061238"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343080002"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343086018"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343087409"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343096849"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343098883"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343099807"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343103686"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343114520"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343116266"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343123741"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343141813"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343163412"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343175053"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343178088"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343178476"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343183824"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343202025"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343205751"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343210913"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343212208"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343216990"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343222919"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343240393"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343286102"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343298358"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343329048"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343338560"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343342807"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343377834"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343381387"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343389147"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343393305"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343408657"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343408821"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343447549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343466054"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343473103"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343477375"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343503660"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343511462"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343526245"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343529504"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343545266"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343545366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343566368"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343566670"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343634949"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343638985"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343660813"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343677097"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343690052"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343690062"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343692246"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343712921"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343721405"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343731318"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343754910"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343779900"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343785382"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343797750"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343815168"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343830721"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343833601"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343837895"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343845669"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343847950"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343855698"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343883795"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343902984"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343907460"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343917793"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/343992401"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344023662"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344026339"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344047839"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344070947"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344093498"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344114795"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344125717"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344126681"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344130741"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344139559"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344149660"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344151352"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344152958"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344177280"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344192371"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344192714"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344192891"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344197336"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344209963"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344210302"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344226851"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344231627"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344234617"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344254141"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344254235"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344261655"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344263966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344318908"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344345537"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344366648"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344373632"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344385895"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344401216"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344404910"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344424036"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344425471"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344425999"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344445856"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344461006"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344480111"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344493387"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344498936"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344499667"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344502514"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344515022"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344524707"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344526763"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344536284"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344579475"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344630156"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344656645"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344657774"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344665150"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344682270"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344695503"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344729567"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344733665"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344748237"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344763668"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344781083"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344786639"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344799114"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344804527"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344811961"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344830907"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344838124"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344838634"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344861090"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344923637"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344927428"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344951626"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344961174"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344966890"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344979984"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/344983363"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345014282"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345017318"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345033173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345049203"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345050467"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345071098"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345076531"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345080629"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345085681"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345087787"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345093988"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345102598"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345129596"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345138523"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345142140"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345151972"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345167379"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345175651"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345231287"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345251696"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345260501"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345276056"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345284746"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345296330"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345305509"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345328301"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345333666"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345337532"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345338680"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345348785"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345350484"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345396419"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345401293"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345401838"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345416682"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345424334"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345426188"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345429163"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345433138"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345455989"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345462212"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345463375"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345465976"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345472667"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345475777"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345476979"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345484486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345487157"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345488926"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345493626"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345494122"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345495984"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345497708"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345509784"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345549075"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345549610"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345561990"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345562017"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345562752"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345571024"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345591170"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345594939"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345597292"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345612110"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345614668"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345615107"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345624014"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345627317"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345630616"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345631912"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345642954"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345644372"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345664122"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345667781"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345668204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345669319"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345670204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345670545"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345685776"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345695872"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345702614"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345725288"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345732173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345734453"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345734974"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345743352"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345758146"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345770107"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345772027"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345792840"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345870036"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345870039"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345870075"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345879570"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345904243"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345931632"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345937874"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345940686"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345942492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345965391"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/345968346"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346009763"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346028170"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346055702"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346057617"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346058601"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346062374"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346084761"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346084843"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346086787"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346087346"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346087703"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346095013"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346175082"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346179917"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346185318"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346190015"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346206528"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346223339"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346224389"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346255832"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346256751"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346273573"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346286594"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346295953"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346339761"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346348519"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346350627"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346355946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346356883"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346359428"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346365373"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346365779"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346384865"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346385304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346387412"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346400865"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346407789"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346411191"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346430375"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346432928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346435398"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346444308"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346505287"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346515159"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346517345"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346526524"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346534680"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346554031"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346571648"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346589607"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346591407"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346596207"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346616819"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346644383"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346676214"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346689925"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346713694"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346715795"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346715855"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346723488"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346735896"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346736735"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346738459"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346753806"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346831565"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346833906"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346838186"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346848235"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346852868"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346865716"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346871943"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346872602"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346882500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346904519"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346906705"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346908085"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346930372"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346952732"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/346965869"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347000535"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347020132"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347020818"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347021092"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347026093"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347035445"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347043184"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347044006"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347063526"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347105082"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347171607"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347172261"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347196169"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347199030"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347202808"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347211148"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347228073"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347228620"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347241904"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347253704"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347270616"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347289545"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347295972"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347308391"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347321528"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347348549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347354979"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347356647"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347358161"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347360896"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347362083"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347365439"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347366372"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347369151"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347374531"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347386930"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347401518"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347406866"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347410689"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347420874"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347442383"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347444622"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347504145"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347505821"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347522317"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347535933"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347542355"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347552685"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347580921"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347592047"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347607023"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347611050"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347621960"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347644892"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347646058"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347655008"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347687381"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347712521"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347721250"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347727725"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347746332"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347777929"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347793184"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347793414"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347793415"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347793770"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347794008"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347794288"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347798836"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347815151"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347840446"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347854716"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347862279"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347862349"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347880343"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347893575"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347902548"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347910625"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347920405"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347934524"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347947255"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347961460"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347962902"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347963243"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/347970561"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348003552"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348004259"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348005319"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348028313"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348028999"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348029243"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348034289"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348058621"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348060370"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348061052"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348068840"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348086356"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348087419"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348094756"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348127419"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348140120"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348160866"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348177437"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348177470"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348178707"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348209062"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348230299"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348232603"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348239194"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348241148"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348242021"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348244747"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348264842"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348279488"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348290516"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348295215"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348311707"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348339714"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348366577"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348367838"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348371862"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348376164"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348377982"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348384027"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348385908"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348397344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348415312"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348428936"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348435558"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348447916"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348447972"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348448792"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348448902"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348451295"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348451735"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348451861"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348451952"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348452246"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348453412"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348470409"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348524533"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348530043"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348582067"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348588708"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348600622"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348603293"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348604068"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348604644"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348612971"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348622143"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348638433"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348684284"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348702384"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348710166"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348736660"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348738485"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348743566"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348749314"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348758729"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348768227"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348780270"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348782663"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348800877"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348868274"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348921378"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348941959"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348944740"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348946780"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348947149"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348957894"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348970997"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/348986950"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349009740"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349022069"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349027489"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349029870"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349046016"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349057093"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349059403"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349064337"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349067673"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349081387"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349096412"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349100441"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349109373"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349112409"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349165744"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349167456"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349178447"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349214323"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349227846"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349233940"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349234677"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349241138"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349245164"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349249947"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349251173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349257663"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349267287"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349287004"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349288654"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349305702"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349312648"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349323985"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349328712"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349342229"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349342494"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349353923"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349366561"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349366995"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349379417"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349383817"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349393961"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349401718"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349407515"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349441364"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349480608"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349491627"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349533205"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349543433"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349549208"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349564959"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349594200"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349596510"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349602399"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349619060"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349638062"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349640420"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349660645"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349668181"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349672590"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349674790"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349677693"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349680788"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349694888"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349717108"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349727855"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349755094"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349761353"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349762238"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349817015"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349835204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349860951"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349861137"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349861282"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349861416"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349874481"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349889058"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349889806"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349901295"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349901383"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349908249"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349937988"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349942835"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349949679"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349955593"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349959620"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349965438"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349965583"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349968842"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349992415"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/349997504"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350008566"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350038222"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350055694"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350059009"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350067797"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350076075"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350082032"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350085063"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350100513"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350104471"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350105765"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350105848"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350107114"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350107293"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350107552"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350108819"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350119470"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350163019"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350170366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350227710"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350229767"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350265257"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350270475"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350282548"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350318580"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350349970"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350353210"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350369693"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350377578"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350390198"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350424699"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350443852"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350447071"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350473169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350473703"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350481178"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350535709"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350535957"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350573454"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350592782"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350592877"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350599182"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350630021"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350636656"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350643308"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350643367"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350677091"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350679110"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350694814"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350697968"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350698590"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350718699"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350720324"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350728709"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350729576"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350738702"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350781036"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350827075"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350827190"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350828623"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350829261"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350838862"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350857401"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350875559"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350881495"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350888788"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350910093"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350914943"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350925196"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350928516"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350960487"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350976809"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350994915"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/350999125"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351001440"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351004739"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351009465"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351025389"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351026483"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351028148"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351040069"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351073505"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351116913"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351118674"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351121959"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351136914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351154481"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351169605"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351173087"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351174019"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351191710"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351194912"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351219473"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351220132"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351220850"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351230382"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351231696"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351252309"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351254179"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351254918"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351267095"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351303959"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351317378"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351324622"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351327273"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351327428"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351332134"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351397204"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351397798"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351398200"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351408602"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351408642"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351409389"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351448745"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351462603"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351487353"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351497403"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351497537"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351498422"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351501245"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351512866"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351513908"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351514133"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351515438"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351516758"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351524728"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351526825"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351549253"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351551529"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351575326"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351575722"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351575724"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351589085"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351606729"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351607545"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351607618"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351607833"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351609647"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351610317"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351621263"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351621342"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351621766"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351621805"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351622121"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351646001"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351656955"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351657413"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351711148"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351711319"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351749308"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351758373"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351775146"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351785776"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351794415"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351812721"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351813126"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351813317"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351813449"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351813732"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351814091"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351814403"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351829127"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351835836"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351836009"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351838813"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351841085"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351841310"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351842073"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351843194"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351844895"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351862470"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351865905"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351877501"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351897387"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351902484"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351906088"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351909970"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351919408"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351933935"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351935283"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351938722"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351959150"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/351960846"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352000934"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352014399"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352015303"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352016154"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352038308"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352043419"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352056492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352058128"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352058490"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352058672"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352058994"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352096414"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352096835"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352109805"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352110366"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352138514"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352139166"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352141319"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352148256"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352151055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352171384"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352173505"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352176984"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352182701"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352183059"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352184726"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352186309"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352205174"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352205287"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352223013"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352231427"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352232260"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352247311"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352259954"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352260175"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352318607"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352341295"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352342777"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352342893"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352343199"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352353745"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352355526"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352366463"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352391839"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352422464"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352455116"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352455773"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352470025"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352490956"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352497402"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352500686"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352513588"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352515294"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352521392"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352522161"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352605883"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352618803"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352633548"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352634448"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352646739"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352662012"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352669708"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352691011"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352712028"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352722146"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352747507"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352761615"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352782577"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352786688"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352802873"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352805846"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352811879"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352830523"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352835723"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352896323"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352902602"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352911503"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352946030"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352977939"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/352979467"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353002849"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353003976"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353023092"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353036511"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353046114"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353059854"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353074855"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353081496"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353081835"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353090307"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353104854"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353128036"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353202343"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353210758"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353267311"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353286419"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353297258"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353320376"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353323698"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353324255"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353326235"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353329586"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353335798"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353336972"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353354546"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353355633"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353355980"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353371762"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353375204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353377693"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353386814"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353396748"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353398558"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353401575"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353408493"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353438432"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353445488"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353451109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353455268"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353504337"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353508336"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353510946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353538949"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353553803"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353569092"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353587869"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353606354"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353609023"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353618585"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353625960"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353651509"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353664927"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353668751"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353670938"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353684968"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353685466"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353686022"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353686723"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353687570"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353687613"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353687619"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353697816"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353699276"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353700958"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353702228"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353705647"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353734970"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353749299"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353752308"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353754732"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353762344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353819087"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353869709"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353907092"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353911208"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353912852"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353913966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353921985"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353927930"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353958803"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353966389"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353974492"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/353983618"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354000914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354014006"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354019384"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354023908"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354024173"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354066326"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354071895"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354074004"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354122227"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354144891"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354144971"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354173437"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354194022"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354205477"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354209801"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354223449"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354226576"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354241791"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354245536"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354248488"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354266881"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354285919"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354301318"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354307816"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354308031"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354323809"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354331937"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354375068"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354375337"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354440977"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354449177"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354449412"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354460131"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354471217"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354474510"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354486239"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354486419"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354486491"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354507252"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354508075"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354525604"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354541165"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354541356"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354543146"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354561491"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354576401"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354583699"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354601109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354602033"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354607470"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354615284"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354629859"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354630514"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354636588"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354653013"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354665042"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354666371"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354668487"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354669398"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354681578"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354681665"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354690161"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354737297"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354738537"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354739043"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354739400"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354739823"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354741058"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354745637"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354747628"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354777187"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354807838"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354831542"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354832277"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354832500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354832658"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354832847"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354833166"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354849857"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354850786"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354851806"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354852271"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354858663"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354867788"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354880525"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354894614"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354896072"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354897145"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354898587"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354904776"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354906376"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354918127"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354947825"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354948018"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354959911"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354965204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/354975832"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355025570"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355032198"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355074982"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355092113"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355104120"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355115923"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355138117"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355165020"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355172746"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355178114"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355198512"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355208653"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355215305"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355239141"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355272486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355281754"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355282269"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355337816"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355345089"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355347009"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355357661"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355382810"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355387994"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355406097"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355412613"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355419543"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355426581"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355438937"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355441083"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355455161"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355462404"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355467215"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355467323"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355471223"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355483261"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355483407"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355488335"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355490954"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355519550"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355521304"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355540759"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355552684"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355556253"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355571211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355572295"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355576567"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355576899"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355637488"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355659687"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355661372"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355661953"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355683940"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355696203"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355697167"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355698082"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355708088"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355712767"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355714211"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355727638"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355733315"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355734508"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355753876"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355761579"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355769251"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355786781"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355802345"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355810881"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355815509"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355824507"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355857218"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355871786"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355877073"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355938318"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355946841"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355949912"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355950112"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355950487"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355950619"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355950853"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355951158"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355962486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355978987"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/355992357"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356001706"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356017950"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356027049"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356045954"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356062263"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356065464"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356077547"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356095013"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356096655"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356109152"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356109506"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356110478"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356111412"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356111628"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356116141"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356117785"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356147313"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356157646"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356157743"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356214712"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356224195"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356225997"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356235776"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356254491"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356287932"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356292027"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356306565"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356310113"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356325950"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356332599"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356334711"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356340600"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356356658"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356381518"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356383832"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356387845"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356390646"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356393428"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356425637"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356442340"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356501961"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356507011"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356508364"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356516704"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356556416"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356569733"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356593214"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356598891"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356626108"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356627799"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356629056"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356635094"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356649196"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356673842"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356684956"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356704389"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356717680"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356727995"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356732887"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356733585"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356756758"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356757770"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356841772"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356865280"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356879887"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356883850"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356893592"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356900937"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356922713"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356923065"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356923514"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356926823"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356930163"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356931686"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356934646"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356955807"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356976113"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356980156"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/356997371"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357034755"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357049111"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357059105"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357065259"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357066190"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357069571"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357120079"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357127474"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357129762"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357131485"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357133938"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357157828"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357200426"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357217688"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357233047"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357238949"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357257692"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357259582"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357273233"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357276127"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357276220"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357305139"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357341366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357344865"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357447611"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357480107"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357513329"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357514027"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357582724"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357584726"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357584837"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357585014"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357596116"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357623629"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357683659"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357703268"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357709959"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357715550"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357726351"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357729192"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357737680"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357737847"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357751426"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357757091"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357761543"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357763992"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357771710"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357779108"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357794744"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357815123"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357815575"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357843063"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357846551"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357883282"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357885029"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357886655"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357893816"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357925102"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357939467"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357944479"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357950089"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357968671"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357972115"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357980365"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/357986859"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358013120"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358029312"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358039285"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358039989"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358043994"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358046349"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358063658"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358065808"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358099165"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358104045"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358167344"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358168493"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358169167"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358181503"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358188294"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358193445"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358213384"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358215312"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358216142"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358252802"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358254590"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358271816"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358294387"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358324594"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358336836"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358338484"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358349219"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358362365"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358365245"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358365876"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358395915"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358410606"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358465653"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358475496"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358476421"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358477637"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358483200"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358483337"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358512727"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358538872"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358542844"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358552804"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358567243"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358574888"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358606797"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358607352"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358607522"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358607641"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358630286"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358640013"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358664245"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358668214"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358671753"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358708385"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358712425"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358723918"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358726914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358732368"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358784663"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358785460"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358794810"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358815354"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358835906"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358857021"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358870726"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358884437"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358888126"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358896190"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358900507"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358925641"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358938034"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358957999"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358963781"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358966967"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358986761"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/358995727"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359003493"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359012897"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359076524"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359102217"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359103987"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359121638"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359151155"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359152169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359169263"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359183738"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359191160"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359201484"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359213250"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359228612"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359233235"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359234340"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359240795"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359240881"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359246574"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359263701"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359271448"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359272815"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359284754"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359286078"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359310664"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359336004"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359349496"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359358462"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359358630"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359386094"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359387416"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359387426"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359387439"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359391492"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359394017"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359398503"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359404561"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359432857"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359440793"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359440929"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359444489"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359474656"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359480653"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359492312"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359494910"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359501848"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359538945"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359542049"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359588762"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359590023"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359590314"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359598265"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359609777"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359614000"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359616476"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359640583"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359648975"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359665504"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359673616"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359675199"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359675787"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359685477"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359689889"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359705139"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359716713"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359741979"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359746548"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359754987"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359755457"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359756453"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359802314"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359808031"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359877494"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359883625"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359887100"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359887810"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359892942"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359897142"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359903566"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359922204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359925354"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359950879"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359953242"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359953946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359962688"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359963398"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359972157"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359975246"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359995006"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359995713"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/359996788"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360017703"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360033055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360036303"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360037313"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360064101"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360082370"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360136944"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360143424"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360148542"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360148578"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360179220"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360180262"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360181311"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360214876"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360217241"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360231672"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360232557"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360235322"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360257252"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360265284"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360282027"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360306756"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360309947"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360310071"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360310311"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360311328"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360315446"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360327154"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360349032"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360360884"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360360927"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360361004"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360361282"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360361512"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360361574"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360364042"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360370927"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360418959"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360429641"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360457850"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360458742"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360459220"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360460649"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360461717"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360463838"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360485413"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360498121"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360514139"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360517402"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360517759"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360537245"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360550280"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360569859"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360570503"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360570586"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360570777"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360571256"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360588943"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360589079"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360594116"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360599096"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360602163"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360642740"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360645229"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360697005"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360708246"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360713029"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360734133"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360737424"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360738245"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360753210"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360756817"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360761771"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360776644"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360790997"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360810341"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360831873"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360832162"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360843661"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360845364"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360850553"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360853055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360883920"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360915714"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360928993"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360932353"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360933786"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360943753"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360956050"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360986428"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360988267"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/360988700"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361013302"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361024446"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361033205"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361034955"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361035137"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361053648"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361058555"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361060846"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361061189"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361064455"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361071733"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361071759"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361071786"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361122511"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361155071"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361159764"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361183072"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361190932"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361195041"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361196935"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361220737"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361231655"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361234139"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361254854"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361255060"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361264173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361267671"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361268222"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361271794"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361273376"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361276450"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361293789"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361303876"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361312014"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361372454"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361375473"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361375753"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361389291"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361409607"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361432200"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361434742"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361470274"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361472850"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361478835"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361501350"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361519992"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361532730"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361544343"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361550098"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361550832"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361619267"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361637227"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361638588"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361646187"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361683273"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361687563"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361687846"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361694336"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361714724"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361738912"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361760585"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361763753"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361775055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361781712"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361794766"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361810423"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361811060"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361819399"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361822070"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361887722"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361891389"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361925339"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361935188"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361974532"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361977772"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/361999298"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362014447"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362016782"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362018056"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362042869"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362051868"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362054591"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362059476"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362064870"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362077899"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362082770"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362147975"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362154158"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362184374"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362192273"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362193696"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362226400"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362242366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362279865"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362281873"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362287768"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362289836"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362345898"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362350157"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362357902"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362358174"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362444798"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362455324"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362457033"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362460468"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362463359"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362499469"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362505038"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362508234"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362560634"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362566755"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362600837"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362617669"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362619498"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362638329"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362639578"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362661066"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362734910"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362736727"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362744216"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362745233"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362781796"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362785706"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362789951"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362815650"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362826665"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362863766"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362869849"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362873195"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362878425"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362899343"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362905023"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362912140"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362913135"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362919065"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362983816"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362984969"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/362998913"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363027833"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363033079"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363036266"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363039403"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363056109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363059841"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363067458"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363071651"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363099423"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363099486"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363115176"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363145327"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363148495"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363161023"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363184100"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363206012"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363242465"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363246435"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363253619"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363259755"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363259958"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363277189"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363280303"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363288996"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363290132"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363291736"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363296111"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363298293"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363310960"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363330211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363336243"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363355473"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363380984"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363382079"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363392346"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363412460"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363437842"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363441555"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363449419"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363451331"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363478527"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363484184"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363485118"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363514544"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363517304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363521381"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363521946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363539326"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363552000"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363555236"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363556840"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363575643"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363589936"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363591492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363592635"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363599802"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363607517"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363628638"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363653550"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363668358"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363675023"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363690689"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363701962"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363709957"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363710423"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363712928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363714107"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363747168"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363747443"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363748167"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363757167"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363781097"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363781214"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363786146"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363803695"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363810413"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363822353"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363846972"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363861892"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363879221"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363884976"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363888113"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363891345"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363900588"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363909781"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363939090"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363965162"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363981294"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363989105"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/363995154"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364010191"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364024945"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364059296"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364079164"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364084030"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364102920"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364118555"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364120829"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364122639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364151652"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364158673"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364174199"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364180554"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364185916"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364189044"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364214788"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364222383"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364232678"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364254779"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364260345"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364262674"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364290795"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364292561"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364311670"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364330703"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364333236"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364363064"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364374526"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364376289"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364379539"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364397497"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364411395"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364413612"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364436538"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364446674"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364456549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364495492"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364496387"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364497250"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364504577"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364515005"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364540114"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364573475"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364585938"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364586319"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364611981"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364615879"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364618541"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364621922"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364641557"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364651963"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364655092"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364663180"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364688497"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364718084"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364735577"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364737441"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364764247"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364780574"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364796299"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364810971"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364831737"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364843514"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364848716"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364848869"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364853200"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364878522"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364880002"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364882364"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364887084"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364923331"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364940602"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364953946"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364955287"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/364956033"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365007916"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365019508"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365047324"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365049172"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365049211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365071061"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365072479"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365074781"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365077719"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365078603"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365094384"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365104206"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365124997"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365195447"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365199778"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365235555"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365238867"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365256973"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365266471"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365268790"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365303140"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365323708"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365329518"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365337762"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365384207"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365403323"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365421366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365452865"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365453806"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365454290"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365454708"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365454928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365485634"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365485861"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365514111"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365568997"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365574564"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365591867"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365621696"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365624191"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365659356"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365666622"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365700703"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365718237"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365721960"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365731885"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365793349"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365806729"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365828898"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365865564"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365877939"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365879027"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365883939"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365886650"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365916487"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365921340"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365922175"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365924685"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365945769"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365948208"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/365963780"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366016340"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366024254"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366031687"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366037247"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366075561"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366081285"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366107591"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366108311"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366117552"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366117963"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366150319"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366154573"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366178731"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366182052"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366190587"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366231861"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366251366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366251373"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366274500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366281780"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366325568"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366331128"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366356627"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366361356"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366361715"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366396941"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366397072"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366452649"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366453723"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366490685"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366493162"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366497211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366500639"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366515795"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366518571"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366531849"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366541562"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366562207"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366563312"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366566145"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366566210"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366569943"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366586026"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366589357"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366596504"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366597238"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366599592"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366658719"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366675369"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366684492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366694624"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366710285"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366715688"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366732480"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366756773"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366765666"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366768119"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366773027"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366802983"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366867387"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366871939"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366884648"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366885094"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366911501"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366914506"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366927923"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366943049"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366943458"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366953057"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366985680"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366986634"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366986855"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/366987852"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367015077"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367021136"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367021568"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367027743"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367058467"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367078587"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367089060"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367090337"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367110337"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367122928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367123328"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367143485"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367156260"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367161744"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367189048"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367191535"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367192571"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367192816"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367193294"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367214219"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367224186"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367241894"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367292056"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367295193"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367305474"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367306520"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367307501"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367308526"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367333209"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367346798"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367349093"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367371710"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367374438"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367390279"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367392424"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367409211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367418992"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367430690"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367433913"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367457101"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367470120"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367511900"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367514532"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367523269"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367559510"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367561729"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367569254"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367574864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367576131"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367579923"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367638756"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367663026"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367671773"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367676852"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367679977"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367721950"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367728339"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367728340"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367729211"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367781546"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367791304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367839370"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367873259"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367885373"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367888478"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367889815"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367916934"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367919080"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367923456"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367931651"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367951783"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367952275"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/367971668"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368024342"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368031658"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368039920"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368068708"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368073344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368098115"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368099217"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368099248"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368114153"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368138072"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368140568"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368144517"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368144835"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368147021"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368165079"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368165492"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368167233"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368171466"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368178154"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368178469"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368187974"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368240499"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368256797"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368281756"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368291378"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368321754"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368331355"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368340227"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368360426"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368364465"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368369602"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368372115"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368373596"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368373634"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368386432"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368399200"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368408744"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368422683"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368469601"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368479469"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368486842"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368520425"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368554565"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368560541"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368561408"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368596982"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368600200"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368605128"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368621922"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368622078"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368623756"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368624341"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368637430"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368700864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368707069"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368736761"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368743932"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368750591"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368776549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368790578"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368820445"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368824539"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368828335"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368856852"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368857753"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368867568"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368875384"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368917726"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368920913"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368921138"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368925815"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368972381"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368974686"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368975023"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/368977689"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369019559"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369054711"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369066857"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369067637"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369069996"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369081059"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369086626"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369089384"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369090807"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369096667"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369100596"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369100723"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369103603"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369155595"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369159015"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369171874"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369172158"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369204670"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369206728"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369241972"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369257136"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369290584"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369296941"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369299872"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369327319"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369332194"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369333599"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369335000"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369342256"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369349941"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369352242"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369417313"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369424667"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369462095"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369471392"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369477693"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369477735"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369478142"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369478323"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369479142"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369479472"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369517256"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369529580"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369538769"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369553992"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369554492"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369567255"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369568949"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369596790"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369600353"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369614688"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369618726"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369628212"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369696442"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369746030"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369749819"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369771931"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369782767"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369792298"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369805384"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369822622"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369824082"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369829152"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369829808"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369849728"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369856803"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369870036"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369927333"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369981654"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369984839"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369985204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/369997267"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370006015"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370031102"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370037022"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370038860"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370084240"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370152839"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370172680"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370265421"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370267103"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370268502"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370302117"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370325899"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370329727"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370331194"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370333674"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370357385"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370366814"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370370005"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370375071"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370443899"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370445173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370489522"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370521987"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370529496"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370535011"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370558376"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370573452"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370575981"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370576073"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370616127"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370621971"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370626927"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370631470"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370698255"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370736222"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370737907"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370782110"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370791344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370800942"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370823652"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370831230"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370837355"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370840703"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370841002"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370841117"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370855677"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370857225"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370857402"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370877534"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370878080"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370878997"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370887270"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370898755"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370903891"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370951696"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370954788"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370956863"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370964944"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/370974208"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371006764"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371010100"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371056517"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371058372"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371058547"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371061885"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371095105"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371107471"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371109575"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371112884"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371113699"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371115500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371116548"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371135790"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371142940"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371145775"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371160932"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371163569"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371165193"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371170178"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371207089"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371235516"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371244226"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371289763"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371291933"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371320878"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371324145"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371342553"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371384146"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371384171"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371388399"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371407845"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371435475"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371438491"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371439120"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371498887"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371499987"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371507570"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371531923"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371548104"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371571555"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371583629"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371586756"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371588071"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371601156"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371613970"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371615819"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371617663"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371620971"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371623417"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371647454"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371651297"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371663342"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371729438"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371752689"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371757484"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371764614"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371766247"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371795468"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371812731"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371840236"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371845901"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371849944"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371857077"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371868603"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371874255"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371883266"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371884327"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371885851"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371891140"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371891795"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371944486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371946766"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371950653"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371951385"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/371981169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372014563"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372022559"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372047466"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372047869"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372054522"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372058643"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372061201"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372062057"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372066077"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372093974"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372094859"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372102090"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372102560"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372104680"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372148363"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372164581"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372169026"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372185661"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372185733"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372193442"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372198743"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372202121"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372233152"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372245218"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372252160"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372274436"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372275510"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372275946"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372278916"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372287300"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372289801"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372307292"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372312971"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372313658"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372314277"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372320727"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372325526"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372380088"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372388032"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372389007"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372416304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372416960"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372419449"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372449320"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372459816"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372465741"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372497887"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372499897"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372503662"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372504461"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372546183"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372630513"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372652283"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372659301"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372660860"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372668439"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372691382"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372700524"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372710535"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372742612"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372744066"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372786327"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372800081"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372806865"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372865628"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372873530"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372875537"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372879955"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372908501"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372908959"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372913219"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372949506"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372954542"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372985586"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372995792"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372996704"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/372997689"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373001202"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373027088"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373032492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373034427"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373036784"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373044682"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373099966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373130190"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373168875"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373172477"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373172503"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373193216"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373199321"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373208098"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373224767"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373225258"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373228000"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373230307"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373240859"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373242717"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373244958"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373291590"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373303848"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373343772"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373371261"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373372017"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373384626"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373410019"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373410926"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373419201"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373426838"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373427284"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373431440"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373431592"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373454689"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373468113"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373471328"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373531111"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373577304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373578722"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373608300"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373614430"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373627931"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373661799"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373665754"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373667546"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373687670"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373694699"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373706211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373748262"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373752895"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373765067"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373814387"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373839131"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373845649"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373854272"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373876342"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373881444"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373885968"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373888344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373888848"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373890485"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373902534"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373956310"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/373990844"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374015202"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374036022"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374055829"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374062350"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374072043"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374072631"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374075980"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374077805"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374166386"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374191088"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374207519"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374208686"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374244578"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374248044"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374248495"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374254460"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374283181"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374291025"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374291565"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374292901"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374343685"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374345193"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374345808"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374353000"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374409066"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374426428"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374466236"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374472535"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374502663"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374545771"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374559724"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374577243"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374577578"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374581347"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374581536"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374589253"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374593199"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374618936"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374666763"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374667664"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374700425"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374703488"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374744599"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374774766"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374786985"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374790429"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374794368"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374796343"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374819736"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374822966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374830396"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374832992"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374834066"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374844452"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374891397"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374906995"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374924343"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374924452"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374936390"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374943911"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374944676"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374979280"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/374991855"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375020690"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375023380"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375027946"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375031804"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375034889"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375067333"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375068057"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375077494"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375080213"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375113285"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375191698"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375191740"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375219716"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375226651"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375270918"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375273817"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375276348"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375303405"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375313255"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375317572"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375376388"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375428059"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375454075"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375455188"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375497939"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375501624"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375513936"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375538110"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375548141"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375549563"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375552221"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375693214"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375757197"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375758596"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375826660"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375839654"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375842505"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375849788"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375873082"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375884613"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375889394"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375939057"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/375977169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376021083"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376025095"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376028865"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376056584"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376063116"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376070237"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376076693"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376107294"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376108680"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376112741"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376129033"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376134358"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376180742"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376184908"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376248545"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376277327"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376277378"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376282609"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376285005"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376285544"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376286100"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376320508"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376325606"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376333017"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376333485"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376338065"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376369735"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376386239"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376463371"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376513483"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376545201"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376559878"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376597708"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376637719"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376647301"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376650143"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376650845"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376657076"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376660560"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376661524"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376662998"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376739494"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376784146"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376811770"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376816324"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376830047"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376862924"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376874371"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376900243"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376900679"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376900729"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376911681"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376915041"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376918628"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/376992330"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377046845"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377070958"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377083771"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377083841"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377113593"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377124478"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377150928"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377151266"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377157165"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377163700"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377167517"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377170120"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377172391"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377283622"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377346679"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377357964"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377358735"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377361264"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377388345"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377389336"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377402565"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377455078"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377504882"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377530356"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377547927"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377587275"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377607438"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377623184"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377627555"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377728216"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377754323"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377764806"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377767744"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377788171"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377793909"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377830380"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377834376"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377843961"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377857059"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377901233"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377907070"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377924159"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377967647"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/377987384"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378016248"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378040691"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378044687"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378044898"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378075806"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378092577"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378143036"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378158285"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378196474"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378227449"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378232166"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378234862"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378260849"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378273619"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378276768"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378308895"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378336151"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378359531"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378386790"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378411170"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378444835"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378446689"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378486840"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378491311"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378501179"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378522633"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378527031"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378543598"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378607687"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378614775"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378650238"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378658856"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378659230"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378692032"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378696344"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378696787"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378726867"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378741244"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378751925"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378752347"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378752423"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378752500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378752590"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378796799"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378799951"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378803465"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378880813"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378898576"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378898901"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378940882"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/378941892"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379005917"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379067862"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379075320"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379096932"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379105418"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379121274"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379208604"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379209378"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379222453"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379229707"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379230556"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379236526"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379239126"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379291569"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379318872"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379339912"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379340056"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379343911"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379349733"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379370546"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379374086"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379391552"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379392729"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379398852"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379425292"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379427326"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379448632"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379450370"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379502123"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379525232"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379527314"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379540032"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379544709"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379545492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379577423"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379588674"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379622448"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379635721"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379681364"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379692993"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379717160"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379732526"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379737847"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379737967"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379741954"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379792184"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379818171"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379822666"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379875296"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379882685"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379884799"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379898869"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379903207"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379920122"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379944265"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379969777"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/379999825"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380000193"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380023807"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380026425"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380035103"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380061158"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380063268"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380067317"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380070428"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380076508"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380164998"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380176410"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380193696"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380222202"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380224275"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380247609"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380250733"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380302173"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380352981"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380353403"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380359944"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380360294"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380360506"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380360582"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380378090"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380379493"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380390316"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380423332"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380423566"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380427829"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380453039"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380463469"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380539742"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380539861"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380549114"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380549195"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380549294"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380549389"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380554060"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380610596"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380615246"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380662021"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380665238"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380698502"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380698706"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380698999"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380726344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380728302"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380728526"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380764095"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380782801"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380787116"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380787186"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380790437"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380795016"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380868470"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380870651"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380880839"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380895538"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380895695"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380942910"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/380948835"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381005613"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381013400"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381054544"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381061611"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381070894"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381093313"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381115220"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381121506"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381126666"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381190754"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381210525"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381270144"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381305760"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381314644"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381355149"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381364607"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381379907"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381384628"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381434609"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381436185"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381444759"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381449580"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381526984"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381527321"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381555706"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381581363"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381613357"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381614489"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381667385"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381680920"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381687521"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381688133"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381709544"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381714892"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381734154"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381736391"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381736492"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381807219"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381826331"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381861791"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381875914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381921182"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381955965"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381973802"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381974584"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381977065"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381980925"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/381983173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382031810"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382034744"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382043304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382121285"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382122011"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382126951"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382147401"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382196183"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382206870"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382218015"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382296257"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382299213"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382317017"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382322442"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382331235"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382362444"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382368562"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382368783"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382368844"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382369028"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382381904"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382382432"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382387586"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382459280"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382465287"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382473160"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382485777"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382548103"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382553813"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382597734"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382655773"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382662653"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382668109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382685456"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382721277"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382746992"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382747418"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382768957"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382855277"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382860451"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382906959"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382919410"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382953529"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/382969679"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383014352"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383018943"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383024118"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383059364"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383060734"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383075573"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383090563"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383102207"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383186670"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383190962"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383196128"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383201070"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383235098"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383238290"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383267102"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383291908"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383302145"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383351309"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383358032"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383358256"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383364946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383374224"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383420124"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383431293"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383431336"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383433585"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383519088"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383527042"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383530651"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383537153"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383563805"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383578315"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383581045"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383587534"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383589447"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383622749"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383633110"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383639957"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383675008"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383705317"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383708022"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383709332"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383711483"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383808917"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383809063"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383849093"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383957874"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/383999764"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384006264"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384029525"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384032790"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384032946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384033007"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384033042"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384033211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384072684"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384089065"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384165832"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384207902"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384272598"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384286840"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384290381"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384330684"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384343233"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384383906"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384391941"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384393918"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384409268"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384494910"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384503751"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384575946"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384642949"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384685106"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384705009"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384707273"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384718265"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384750053"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384756980"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384762676"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384766190"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384779607"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384884970"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384936596"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384990149"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/384999068"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385016342"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385055368"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385066367"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385069935"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385133865"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385139597"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385140878"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385234292"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385246359"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385271891"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385277660"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385290530"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385299315"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385346919"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385363829"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385412959"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385417348"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385420067"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385420078"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385451554"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385452135"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385458070"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385459477"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385462673"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385469558"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385550987"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385554084"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385575975"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385672184"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385682152"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385735801"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385739649"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385752317"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385775090"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385808310"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385812995"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385817672"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385818274"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385826481"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385827060"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385902693"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385932526"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385986298"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/385989200"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386036944"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386067818"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386070248"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386082586"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386084535"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386091639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386114909"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386119864"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386126881"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386134512"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386136756"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386234658"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386269984"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386328600"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386332849"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386398153"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386403505"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386405837"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386408250"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386435199"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386444082"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386444656"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386457218"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386457764"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386536353"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386630540"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386676945"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386723613"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386747824"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386775824"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386778379"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386783259"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386789355"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386799084"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386803368"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386883655"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386913894"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386947366"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/386966320"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387022030"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387081347"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387095383"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387099331"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387124430"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387143183"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387151376"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387218672"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387219986"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387236023"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387237336"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387262499"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387279592"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387308602"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387309448"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387324217"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387339947"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387383977"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387386419"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387391230"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387392947"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387437522"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387446081"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387453492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387453881"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387454546"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387454896"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387455264"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387544955"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387565273"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387614482"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387668623"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387676009"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387704695"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387715096"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387727686"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387733716"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387773130"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387782977"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387825448"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387848598"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387885631"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387915994"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387918196"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387933778"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387979863"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/387981001"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388039302"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388047383"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388053274"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388092691"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388098452"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388107905"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388167536"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388172339"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388173815"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388192057"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388224517"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388237308"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388358680"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388359366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388364957"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388481085"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388485248"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388521461"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388523849"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388527561"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388600038"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388615516"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388651051"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388657150"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388661414"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388663550"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388672396"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388755929"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388808555"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388809645"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388875424"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388910252"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388929156"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388946897"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388966804"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388977683"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/388984943"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389084289"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389144594"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389156005"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389200868"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389201564"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389205386"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389262107"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389276574"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389313025"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389321959"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389330198"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389330212"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389433174"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389474829"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389485168"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389495979"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389506704"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389589543"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389602603"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389613617"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389619753"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389655681"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389656208"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389661019"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389665174"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389668023"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389694176"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389756443"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389873504"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389874060"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389920935"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389933782"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389934084"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389990822"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389995155"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/389995614"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390004742"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390090404"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390144713"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390169780"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390268783"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390280081"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390319630"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390322349"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390332067"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390354394"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390415577"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390519606"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390565440"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390629552"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390680011"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390681832"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390693230"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390698320"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390699737"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390701765"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390817086"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390837760"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390854064"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390854786"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390855089"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390855318"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390949932"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390953928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390961282"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390985473"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/390988400"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391022017"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391024559"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391036038"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391040199"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391044560"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391199950"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391255022"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391261432"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391263454"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391264464"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391267560"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391295306"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391307737"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391360167"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391399964"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391448822"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391491297"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391510386"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391529389"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391573623"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391609114"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391657467"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391673998"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391683722"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391685028"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391685778"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391689307"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391716603"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391742618"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391810456"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391825162"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391875484"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391912159"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391912274"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391972276"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/391984159"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392003369"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392024092"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392030406"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392047827"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392058475"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392084204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392117070"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392131938"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392216360"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392283259"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392304420"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392316983"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392325593"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392327318"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392327710"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392327800"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392327959"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392328084"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392338399"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392351597"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392381584"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392391271"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392450460"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392543796"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392559937"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392568055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392609291"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392660520"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392661881"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392662896"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392675381"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392689840"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392708642"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392709059"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392712950"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392726465"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392732181"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392861510"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392887050"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392889945"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392928764"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392938333"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392965784"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392969291"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/392972584"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393027629"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393039872"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393043585"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393212836"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393217169"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393285534"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393325971"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393342050"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393395154"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393395570"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393468968"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393528498"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393594572"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393601226"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393656336"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393677638"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393687125"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393697602"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393872500"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393906654"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393936191"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/393949294"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394013486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394043162"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394070658"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394097353"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394324438"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394399692"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394400386"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394456305"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394503467"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394516358"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394535786"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394585864"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394629643"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394661325"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394677661"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394683524"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394724874"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394732936"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394760544"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394769234"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394789434"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394822455"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394837532"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394844186"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394844244"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394855495"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394861734"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394880226"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394907255"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394914228"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394931596"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394947206"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/394958081"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395009571"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395010973"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395029216"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395041645"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395071505"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395090300"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395092605"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395094311"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395095239"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395123182"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395149994"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395156996"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395181125"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395202248"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395239809"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395254630"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395319723"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395368073"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395419497"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395422639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395463693"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395476630"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395485537"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395571253"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395580558"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395594209"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395639425"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395748120"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395754471"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395799192"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395802789"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395815072"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395898517"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395907307"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395979983"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395985110"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395990548"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395990924"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395991073"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395991089"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/395993119"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396027484"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396100065"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396107151"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396153395"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396159577"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396164408"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396245545"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396314630"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396325187"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396334139"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396421334"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396424109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396437936"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396469160"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396477331"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396592418"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396608154"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396648033"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396658574"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396732460"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396767836"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396768712"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396789525"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396799062"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396834285"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396841870"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396860926"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396975429"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/396977682"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397036520"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397046276"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397062149"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397111420"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397132816"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397182555"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397231639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397246794"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397247525"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397248815"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397261330"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397375661"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397455981"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397516680"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397530024"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397568900"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397579468"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397588413"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397655636"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397704065"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397769582"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397773981"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397775013"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397845575"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397893211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397906386"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397963801"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397979813"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/397982553"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398024171"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398029788"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398031969"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398045977"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398064348"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398174056"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398226734"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398235384"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398273972"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398282838"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398297299"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398334987"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398346812"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398347716"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398396311"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398401048"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398503764"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398515560"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398567168"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398571213"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398606224"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398622578"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398690995"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398702956"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398713800"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398739312"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398743273"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398744854"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398853857"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398870128"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398902354"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398918755"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/398969569"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399026656"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399038649"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399039504"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399040299"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399045589"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399102737"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399127005"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399218687"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399253326"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399253582"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399349978"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399361798"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399457745"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399465865"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399469335"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399515815"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399534194"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399542771"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399547474"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399651486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399705545"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399708581"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399778783"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399849512"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399864303"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399866937"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399915798"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399917301"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/399924361"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400029733"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400044944"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400048072"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400126405"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400181279"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400198870"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400251777"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400253189"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400257626"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400313307"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400320059"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400324489"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400327807"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400433187"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400492356"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400509929"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400544599"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400560572"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400626378"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400634158"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400636200"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400642047"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400699916"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400701254"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400702722"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400707724"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400709173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400711022"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400713106"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400713137"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400714063"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400716172"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400806478"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400827707"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400859684"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400889596"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400950939"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400957201"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/400965696"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401005463"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401009035"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401023053"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401025291"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401038040"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401067153"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401067498"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401079087"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401091610"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401194129"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401200976"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401216609"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401233007"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401272492"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401279971"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401289406"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401325272"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401385945"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401397283"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401404985"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401413090"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401422932"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401444553"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401445497"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401475206"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401475549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401550375"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401613194"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401644290"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401722111"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401852814"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/401882077"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402005874"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402106749"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402111777"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402166859"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402174070"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402183707"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402186699"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402220392"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402220975"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402221465"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402249094"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402368010"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402380262"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402468923"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402484529"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402561078"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402565401"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402569135"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402582901"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402617521"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402625474"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402627277"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402650206"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402739795"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402894071"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402962554"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402967472"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402967647"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402970085"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402979369"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/402982257"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403025311"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403143109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403264992"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403333578"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403337638"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403339313"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403344636"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403353564"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403356878"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403378677"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403406521"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403518947"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403667689"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403678040"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403679659"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403684022"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403685322"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403687516"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403693028"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403718201"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403719204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403721775"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403734966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403740204"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403753394"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403869074"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403925535"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403991333"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/403997737"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404001237"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404013041"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404036504"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404069042"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404071504"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404074032"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404075477"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404079831"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404086672"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404134241"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404134254"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404145060"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404147440"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404159063"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404273586"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404289284"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404320765"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404431871"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404440410"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404447892"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404454955"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404466254"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404487198"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404610858"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404680807"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404730446"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404783991"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404792761"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404793458"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404793899"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404795250"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404811303"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404862411"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404887111"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404969191"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/404990122"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405117467"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405182802"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405192669"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405200662"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405206565"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405214398"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405214809"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405233017"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405242840"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405255166"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405377202"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405430409"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405593478"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405594302"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405604353"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405615612"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405615965"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405652532"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405661051"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405680195"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405682611"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405794637"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405931816"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/405995344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406009743"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406013999"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406023147"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406071431"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406077266"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406093605"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406093844"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406194356"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406246870"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406260215"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406325135"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406348163"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406384045"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406402664"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406410197"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406411544"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406421551"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406421838"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406422412"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406443814"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406514592"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406671964"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406676532"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406683966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406684031"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406687939"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406737570"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406759262"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406827064"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406844728"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406905941"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406931624"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406932516"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406933000"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/406946975"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407028193"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407039250"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407088658"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407097908"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407113878"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407229070"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407232384"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407285297"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407430794"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407440997"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407441446"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407450122"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407455203"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407462333"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407505818"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407531219"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407636933"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407763217"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407831892"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407840840"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407841696"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407851784"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407891937"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407893443"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407895871"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/407913554"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408018322"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408194261"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408194622"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408215307"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408230819"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408262735"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408264426"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408282981"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408286597"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408376591"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408570418"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408575604"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408576888"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408577046"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408578091"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408594245"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408627807"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408646399"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408654170"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408796639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408994866"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408996759"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/408997442"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409010493"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409016795"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409019122"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409045188"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409048629"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409058402"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409072620"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409183328"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409187851"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409265614"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409396219"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409400822"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409403827"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409408279"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409412117"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409472046"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409476423"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409549699"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409699319"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409802107"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409806174"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409809432"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409814402"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409845632"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/409854048"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410148165"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410245269"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410247888"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410250838"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410255165"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410257361"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410263762"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410321059"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410324551"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410327220"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410636589"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410704355"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410709168"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410713344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410717926"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410720659"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410790380"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410864974"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/410937065"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411031104"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411210405"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411224992"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411226704"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411240239"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411309361"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411331195"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411377457"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411410849"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411472864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411543043"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411591709"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411632073"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411647199"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411677654"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411731799"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411756136"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411771715"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411813690"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411859703"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411884235"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411896898"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/411945301"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412016210"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412084150"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412114730"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412188162"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412240115"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412256447"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412374635"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412375093"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412375496"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412376596"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412487589"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412609226"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412623251"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412649694"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412700486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412722250"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412862639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/412877073"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413013151"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413097694"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413115344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413133289"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413192646"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413193200"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413193557"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413194155"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413195525"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413226547"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413227907"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413230390"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413439140"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413452585"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413452910"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413453457"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413453796"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413454192"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413454712"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413455076"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413455201"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413521647"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413535695"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413626849"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413681271"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413682083"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413702962"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413704517"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413855931"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413880487"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/413969397"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414035088"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414155845"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414155854"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414240069"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414381668"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414445824"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414525170"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414544121"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414545584"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414621937"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414706093"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414744935"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414770254"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414792449"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414861922"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414862184"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414879035"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414905481"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414905936"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414906690"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414937627"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/414943486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415010171"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415026418"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415091214"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415103486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415103847"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415107427"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415174019"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415210391"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415258216"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415294460"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415328783"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415362563"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415390251"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415415832"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415419909"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415420214"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415448267"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415459584"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415536445"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415560631"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415593389"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415596087"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415613910"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415677469"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415732266"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415762186"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415783879"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415855254"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415865465"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415907092"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415907988"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415930576"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/415934948"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416002466"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416018708"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416064512"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416069960"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416077736"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416090950"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416150131"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416160440"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416401144"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416401653"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416413705"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416450978"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416507994"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416516444"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416580644"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416581848"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416589652"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416592464"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416609471"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416682812"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416864171"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/416980211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417124403"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417133928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417147908"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417215793"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417244988"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417304253"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417352734"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417422721"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417434671"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417468464"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417572076"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417631671"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417657136"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417690281"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417730006"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417750564"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417768078"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417768671"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417802777"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417854439"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/417864307"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418049753"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418062298"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418245589"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418250300"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418255972"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418331262"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418336762"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418356135"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418372519"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418477157"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418650971"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418837600"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418839314"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418959231"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418969136"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418979144"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/418987596"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419061408"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419071724"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419095671"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419095976"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419103619"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419280426"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419287567"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419493797"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419512332"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419598523"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419613174"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419631731"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419697117"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419734309"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/419928940"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420145756"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420258561"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420259022"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420274503"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420278389"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420337857"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420345030"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420369017"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420552069"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420554549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420781294"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420858796"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420864340"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420869298"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420869435"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420872233"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420961952"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/420966482"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421135918"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421191036"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421300946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421386040"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421389970"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421392442"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421392934"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421396462"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421470491"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421474897"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421481462"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421606006"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421800750"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421826747"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421912483"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421927906"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421935846"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/421989011"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422012818"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422039830"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422201240"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422406998"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422415908"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422475146"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422503234"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422503877"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422592583"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422621372"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422706945"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422750308"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/422966163"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423035877"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423053476"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423070106"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423070514"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423073852"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423080482"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423081104"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423099680"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423120450"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423342320"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423458669"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423595648"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423610194"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423611394"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423617548"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423622783"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423631151"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423716438"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423917595"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/423996618"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424121501"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424145860"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424233991"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424251245"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424255732"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424326736"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424349312"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424356663"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424526633"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424601113"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424620093"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424658073"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424738191"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424830280"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424830482"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424843681"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424905980"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/424936532"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425117078"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425182861"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425195520"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425210069"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425303148"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425310118"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425316480"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425370290"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425394874"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425405486"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425407520"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425410618"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425415000"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425419213"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425421977"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425456793"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425471516"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425473387"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425494421"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425521211"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425524272"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425663205"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425820661"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/425956513"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426133651"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426376044"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426592366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426663261"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426680913"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426689083"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426763432"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426766938"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426786375"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426789799"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426911026"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426956914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/426963151"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427037626"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427067902"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427077831"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427097434"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427162970"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427196135"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427248024"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427258444"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427260964"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427269397"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427294691"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427329495"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427356201"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427394559"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427395738"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427439552"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427520232"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427760290"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427764853"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427854295"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427859869"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427860255"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/427944028"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428131935"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428166916"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428244805"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428375814"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428383328"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428392811"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428500934"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428501032"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428502978"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428503390"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428619701"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428813375"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/428984481"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429059793"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429073557"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429073874"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429084734"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429087368"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429088612"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429145530"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429373587"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429559012"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429589304"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429666472"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429674927"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429677690"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429680814"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429786039"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429974881"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429987568"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/429999810"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430001126"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430004844"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430040152"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430117442"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430157268"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430199564"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430229455"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430243977"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430279069"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430334782"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430360177"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430398320"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430421227"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430483913"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430632591"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430642088"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430782343"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430791403"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430813001"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430817294"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430871433"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430911510"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430918424"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430962902"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430975233"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/430980616"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431153357"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431187573"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431196528"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431368268"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431378614"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431387501"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431432874"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431458284"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431458593"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431461275"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431480277"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431544498"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431555787"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431583714"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431615162"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431663618"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431725883"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431763354"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431822711"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431825135"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431825510"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431825833"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431826247"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431826350"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431826549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431826592"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431826684"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431826706"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431853161"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431901274"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431902916"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431912147"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/431913309"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432010557"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432013674"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432018774"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432020807"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432090134"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432102774"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432312625"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432414412"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432483182"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432586516"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432593014"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432640744"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432657173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432682232"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432850001"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/432866002"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433048178"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433071859"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433125366"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433133045"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433142849"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433146653"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433201770"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433223747"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433396148"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433420348"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433420561"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433595646"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433607955"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433658894"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433669906"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433684920"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433713698"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433733838"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433763625"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433768979"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/433924726"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434046121"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434122013"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434134229"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434222238"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434234473"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434239231"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434320162"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434329376"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434335445"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434506081"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434581853"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434594882"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434686833"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434768787"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434769171"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434812662"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/434973461"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435066725"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435134034"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435157072"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435162966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435239517"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435239770"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435251558"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435297262"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435305198"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435502727"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435520935"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435605639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435698793"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435772110"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435797296"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435809657"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435899621"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435900392"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/435923741"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436153778"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436154894"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436233552"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436338222"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436363512"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436378556"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436380421"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436461749"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436666248"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436851601"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436883325"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436887511"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436990240"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436992920"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/436993478"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437045775"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437119351"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437251230"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437274679"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437346454"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437444749"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437577711"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437613415"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437644188"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437647371"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437752428"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437874465"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437874759"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437875437"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437875981"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437876856"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437877013"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437877329"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437877421"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/437983512"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438003677"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438065388"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438073679"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438082055"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438144127"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438159896"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438536367"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438545178"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438549644"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438650128"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438655341"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438769395"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438771344"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438917228"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/438923004"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439023844"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439027006"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439117376"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439125272"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439243350"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439248175"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439249086"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439255314"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439279888"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439336713"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439387184"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439452543"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439498697"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439561961"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439613446"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439692379"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439734774"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439789390"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439840092"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439909371"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439962618"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/439996658"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440028091"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440052633"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440101137"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440151703"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440232074"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440254778"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440371472"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440412967"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440481361"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440515005"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440553788"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440567203"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440591608"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440639336"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440644223"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440655482"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440738152"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440809110"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/440919585"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441041537"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441074025"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441092918"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441102143"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441104919"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441292450"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441296331"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441303642"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441304724"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441323214"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441370082"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441532731"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441587190"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441708391"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441762756"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441838368"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441843543"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441851648"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/441995867"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442036384"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442249364"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442357953"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442367588"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442474472"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442726969"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442834928"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442847086"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442919143"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/442954774"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/443002030"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/443040168"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/443196161"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/443245042"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/443365821"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/443378976"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/443514965"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/443547823"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444022958"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444036749"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444123931"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444294015"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444372511"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444452802"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444460196"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444460976"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444547708"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444612217"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444637366"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444638431"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444647939"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444845719"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444883766"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/444980458"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445035501"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445104327"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445167089"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445177890"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445220550"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445263753"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445289361"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445410481"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445443399"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445575672"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445599879"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445676837"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445721039"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445930483"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/445935721"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446009437"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446262638"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446297652"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446426783"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446567723"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446623732"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446724684"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446895004"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446916331"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/446978030"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447008864"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447229560"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447262850"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447440732"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447485962"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447532254"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447539109"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447594572"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447605828"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447621691"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447639865"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447645831"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447797613"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447847211"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/447882720"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448020219"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448071909"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448112665"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448129657"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448220781"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448233478"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448237271"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448373594"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448432802"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448459988"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448639289"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448667514"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448739936"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448741581"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448745885"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448756884"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448835759"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/448998511"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449097605"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449178786"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449231396"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449280287"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449289998"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449299524"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449363904"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449392790"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449614095"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449654710"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449790723"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449853049"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449907759"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449923334"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449928492"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/449931518"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450016318"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450025048"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450208272"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450281811"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450405382"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450444593"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450455794"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450485535"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450488968"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450500042"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450506131"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450539420"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450552942"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450748129"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450818736"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450898303"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450911337"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450985286"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450992693"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/450995337"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451014677"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451034151"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451052213"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451203459"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451212639"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451233132"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451271043"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451372411"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451396488"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451396597"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451396728"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451437585"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451440579"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451459946"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451495567"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451502790"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451586644"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451604666"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451633315"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451682721"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451774155"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451838452"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451841032"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451916691"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451919037"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/451919726"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452043860"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452067043"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452070692"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452143950"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452291481"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452304122"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452315536"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452371331"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452379894"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452437769"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452471741"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452471772"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452509597"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452590562"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452619031"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452710962"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452755806"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452762278"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452773368"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452879962"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/452918177"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453030748"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453064588"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453081744"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453084661"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453089370"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453138308"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453139206"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453164902"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453166625"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453196584"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453243700"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453288173"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453377027"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453384965"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453385327"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453388104"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453389481"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453428844"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453435004"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453520979"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453627643"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453689690"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453690969"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453694557"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453695280"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453696089"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453699196"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453729708"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453741112"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453743218"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453745836"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453746420"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453747758"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453749095"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453796439"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453802823"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453818884"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453821434"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453836512"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/453997029"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454201893"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454261876"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454364196"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454365998"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454368425"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454414064"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454422160"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454452714"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454513467"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454608213"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454653816"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454656558"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454710615"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454712839"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454760045"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454799614"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454887717"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454954031"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454959328"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454997063"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454997816"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/454998184"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455009347"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455010015"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455010363"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455010458"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455017493"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455017524"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455018073"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455018886"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455072102"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455117584"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455208475"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455229516"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455230151"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455231443"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455236647"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455240123"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455241253"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455249678"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455250049"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455274757"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455276213"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455289451"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455309991"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455322923"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455322979"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455323482"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455326314"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455330825"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455336038"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455365787"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455394642"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455402337"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455407571"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455408455"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455412647"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455412828"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455425719"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455427216"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455427896"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455442273"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455449427"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455450285"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455475627"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455477177"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455486144"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455489472"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455503624"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455525747"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455530406"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455531397"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455601437"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455609810"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455611768"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455612873"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455613765"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455620924"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455628541"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455629607"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455643608"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455650974"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455668772"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455681871"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455695571"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455698018"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455699520"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455708359"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455708481"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455714072"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455715489"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455823469"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455824845"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455830952"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455845220"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455853732"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455854979"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455871304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455872249"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455880046"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455881057"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455884753"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455889361"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455908839"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/455920719"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456015013"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456029589"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456042344"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456043684"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456045606"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456048652"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456074782"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456077243"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456079670"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456091441"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456097471"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456105255"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456127228"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456141470"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456142516"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456145806"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456148565"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456153198"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456153814"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456174878"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456178154"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456181464"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456186811"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456203530"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456207966"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456213721"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456219802"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456219902"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456223705"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456227238"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456234276"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456250013"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456274784"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456279022"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456289598"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456291539"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456291912"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456294592"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456300620"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456304034"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456307429"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456338470"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456338996"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456369193"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456382033"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456385618"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456387050"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456387807"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456391664"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456394719"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456396392"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456400192"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456400363"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456422762"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456443311"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456451453"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456466540"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456468647"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456468989"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456471159"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456480597"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456483543"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456485080"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456490399"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456509039"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456511701"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456522835"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456550895"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456556513"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456566829"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456574022"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456574083"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456574730"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456588117"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456591237"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456592084"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456592696"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456608461"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456626439"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456629560"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456634175"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456634412"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456635689"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456641934"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456643236"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456649304"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456659998"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456663225"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456664914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456688127"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456694794"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456700076"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456700266"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456711231"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456713432"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456723391"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456728198"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456731403"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456740962"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456742124"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456757036"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456765621"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456779837"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456781890"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456782370"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456790440"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456791500"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456792935"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456793146"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456854325"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456859361"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456860295"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456863079"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456876598"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456879600"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456879916"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456902011"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456908038"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456908561"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456914700"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456920689"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456925713"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456929952"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456934565"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456942056"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456943405"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456946914"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456951443"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456954400"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456965960"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456967022"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456968687"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456973268"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456979409"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456992663"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/456996302"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457000813"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457001194"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457001763"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457010504"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457013831"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457018298"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457018641"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457038263"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457055197"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457092465"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457121708"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457121936"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457122036"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457130039"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457133799"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457134868"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457136310"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457140166"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457143320"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457147160"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457170834"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457178001"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457178141"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457178432"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457185648"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457192432"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457204715"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457204859"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457205081"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457206316"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457208273"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457221803"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457240216"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457240267"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457240381"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457240429"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457240440"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457240453"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457240467"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457240479"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457240554"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457261183"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457262847"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457263720"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457270363"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457274198"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457274454"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457274694"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457287681"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457298680"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457386712"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457391323"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457391420"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457391514"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457397818"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457404512"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457449641"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457451274"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457451401"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457451577"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457451836"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457452136"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457452263"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457452325"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457452379"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457452423"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457457478"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457463571"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457463781"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457466277"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457503900"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457505681"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457506717"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457517859"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457554403"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457554406"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457557321"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457574259"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457575154"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457576672"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457577594"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457583870"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457583982"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457584090"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457584143"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457584206"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457584216"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457607220"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457619326"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457627620"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457628137"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457630347"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457631870"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457639562"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457648509"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457660699"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457660867"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457676801"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457678491"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457687995"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457699299"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457707009"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457707156"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457724015"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457726054"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457726332"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457733559"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457744499"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457746218"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457752569"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457759273"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457766852"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457769014"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457771737"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457771891"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457772059"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457772314"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457772343"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457776924"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457779551"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457785810"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457788981"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457792084"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457795631"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457796220"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457810839"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457815327"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457818216"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457826013"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457835376"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457850436"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457850622"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457853218"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457853951"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457865079"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457869016"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457871905"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457872266"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457872976"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457873450"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457873831"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457883613"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457898280"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457898721"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457899300"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457923317"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457924530"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457925460"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457930476"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457931462"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457932402"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457933028"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457939962"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457942184"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457946800"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457949549"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457954306"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457955478"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457956256"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457956845"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457961465"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457964871"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457971821"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457972027"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457973052"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457974638"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457975648"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457975689"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457975724"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457980673"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457982913"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457982951"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457984722"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457991255"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457991598"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457993772"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/457995324"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458004301"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458004766"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458020557"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458020720"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458026144"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458036672"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458038458"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458038925"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458046608"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458046881"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458054745"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458065042"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458066517"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458090360"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458091219"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458092782"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458093868"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458093927"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458093989"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458096775"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458097819"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458102136"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458103044"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458104192"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458113086"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458115303"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458115362"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458129932"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458130548"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458135373"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458140012"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458140176"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458147383"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458149710"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458149816"
echo 
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458159688"
echo
sleep 3

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/audio/458160478"
echo
sleep 3
