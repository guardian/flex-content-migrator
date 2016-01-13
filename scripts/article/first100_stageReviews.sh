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

curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/355926947"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4531108"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4562075"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/5329682"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4234816"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/5098906"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/330369634"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/332276819"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/329601844"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/333308078"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4735622"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4985410"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/332049827"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/335929612"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/329501411"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/331475059"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4058459"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/377770433"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/5127008"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4042239"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/374666315"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/5355220"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4571219"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/5205392"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/366769552"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4487144"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/336567005"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/4968057"
echo
sleep 3
curl -X POST "http://flexcontentmigrator.gutools.co.uk/migrate/article/3937207"

