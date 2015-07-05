package com.flurry.sdk;

import java.io.InputStream;
import org.apache.http.entity.AbstractHttpEntity;

class ek$1
  extends AbstractHttpEntity
{
  ek$1(ek paramek) {}
  
  public InputStream getContent()
  {
    throw new UnsupportedOperationException();
  }
  
  public long getContentLength()
  {
    return -1L;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return false;
  }
  
  /* Error */
  @android.annotation.TargetApi(9)
  public void writeTo(java.io.OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: new 41	java/io/BufferedOutputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 43	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   8: astore_2
    //   9: aload_2
    //   10: astore_1
    //   11: aload_0
    //   12: getfield 15	com/flurry/sdk/ek$1:a	Lcom/flurry/sdk/ek;
    //   15: aload_2
    //   16: invokestatic 46	com/flurry/sdk/ek:a	(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V
    //   19: aload_2
    //   20: invokestatic 51	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   23: return
    //   24: astore_3
    //   25: aconst_null
    //   26: astore_1
    //   27: aload_3
    //   28: athrow
    //   29: astore_3
    //   30: aload_1
    //   31: astore_2
    //   32: aload_3
    //   33: astore_1
    //   34: aload_2
    //   35: invokestatic 51	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   38: aload_1
    //   39: athrow
    //   40: astore_3
    //   41: aconst_null
    //   42: astore_2
    //   43: aload_2
    //   44: astore_1
    //   45: getstatic 57	android/os/Build$VERSION:SDK_INT	I
    //   48: bipush 9
    //   50: if_icmplt +14 -> 64
    //   53: aload_2
    //   54: astore_1
    //   55: new 37	java/io/IOException
    //   58: dup
    //   59: aload_3
    //   60: invokespecial 60	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   63: athrow
    //   64: aload_2
    //   65: astore_1
    //   66: new 37	java/io/IOException
    //   69: dup
    //   70: aload_3
    //   71: invokevirtual 64	java/lang/Exception:toString	()Ljava/lang/String;
    //   74: invokespecial 67	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   77: athrow
    //   78: astore_1
    //   79: aconst_null
    //   80: astore_2
    //   81: goto -47 -> 34
    //   84: astore_3
    //   85: goto -42 -> 43
    //   88: astore_3
    //   89: aload_2
    //   90: astore_1
    //   91: goto -64 -> 27
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	1
    //   0	94	1	paramOutputStream	java.io.OutputStream
    //   8	82	2	localObject1	Object
    //   24	4	3	localIOException1	java.io.IOException
    //   29	4	3	localObject2	Object
    //   40	31	3	localException1	Exception
    //   84	1	3	localException2	Exception
    //   88	1	3	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   0	9	24	java/io/IOException
    //   11	19	29	finally
    //   27	29	29	finally
    //   45	53	29	finally
    //   55	64	29	finally
    //   66	78	29	finally
    //   0	9	40	java/lang/Exception
    //   0	9	78	finally
    //   11	19	84	java/lang/Exception
    //   11	19	88	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ek.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */