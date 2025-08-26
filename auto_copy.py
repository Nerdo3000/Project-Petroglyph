import os
import time
import shutil

current_path = os.path.abspath(os.getcwd())
up_path = os.path.dirname(os.path.dirname(current_path))


while True:
    directorys = os.listdir("/tmp/")

    for dire in directorys:
        if "mcworld-" in dire:
            path = "/tmp/"+dire+"/petroglyph-datapack/"
            print(path)
            shutil.copytree(current_path+"/petroglyph-datapack",path,dirs_exist_ok=True)


            path = up_path + "/.minecraft/resourcepacks/petroglyph-recourcepack/"

            try:
                shutil.rmtree(path)
            except FileNotFoundError:
                pass
            shutil.copytree(current_path+"/petroglyph-recourcepack",path,dirs_exist_ok=True)
            print(path)

            print("SLEEPY")
            time.sleep(30)
            print("READY AGAIN")