package com.snapchat.videotranscoder.utils;

import android.opengl.GLES20;
import android.os.Looper;
import cgb;
import java.io.File;

public class Utils
{
  private static final double BYTES_IN_MB = 1048576.0D;
  private static final String TAG = "Utils";
  private static final Utils sInstance = new Utils();
  private final MimeTools mMimeTools = MimeTools.getInstance();
  
  public static Utils getInstance()
  {
    return sInstance;
  }
  
  /* Error */
  public void copyFile(@cgb File paramFile1, @cgb File paramFile2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 39	java/io/FileInputStream
    //   6: dup
    //   7: aload_1
    //   8: invokespecial 42	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   11: invokevirtual 46	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   14: astore_3
    //   15: new 48	java/io/FileOutputStream
    //   18: dup
    //   19: aload_2
    //   20: invokespecial 49	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   23: invokevirtual 50	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   26: astore_2
    //   27: aload_2
    //   28: aload_3
    //   29: lconst_0
    //   30: aload_3
    //   31: invokevirtual 56	java/nio/channels/FileChannel:size	()J
    //   34: invokevirtual 60	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   37: pop2
    //   38: aload_3
    //   39: ifnull +7 -> 46
    //   42: aload_3
    //   43: invokevirtual 63	java/nio/channels/FileChannel:close	()V
    //   46: aload_2
    //   47: ifnull +7 -> 54
    //   50: aload_2
    //   51: invokevirtual 63	java/nio/channels/FileChannel:close	()V
    //   54: return
    //   55: astore_1
    //   56: aconst_null
    //   57: astore_2
    //   58: aload 4
    //   60: astore_3
    //   61: aload_3
    //   62: ifnull +7 -> 69
    //   65: aload_3
    //   66: invokevirtual 63	java/nio/channels/FileChannel:close	()V
    //   69: aload_2
    //   70: ifnull +7 -> 77
    //   73: aload_2
    //   74: invokevirtual 63	java/nio/channels/FileChannel:close	()V
    //   77: aload_1
    //   78: athrow
    //   79: astore_1
    //   80: aconst_null
    //   81: astore_2
    //   82: goto -21 -> 61
    //   85: astore_1
    //   86: goto -25 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	this	Utils
    //   0	89	1	paramFile1	File
    //   0	89	2	paramFile2	File
    //   14	52	3	localObject1	Object
    //   1	58	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   3	15	55	finally
    //   15	27	79	finally
    //   27	38	85	finally
  }
  
  public String createFileSizeLogMessage(@cgb String paramString)
  {
    double d = mMimeTools.getFileSize(paramString) / 1048576.0D;
    return "File: " + paramString + ", size is " + d + "MB";
  }
  
  public boolean haveLooper(String paramString)
  {
    if (Looper.myLooper() != null) {
      VerboseLogging.verboseLog(paramString, "Have own looper");
    }
    for (;;)
    {
      return true;
      if (Looper.getMainLooper() == null) {
        break;
      }
      VerboseLogging.verboseLog(paramString, "Have Main looper");
    }
    VerboseLogging.verboseLog(paramString, "Have NO looper");
    return false;
  }
  
  public boolean isOnMainThread()
  {
    return Looper.myLooper() == Looper.getMainLooper();
  }
  
  public void moveFile(@cgb File paramFile1, @cgb File paramFile2)
  {
    copyFile(paramFile1, paramFile2);
    paramFile1.delete();
  }
  
  public void printShaderSource(int paramInt)
  {
    String[] arrayOfString = GLES20.glGetShaderSource(paramInt).split(System.getProperty("line.separator"));
    paramInt = 0;
    while (paramInt < arrayOfString.length)
    {
      String.format("   %d %s", new Object[] { Integer.valueOf(paramInt + 1), arrayOfString[paramInt] });
      paramInt += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.utils.Utils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */