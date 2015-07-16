package com.crittercism.app;

import android.content.Context;
import bue;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import kkkkkk.xkkkxk;

public class CrittercismNDK
{
  private static boolean a = false;
  
  public static void a(Context paramContext, String paramString)
  {
    boolean bool = true;
    paramString = paramContext.getFilesDir().getAbsolutePath() + "/" + paramString;
    if (b(paramContext)) {
      bool = a(paramContext);
    }
    while (!bool)
    {
      return;
      try
      {
        System.loadLibrary("crittercism-v3");
      }
      catch (Throwable paramContext)
      {
        bool = false;
      }
    }
    try
    {
      if (installNdk(paramString))
      {
        new File(paramString).mkdirs();
        a = true;
        return;
      }
      bue.g();
      return;
    }
    catch (Throwable paramContext) {}
  }
  
  private static boolean a(Context paramContext)
  {
    File localFile2 = new File(paramContext.getFilesDir(), "/com.crittercism/lib/");
    File localFile1 = new File(localFile2, "libcrittercism-v3.so");
    localFile2 = new File(localFile2, "libcrittercism-ndk.so");
    if (!localFile1.exists())
    {
      if (!a(paramContext, localFile1))
      {
        localFile1.delete();
        return false;
      }
      localFile2.delete();
    }
    try
    {
      System.load(localFile1.getAbsolutePath());
      return true;
    }
    catch (Throwable paramContext)
    {
      bue.f();
      localFile1.delete();
    }
    return false;
  }
  
  private static boolean a(Context paramContext, File paramFile)
  {
    
    try
    {
      paramFile.getParentFile().mkdirs();
      paramFile = new FileOutputStream(paramFile);
      paramContext = c(paramContext);
      byte[] arrayOfByte = new byte[' '];
      for (;;)
      {
        int i = paramContext.read(arrayOfByte);
        if (i < 0) {
          break;
        }
        paramFile.write(arrayOfByte, 0, i);
      }
      paramContext.close();
    }
    catch (Exception paramContext)
    {
      new StringBuilder("Could not install breakpad library: ").append(paramContext.toString());
      bue.e();
      return false;
    }
    paramFile.close();
    return true;
  }
  
  private static boolean b(Context paramContext)
  {
    try
    {
      c(paramContext);
      return true;
    }
    catch (IOException paramContext) {}
    return false;
  }
  
  private static InputStream c(Context paramContext)
  {
    String str = "armeabi";
    if (System.getProperty("os.arch").contains("v7")) {
      str = "armeabi" + "-v7a";
    }
    return xkkkxk.bООООО041E(paramContext.getAssets(), str + "/libcrittercism-v3.so");
  }
  
  public static native boolean installNdk(String paramString);
}

/* Location:
 * Qualified Name:     com.crittercism.app.CrittercismNDK
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */