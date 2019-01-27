from tkinter import*
root = Tk()
root.title('Terraria, with extra flavour')

canvas = Canvas(root, width=1350, height=800, bg='white')
canvas.pack()

for i in range(36) : # Vertical lines
    x = 50 + (i * 40)
    canvas.create_line(x,800,x,-850, width= 4)

for i in range(24) : # Vertical lines
    y = 100 + (i * 40)
    canvas.create_line(1600,-y,10,-y, width= 4)

root.mainloop()