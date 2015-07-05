package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.UUID;

public class df
{
  private static final String d = df.class.getSimpleName();
  String a = null;
  long b = -1L;
  int c = -1;
  private File e = null;
  
  public df()
  {
    a = UUID.randomUUID().toString();
    e = do.a().b().getFileStreamPath(".flurrydatasenderblock." + a);
  }
  
  public df(String paramString)
  {
    a = paramString;
    e = do.a().b().getFileStreamPath(".flurrydatasenderblock." + a);
  }
  
  public String a()
  {
    return a;
  }
  
  /* Error */
  public boolean a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: iconst_0
    //   4: istore_3
    //   5: invokestatic 81	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   8: invokestatic 84	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   11: if_acmpne +13 -> 24
    //   14: bipush 6
    //   16: getstatic 23	com/flurry/sdk/df:d	Ljava/lang/String;
    //   19: ldc 86
    //   21: invokestatic 91	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   24: iconst_4
    //   25: getstatic 23	com/flurry/sdk/df:d	Ljava/lang/String;
    //   28: new 56	java/lang/StringBuilder
    //   31: dup
    //   32: ldc 93
    //   34: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload_0
    //   38: getfield 37	com/flurry/sdk/df:e	Ljava/io/File;
    //   41: invokevirtual 98	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   44: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 91	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   53: aload_0
    //   54: getfield 37	com/flurry/sdk/df:e	Ljava/io/File;
    //   57: invokestatic 103	com/flurry/sdk/fa:a	(Ljava/io/File;)Z
    //   60: istore 5
    //   62: iload 5
    //   64: ifne +9 -> 73
    //   67: aconst_null
    //   68: invokestatic 108	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   71: iconst_0
    //   72: ireturn
    //   73: new 110	java/io/DataOutputStream
    //   76: dup
    //   77: new 112	java/io/FileOutputStream
    //   80: dup
    //   81: aload_0
    //   82: getfield 37	com/flurry/sdk/df:e	Ljava/io/File;
    //   85: invokespecial 115	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   88: invokespecial 118	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   91: astore 7
    //   93: aload 7
    //   95: astore 6
    //   97: iload 4
    //   99: istore_3
    //   100: aload_1
    //   101: arraylength
    //   102: istore_2
    //   103: aload 7
    //   105: astore 6
    //   107: iload 4
    //   109: istore_3
    //   110: aload 7
    //   112: iload_2
    //   113: invokevirtual 122	java/io/DataOutputStream:writeShort	(I)V
    //   116: aload 7
    //   118: astore 6
    //   120: iload 4
    //   122: istore_3
    //   123: aload 7
    //   125: aload_1
    //   126: invokevirtual 126	java/io/DataOutputStream:write	([B)V
    //   129: aload 7
    //   131: astore 6
    //   133: iload 4
    //   135: istore_3
    //   136: aload 7
    //   138: iconst_0
    //   139: invokevirtual 122	java/io/DataOutputStream:writeShort	(I)V
    //   142: iconst_1
    //   143: istore 4
    //   145: aload 7
    //   147: astore 6
    //   149: iload 4
    //   151: istore_3
    //   152: aload_0
    //   153: iload_2
    //   154: putfield 35	com/flurry/sdk/df:c	I
    //   157: aload 7
    //   159: astore 6
    //   161: iload 4
    //   163: istore_3
    //   164: aload_0
    //   165: invokestatic 132	java/lang/System:currentTimeMillis	()J
    //   168: putfield 33	com/flurry/sdk/df:b	J
    //   171: aload 7
    //   173: invokestatic 108	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   176: iconst_1
    //   177: ireturn
    //   178: astore 8
    //   180: aconst_null
    //   181: astore_1
    //   182: aload_1
    //   183: astore 6
    //   185: bipush 6
    //   187: getstatic 23	com/flurry/sdk/df:d	Ljava/lang/String;
    //   190: ldc -122
    //   192: aload 8
    //   194: invokestatic 137	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   197: aload_1
    //   198: invokestatic 108	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   201: iload_3
    //   202: ireturn
    //   203: astore_1
    //   204: aconst_null
    //   205: astore 6
    //   207: aload 6
    //   209: invokestatic 108	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   212: aload_1
    //   213: athrow
    //   214: astore_1
    //   215: goto -8 -> 207
    //   218: astore 8
    //   220: aload 7
    //   222: astore_1
    //   223: goto -41 -> 182
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	226	0	this	df
    //   0	226	1	paramArrayOfByte	byte[]
    //   102	52	2	i	int
    //   4	198	3	bool1	boolean
    //   1	161	4	bool2	boolean
    //   60	3	5	bool3	boolean
    //   95	113	6	localObject	Object
    //   91	130	7	localDataOutputStream	java.io.DataOutputStream
    //   178	15	8	localThrowable1	Throwable
    //   218	1	8	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   53	62	178	java/lang/Throwable
    //   73	93	178	java/lang/Throwable
    //   53	62	203	finally
    //   73	93	203	finally
    //   100	103	214	finally
    //   110	116	214	finally
    //   123	129	214	finally
    //   136	142	214	finally
    //   152	157	214	finally
    //   164	171	214	finally
    //   185	197	214	finally
    //   100	103	218	java/lang/Throwable
    //   110	116	218	java/lang/Throwable
    //   123	129	218	java/lang/Throwable
    //   136	142	218	java/lang/Throwable
    //   152	157	218	java/lang/Throwable
    //   164	171	218	java/lang/Throwable
  }
  
  /* Error */
  public byte[] b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: invokestatic 81	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   9: invokestatic 84	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   12: if_acmpne +13 -> 25
    //   15: bipush 6
    //   17: getstatic 23	com/flurry/sdk/df:d	Ljava/lang/String;
    //   20: ldc -116
    //   22: invokestatic 91	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   25: aload_0
    //   26: getfield 37	com/flurry/sdk/df:e	Ljava/io/File;
    //   29: invokevirtual 144	java/io/File:exists	()Z
    //   32: ifeq +157 -> 189
    //   35: iconst_4
    //   36: getstatic 23	com/flurry/sdk/df:d	Ljava/lang/String;
    //   39: new 56	java/lang/StringBuilder
    //   42: dup
    //   43: ldc -110
    //   45: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload_0
    //   49: getfield 37	com/flurry/sdk/df:e	Ljava/io/File;
    //   52: invokevirtual 98	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   55: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokestatic 91	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   64: new 148	java/io/DataInputStream
    //   67: dup
    //   68: new 150	java/io/FileInputStream
    //   71: dup
    //   72: aload_0
    //   73: getfield 37	com/flurry/sdk/df:e	Ljava/io/File;
    //   76: invokespecial 151	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   79: invokespecial 154	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   82: astore 4
    //   84: aload 4
    //   86: astore_2
    //   87: aload 6
    //   89: astore_3
    //   90: aload 4
    //   92: invokevirtual 158	java/io/DataInputStream:readUnsignedShort	()I
    //   95: istore_1
    //   96: iload_1
    //   97: ifne +10 -> 107
    //   100: aload 4
    //   102: invokestatic 108	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   105: aconst_null
    //   106: areturn
    //   107: aload 4
    //   109: astore_2
    //   110: aload 6
    //   112: astore_3
    //   113: iload_1
    //   114: newarray <illegal type>
    //   116: astore 5
    //   118: aload 4
    //   120: astore_2
    //   121: aload 5
    //   123: astore_3
    //   124: aload 4
    //   126: aload 5
    //   128: invokevirtual 161	java/io/DataInputStream:readFully	([B)V
    //   131: aload 4
    //   133: astore_2
    //   134: aload 5
    //   136: astore_3
    //   137: aload 4
    //   139: invokevirtual 158	java/io/DataInputStream:readUnsignedShort	()I
    //   142: pop
    //   143: aload 4
    //   145: invokestatic 108	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   148: aload 5
    //   150: areturn
    //   151: astore 6
    //   153: aconst_null
    //   154: astore_3
    //   155: aload_3
    //   156: astore_2
    //   157: bipush 6
    //   159: getstatic 23	com/flurry/sdk/df:d	Ljava/lang/String;
    //   162: ldc -93
    //   164: aload 6
    //   166: invokestatic 137	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   169: aload_3
    //   170: invokestatic 108	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   173: aload 5
    //   175: areturn
    //   176: astore_2
    //   177: aconst_null
    //   178: astore 4
    //   180: aload_2
    //   181: astore_3
    //   182: aload 4
    //   184: invokestatic 108	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   187: aload_3
    //   188: athrow
    //   189: iconst_4
    //   190: getstatic 23	com/flurry/sdk/df:d	Ljava/lang/String;
    //   193: ldc -91
    //   195: invokestatic 91	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   198: aconst_null
    //   199: areturn
    //   200: astore_3
    //   201: aload_2
    //   202: astore 4
    //   204: goto -22 -> 182
    //   207: astore 6
    //   209: aload_3
    //   210: astore 5
    //   212: aload 4
    //   214: astore_3
    //   215: goto -60 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	218	0	this	df
    //   95	19	1	i	int
    //   86	71	2	localObject1	Object
    //   176	26	2	localObject2	Object
    //   89	99	3	localObject3	Object
    //   200	10	3	localObject4	Object
    //   214	1	3	localObject5	Object
    //   82	131	4	localObject6	Object
    //   4	207	5	localObject7	Object
    //   1	110	6	localObject8	Object
    //   151	14	6	localThrowable1	Throwable
    //   207	1	6	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   64	84	151	java/lang/Throwable
    //   64	84	176	finally
    //   90	96	200	finally
    //   113	118	200	finally
    //   124	131	200	finally
    //   137	143	200	finally
    //   157	169	200	finally
    //   90	96	207	java/lang/Throwable
    //   113	118	207	java/lang/Throwable
    //   124	131	207	java/lang/Throwable
    //   137	143	207	java/lang/Throwable
  }
  
  public boolean c()
  {
    if (e.exists())
    {
      if (e.delete())
      {
        el.a(4, d, "Deleted persistence file");
        b = -1L;
        c = -1;
        return true;
      }
      el.a(6, d, "Cannot delete persistence file");
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */