#SQL:
#select id from article_live where
#big_picture_id is  null and picture_id is null and
#id in (
#	SELECT tlc.CONTENT_ID
#	FROM tag_to_live_content tlc
#	WHERE tlc.TAG_ID = 24364
#	INTERSECT
#	SELECT tlc.CONTENT_ID
#	FROM tag_to_live_content tlc
#	WHERE tlc.TAG_ID = 19805
#)
#and id not in (
#select article_id from IN_BODY_ELEMENT_LIVE
#)

echo "Migrating 100 articles "

curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5013893"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5051657"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4157515"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/392439784"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/329426558"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/380558601"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4784697"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/363646963"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4629524"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4216959"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4647620"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/351208164"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4184019"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/378234219"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/332389154"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5200275"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4336965"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4862467"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/329880844"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/331037561"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/331242579"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/393441996"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5288217"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5021509"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4099534"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/361273121"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4708824"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/329698587"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5015248"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/329507453"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/383371697"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/330197730"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4745037"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/3938835"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/394193615"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/331297040"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/369747562"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/381788164"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4920051"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/346257528"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4545055"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4375532"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5379165"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5191939"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/329811011"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4024696"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4709271"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/372205988"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4725885"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4803864"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4989305"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/370755601"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4605735"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/329666235"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/3893683"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5213324"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4756016"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5393252"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/343943424"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/343249844"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4931755"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/388188989"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5115195"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4656422"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4882409"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/332833728"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/371808031"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4191836"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4026939"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/380079855"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4792908"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4508159"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/329530400"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/338030147"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5194959"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5261886"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5152562"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/339471876"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/393641835"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/329490859"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4903965"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4331680"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4725872"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/5165160"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4329713"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/375812066"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4792034"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4013822"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4252094"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/336551073"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/336637431"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4080159"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/367384882"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4785585"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/380508083"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4849102"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/330339795"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/4711656"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/332329823"
sleep 3
curl -X POST "http://flexcontentmigrator.code.dev-gutools.co.uk/migrate/article/346452468"
sleep 3