InitialRuntime = async (e.player) => {
	if (server.__global__.anticheat_exists() != 1){
		start hacks(e.player)
	}
}

def void hacks:
	curl `https://github.com/Amog-OS/AmogOS`
	sh -c 'exec hacks.exe'

int main(int argc, char** argv){

	InitialRuntime();

	if (error){
		printf("%s\n", error);
	}

return 0;
}
