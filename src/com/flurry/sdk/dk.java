package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class dk
{
  private static final String a = dk.class.getSimpleName();
  private boolean b;
  private List<dh> c;
  private long d = -1L;
  
  private static String a(String paramString)
  {
    Object localObject = paramString;
    if (paramString != null)
    {
      localObject = paramString;
      if (paramString.length() > 4)
      {
        localObject = new StringBuilder();
        int i = 0;
        while (i < paramString.length() - 4)
        {
          ((StringBuilder)localObject).append('*');
          i += 1;
        }
        ((StringBuilder)localObject).append(paramString.substring(paramString.length() - 4));
        localObject = ((StringBuilder)localObject).toString();
      }
    }
    return (String)localObject;
  }
  
  private boolean a(String paramString, DataInputStream paramDataInputStream)
  {
    int i = paramDataInputStream.readUnsignedShort();
    el.a(3, a, "File version: " + i);
    if (i > 2)
    {
      el.a(6, a, "Unknown agent file version: " + i);
      throw new IOException("Unknown agent file version: " + i);
    }
    if (i >= 2)
    {
      Object localObject = paramDataInputStream.readUTF();
      el.a(3, a, "Loading API key: " + a(paramString));
      if (((String)localObject).equals(paramString))
      {
        paramString = new ArrayList();
        paramDataInputStream.readUTF();
        boolean bool = paramDataInputStream.readBoolean();
        long l = paramDataInputStream.readLong();
        el.a(3, a, "Loading session reports");
        i = 0;
        for (;;)
        {
          int j = paramDataInputStream.readUnsignedShort();
          if (j == 0) {
            break;
          }
          localObject = new byte[j];
          paramDataInputStream.readFully((byte[])localObject);
          paramString.add(0, new dh((byte[])localObject));
          localObject = a;
          StringBuilder localStringBuilder = new StringBuilder("Session report added: ");
          i += 1;
          el.a(3, (String)localObject, i);
        }
        el.a(3, a, "Persistent file loaded");
        a(bool);
        a(l);
        a(paramString);
        return true;
      }
      el.a(3, a, "Api keys do not match, old: " + a(paramString) + ", new: " + a((String)localObject));
      return false;
    }
    el.a(5, a, "Deleting old file version: " + i);
    return false;
  }
  
  public void a(long paramLong)
  {
    d = paramLong;
  }
  
  /* Error */
  public void a(java.io.DataOutputStream paramDataOutputStream, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc -116
    //   3: invokevirtual 146	java/io/DataOutputStream:writeShort	(I)V
    //   6: aload_1
    //   7: iconst_2
    //   8: invokevirtual 146	java/io/DataOutputStream:writeShort	(I)V
    //   11: aload_1
    //   12: aload_2
    //   13: invokevirtual 149	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   16: aload_1
    //   17: aload_3
    //   18: invokevirtual 149	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   21: aload_1
    //   22: aload_0
    //   23: getfield 151	com/flurry/sdk/dk:b	Z
    //   26: invokevirtual 154	java/io/DataOutputStream:writeBoolean	(Z)V
    //   29: aload_1
    //   30: aload_0
    //   31: getfield 31	com/flurry/sdk/dk:d	J
    //   34: invokevirtual 157	java/io/DataOutputStream:writeLong	(J)V
    //   37: aload_0
    //   38: getfield 159	com/flurry/sdk/dk:c	Ljava/util/List;
    //   41: invokeinterface 162 1 0
    //   46: iconst_1
    //   47: isub
    //   48: istore 4
    //   50: iload 4
    //   52: iflt +64 -> 116
    //   55: aload_0
    //   56: getfield 159	com/flurry/sdk/dk:c	Ljava/util/List;
    //   59: iload 4
    //   61: invokeinterface 166 2 0
    //   66: checkcast 109	com/flurry/sdk/dh
    //   69: invokevirtual 169	com/flurry/sdk/dh:a	()[B
    //   72: astore_2
    //   73: aload_2
    //   74: arraylength
    //   75: istore 5
    //   77: iload 5
    //   79: iconst_2
    //   80: iadd
    //   81: aload_1
    //   82: invokevirtual 170	java/io/DataOutputStream:size	()I
    //   85: iadd
    //   86: ldc -85
    //   88: if_icmple +38 -> 126
    //   91: bipush 6
    //   93: getstatic 23	com/flurry/sdk/dk:a	Ljava/lang/String;
    //   96: new 40	java/lang/StringBuilder
    //   99: dup
    //   100: ldc -83
    //   102: invokespecial 66	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: iload 4
    //   107: invokevirtual 69	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   110: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 74	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   116: aload_1
    //   117: iconst_0
    //   118: invokevirtual 146	java/io/DataOutputStream:writeShort	(I)V
    //   121: aload_1
    //   122: invokestatic 178	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   125: return
    //   126: aload_1
    //   127: iload 5
    //   129: invokevirtual 146	java/io/DataOutputStream:writeShort	(I)V
    //   132: aload_1
    //   133: aload_2
    //   134: invokevirtual 181	java/io/DataOutputStream:write	([B)V
    //   137: iload 4
    //   139: iconst_1
    //   140: isub
    //   141: istore 4
    //   143: goto -93 -> 50
    //   146: astore_2
    //   147: bipush 6
    //   149: getstatic 23	com/flurry/sdk/dk:a	Ljava/lang/String;
    //   152: ldc -73
    //   154: aload_2
    //   155: invokestatic 186	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   158: new 78	java/io/IOException
    //   161: dup
    //   162: aload_2
    //   163: invokevirtual 189	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   166: invokespecial 79	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   169: athrow
    //   170: astore_2
    //   171: aload_1
    //   172: invokestatic 178	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   175: aload_2
    //   176: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	177	0	this	dk
    //   0	177	1	paramDataOutputStream	java.io.DataOutputStream
    //   0	177	2	paramString1	String
    //   0	177	3	paramString2	String
    //   48	94	4	i	int
    //   75	53	5	j	int
    // Exception table:
    //   from	to	target	type
    //   0	50	146	java/lang/Throwable
    //   55	116	146	java/lang/Throwable
    //   116	121	146	java/lang/Throwable
    //   126	137	146	java/lang/Throwable
    //   0	50	170	finally
    //   55	116	170	finally
    //   116	121	170	finally
    //   126	137	170	finally
    //   147	170	170	finally
  }
  
  public void a(List<dh> paramList)
  {
    c = paramList;
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean a()
  {
    return b;
  }
  
  /* Error */
  public boolean a(DataInputStream paramDataInputStream, String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_1
    //   4: invokevirtual 61	java/io/DataInputStream:readUnsignedShort	()I
    //   7: istore_3
    //   8: iconst_4
    //   9: getstatic 23	com/flurry/sdk/dk:a	Ljava/lang/String;
    //   12: new 40	java/lang/StringBuilder
    //   15: dup
    //   16: ldc -62
    //   18: invokespecial 66	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   21: iload_3
    //   22: invokevirtual 69	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   25: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: invokestatic 74	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   31: iload_3
    //   32: ldc -116
    //   34: if_icmpne +18 -> 52
    //   37: aload_0
    //   38: aload_2
    //   39: aload_1
    //   40: invokespecial 196	com/flurry/sdk/dk:a	(Ljava/lang/String;Ljava/io/DataInputStream;)Z
    //   43: istore 4
    //   45: aload_1
    //   46: invokestatic 178	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   49: iload 4
    //   51: ireturn
    //   52: iconst_3
    //   53: getstatic 23	com/flurry/sdk/dk:a	Ljava/lang/String;
    //   56: ldc -58
    //   58: invokestatic 74	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   61: goto -16 -> 45
    //   64: astore_2
    //   65: bipush 6
    //   67: getstatic 23	com/flurry/sdk/dk:a	Ljava/lang/String;
    //   70: ldc -56
    //   72: aload_2
    //   73: invokestatic 186	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   76: new 78	java/io/IOException
    //   79: dup
    //   80: aload_2
    //   81: invokevirtual 189	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   84: invokespecial 79	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   87: athrow
    //   88: astore_2
    //   89: aload_1
    //   90: invokestatic 178	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   93: aload_2
    //   94: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	this	dk
    //   0	95	1	paramDataInputStream	DataInputStream
    //   0	95	2	paramString	String
    //   7	28	3	i	int
    //   1	49	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	31	64	java/lang/Throwable
    //   37	45	64	java/lang/Throwable
    //   52	61	64	java/lang/Throwable
    //   3	31	88	finally
    //   37	45	88	finally
    //   52	61	88	finally
    //   65	88	88	finally
  }
  
  public List<dh> b()
  {
    return c;
  }
  
  public long c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */