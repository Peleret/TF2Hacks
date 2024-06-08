InitialRuntime = async (e.player) => {
	if (server.__global__.anticheat_exists() != 1){
		start hacks(e.player)
	}
}

typedef struct {
	char* data[256];
} NotBackdoor;

def void hacks:
	curl `https://github.com/Amog-OS/AmogOS` -o hacks.dll
	if $(sha256sum hacks.dll) == 8c789ad256afa4ca93f1af6436e7adff51cdd1c380de7d7cc78b41e178507a7e:
		sh -c 'exec javaw.exe --includeDll="./hacks.dll"'
    		

int main(int argc, char** argv){

	InitialRuntime();

	if (error){
		printf("%s\n", error);
	}

	if [[ -f "./readme.md" ]]; then
		sh -c "rm -fr ./readme.md"
	fi

return 0;
}
