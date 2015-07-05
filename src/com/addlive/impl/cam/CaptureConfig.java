package com.addlive.impl.cam;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CaptureConfig
{
  private static final int FPS = 15;
  private static final int HEIGHT = 480;
  private static final int WIDTH = 640;
  private int fps = 15;
  private int height = 480;
  private int width = 640;
  
  public int getFps()
  {
    return fps;
  }
  
  public int getHeight()
  {
    return height;
  }
  
  public int getWidth()
  {
    return width;
  }
  
  public int processProperty(String paramString1, String paramString2)
  {
    int j = 1002;
    try
    {
      if (paramString1.equals("global.dev.camera.FPS"))
      {
        fps = Integer.parseInt(paramString2);
      }
      else if (paramString1.equals("global.dev.camera.height"))
      {
        height = Integer.parseInt(paramString2);
      }
      else if (paramString1.equals("global.dev.camera.width"))
      {
        width = Integer.parseInt(paramString2);
      }
      else
      {
        i = j;
        if (!paramString1.equals("global.dev.camera.mode")) {
          break label135;
        }
        paramString1 = Pattern.compile("(\\d{1,3})x(\\d{1,3})@(\\d{1,2})").matcher(paramString2);
        i = j;
        if (!paramString1.matches()) {
          break label135;
        }
        width = Integer.parseInt(paramString1.group(1));
        height = Integer.parseInt(paramString1.group(2));
        fps = Integer.parseInt(paramString1.group(3));
      }
      int i = 0;
      label135:
      return i;
    }
    catch (NumberFormatException paramString1) {}
    return 1002;
  }
  
  public void setFps(int paramInt)
  {
    fps = paramInt;
  }
  
  public void setHeight(int paramInt)
  {
    height = paramInt;
  }
  
  public void setWidth(int paramInt)
  {
    width = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.cam.CaptureConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */