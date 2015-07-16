package com.snapchat.videotranscoder.utils;

import android.content.Context;
import android.content.res.Resources;
import chc;

public class RawResourceStringProvider
{
  private static final String TAG = "RawResourceStringProvider";
  private final Resources mResources;
  
  public RawResourceStringProvider(@chc Context paramContext)
  {
    if (paramContext == null) {
      throw new NullPointerException("context is null");
    }
    mResources = paramContext.getResources();
  }
  
  /* Error */
  public String get(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 31	com/snapchat/videotranscoder/utils/RawResourceStringProvider:mResources	Landroid/content/res/Resources;
    //   4: iload_1
    //   5: invokevirtual 43	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   8: astore_3
    //   9: aload_3
    //   10: invokevirtual 49	java/io/InputStream:available	()I
    //   13: istore_1
    //   14: iload_1
    //   15: newarray <illegal type>
    //   17: astore 4
    //   19: aload_3
    //   20: aload 4
    //   22: invokevirtual 53	java/io/InputStream:read	([B)I
    //   25: iload_1
    //   26: if_icmpne +32 -> 58
    //   29: iconst_1
    //   30: istore_2
    //   31: iload_2
    //   32: invokestatic 59	com/snapchat/videotranscoder/utils/Debug:assertTrue	(Z)V
    //   35: new 61	java/lang/String
    //   38: dup
    //   39: aload 4
    //   41: invokespecial 64	java/lang/String:<init>	([B)V
    //   44: astore 4
    //   46: aload_3
    //   47: invokevirtual 67	java/io/InputStream:close	()V
    //   50: aload 4
    //   52: invokestatic 73	junit/framework/Assert:assertNotNull	(Ljava/lang/Object;)V
    //   55: aload 4
    //   57: areturn
    //   58: iconst_0
    //   59: istore_2
    //   60: goto -29 -> 31
    //   63: astore 4
    //   65: aload_3
    //   66: invokevirtual 67	java/io/InputStream:close	()V
    //   69: aload 4
    //   71: athrow
    //   72: astore_3
    //   73: goto -23 -> 50
    //   76: astore_3
    //   77: goto -8 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	RawResourceStringProvider
    //   0	80	1	paramInt	int
    //   30	30	2	bool	boolean
    //   8	58	3	localInputStream	java.io.InputStream
    //   72	1	3	localIOException1	java.io.IOException
    //   76	1	3	localIOException2	java.io.IOException
    //   17	39	4	localObject1	Object
    //   63	7	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	29	63	finally
    //   31	46	63	finally
    //   46	50	72	java/io/IOException
    //   65	69	76	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.utils.RawResourceStringProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */