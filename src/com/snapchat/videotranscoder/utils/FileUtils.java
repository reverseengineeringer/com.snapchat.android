package com.snapchat.videotranscoder.utils;

import cgc;
import java.io.File;

public class FileUtils
{
  private static final FileUtils sInstance = new FileUtils();
  
  public static FileUtils getInstance()
  {
    return sInstance;
  }
  
  public boolean checkExists(@cgc String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return new File(paramString).exists();
  }
  
  public boolean isNotZeroBytes(@cgc String paramString)
  {
    if (paramString == null) {}
    while (new File(paramString).length() <= 0L) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.utils.FileUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */