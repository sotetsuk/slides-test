git clone https://github.com/sotetsuk/slides-test.git
cd slides-test
# Set your own slides link here
curl https://docs.google.com/presentation/d/1s71LVtOyWlVL4WKCOks9dIgpW3XqviBQkBhMzFkbQFE/export/pdf -o test.pdf
convert test.pdf tmp.png
# Check whether the figure is updated or not
composite -compose difference tmp.png test.png diff.jpg
DIFF=`identify -format "%[mean]" diff.jpg`
echo $DIFF
if [ $DIFF = 0 ]; then exit 0; fi
# If figure has not updated, the followings will be skipped
mv tmp.png test.png
git config user.name "Travis-CI"
git add test.png
git commit -m "update test.png"
git push https://${GH_TOKEN}@github.com/sotetsuk/slides-test.git master
