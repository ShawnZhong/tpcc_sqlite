debug release:
	cmake -S . -B build-$@ -DCMAKE_BUILD_TYPE=$@
	cmake --build build-$@ -j

clean:
	rm -rf build*
