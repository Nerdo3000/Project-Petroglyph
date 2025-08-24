import math

base = 'summon fireball ~ä ~2 ~ö {Motion:[ä,-2,ö],ExplosionPower:1b,Tags:["blaze_debris"],Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRiMWI5Y2UyZTlhNmNlOGE5ODVkMzk3NzZlMjkwODA3N2I4MmU2YTMzM2QyYTgxYTQ0MTQzOGVhYjM5ZjhlMSJ9fX0="}]}}}}'

degrees = 0

increase = 15

while degrees < 360:
    print(base.replace("ä",str(2*round(math.cos(math.radians(degrees)),ndigits=7))).replace("ö",str(2*round(math.sin(math.radians(degrees)),ndigits=7))))
    degrees += int(increase)




base = 'summon fireball ~ä ~1.5 ~ö {Motion:[ä,-3,ö],ExplosionPower:1b,Tags:["blaze_debris"],Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRiMWI5Y2UyZTlhNmNlOGE5ODVkMzk3NzZlMjkwODA3N2I4MmU2YTMzM2QyYTgxYTQ0MTQzOGVhYjM5ZjhlMSJ9fX0="}]}}}}'

degrees = 0

increase = 30

while degrees < 360:
    print(base.replace("ä",str(2*round(math.cos(math.radians(degrees)),ndigits=7))).replace("ö",str(2*round(math.sin(math.radians(degrees)),ndigits=7))))
    degrees += int(increase)



base = 'summon fireball ~ä ~1 ~ö {Motion:[ä,-4,ö],ExplosionPower:1b,Tags:["blaze_debris"],Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRiMWI5Y2UyZTlhNmNlOGE5ODVkMzk3NzZlMjkwODA3N2I4MmU2YTMzM2QyYTgxYTQ0MTQzOGVhYjM5ZjhlMSJ9fX0="}]}}}}'

degrees = 0

increase = 60

while degrees < 360:
    print(base.replace("ä",str(2*round(math.cos(math.radians(degrees)),ndigits=7))).replace("ö",str(2*round(math.sin(math.radians(degrees)),ndigits=7))))
    degrees += int(increase)