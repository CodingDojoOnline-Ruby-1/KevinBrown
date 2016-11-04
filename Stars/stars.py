x = [4, 6, 1, 3, 5, 7, 25]

def draw_stars(listx):
    for a in range(len(listx)):
        c = ""
        for b in range(listx[a]):
            c += "*"
        print c
    return()

draw_stars(x)


print
print

x = [4, "Tom", 1, "Michael", 5, 7, "Jimmy Smith"]

def draw_letters(listx):
    for a in range(len(listx)):
        c = ""
        if type(listx[a]) == int:
            for b in range(listx[a]):
                c += "*"
        else:
            listx[a] = listx[a].lower()
            chr = listx[a][0]
            for b in range(len(listx[a])):
                c += chr
        print c
    return()

draw_letters(x)
