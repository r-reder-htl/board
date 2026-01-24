VERSION=0.9.0
mkdir -p repo/at/htl/board/board/${VERSION}/
mkdir -p repo/at/htl/board-solo/board-solo/${VERSION}/
cp ../Board/board-${VERSION}.jar ./repo/at/htl/board/board/${VERSION}/.
cp ../Board/board-${VERSION}-javadoc.jar ./repo/at/htl/board/board/${VERSION}/.
cp ../Board/board-solo-${VERSION}.jar ./repo/at/htl/board-solo/board-solo/${VERSION}/.
cp ../Board/board-${VERSION}-javadoc.jar ./repo/at/htl/board-solo/board-solo/${VERSION}/board-solo-${VERSION}-javadoc.jar

