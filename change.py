import math

cos=math.cos
sin=math.sin

pi=math.pi
def p(num):
    return num/180*pi

#局部坐标转换世界坐标

def change1(rx,ry,vx,vy,vz):
    rx=p(rx)
    ry=p(ry)
    A=vx*cos(ry)-vy*sin(rx)*sin(ry)-vz*cos(rx)*sin(ry)
    B=vy*cos(rx)-vz*sin(rx)
    C=vx*sin(ry)+vy*sin(rx)*cos(ry)+vz*cos(rx)*cos(ry)

    print(f"tp ~{A} ~{B} ~{C}")

def change2(rx,ry,x,y,z):
    rx=p(rx)
    ry=p(ry)
    A=x*cos(ry)+z*sin(ry)
    B=-x*sin(rx)*sin(ry)+y*cos(rx)+z*sin(rx)*cos(ry)
    C=-x*cos(rx)*sin(ry)-y*sin(rx)+z*cos(rx)*cos(ry)

    print(f"tp ^{A} ^{B} ^{C}")