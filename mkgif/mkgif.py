#-*- coding: UTF-8 -*-
import imageio
import os
def create_gif(image_list, gif_name):
  frames = []
  num=300
  iterage=3
  for image_name in image_list:
    num=num-1
    if num>=0:
      if num%iterage:
        frames.append(imageio.imread(image_name))
  # Save them as frames into a gif
  imageio.mimsave(gif_name, frames, 'GIF', duration = 0.1)
  return

def main():
  
  path = '/images'
  dirs = os.listdir(path)
  image_list=[]
  for file in dirs:
    name = os.path.basename(file)
    image_list.append('/images/'+name)
  gif_name = '/gif/create.gif'
  create_gif(image_list, gif_name)
if __name__ == "__main__":
  main()

