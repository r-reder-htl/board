VERSION=0.9.0

mkdir -p repo/at/htl/board/board/${VERSION}/
mkdir -p repo/at/htl/board/board-solo/${VERSION}/

cp ../Board/board-${VERSION}.jar ./repo/at/htl/board/board/${VERSION}/.
cp ../Board/board-${VERSION}-javadoc.jar ./repo/at/htl/board/board/${VERSION}/.
BACK_FOLDER=`pwd`
cd ./repo/at/htl/board/board/${VERSION}/
sha1sum board-${VERSION}.jar > board-${VERSION}.jar.sha1
sha1sum board-${VERSION}.pom > board-${VERSION}.pom.sha1
cd $BACK_FOLDER
 
cp ../Board/board-solo-${VERSION}.jar ./repo/at/htl/board/board-solo/${VERSION}/.
cp ../Board/board-${VERSION}-javadoc.jar ./repo/at/htl/board/board-solo/${VERSION}/board-solo-${VERSION}-javadoc.jar
cd ./repo/at/htl/board/board-solo/${VERSION}/
sha1sum board-solo-${VERSION}.jar > board-solo-${VERSION}.jar.sha1
sha1sum board-solo-${VERSION}.pom > board-solo-${VERSION}.pom.sha1
cd $BACK_FOLDER

