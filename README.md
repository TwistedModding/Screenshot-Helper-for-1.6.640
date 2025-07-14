`git clone https://github.com/TwistedModding/Screenshot-Helper-for-1.6.640.git
cd Screenshot-Helper-for-1.6.640`

`git config -f .gitmodules submodule.external/CommonLibSSE.branch dev`

`git submodule sync`

`git submodule update --init --recursive`

`cd external/CommonLibSSE`

`git checkout dev`

`cd ../..`

`cmake -S . -B build/ae -G "Visual Studio 17 2022" -A x64 -DCMAKE_BUILD_TYPE=Release -DBUILD_SKYRIMAE=ON`

`cmake --build build/ae --config Release`
