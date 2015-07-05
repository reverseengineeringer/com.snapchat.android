package com.flurry.sdk;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class db
{
  private int a;
  private String b;
  private Map<String, String> c;
  private long d;
  private boolean e;
  private boolean f;
  private long g;
  
  public db(int paramInt, String paramString, Map<String, String> paramMap, long paramLong, boolean paramBoolean)
  {
    a = paramInt;
    b = paramString;
    c = paramMap;
    d = paramLong;
    e = paramBoolean;
    if (e)
    {
      f = false;
      return;
    }
    f = true;
  }
  
  public final void a(long paramLong)
  {
    f = true;
    g = (paramLong - d);
    el.a(3, "FlurryAgent", "Ended event '" + b + "' (" + d + ") after " + g + "ms");
  }
  
  public final void a(Map<String, String> paramMap)
  {
    if ((c == null) || (c.size() == 0)) {
      c = paramMap;
    }
    for (;;)
    {
      return;
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        if (c.containsKey(localEntry.getKey()))
        {
          c.remove(localEntry.getKey());
          c.put(localEntry.getKey(), localEntry.getValue());
        }
        else
        {
          c.put(localEntry.getKey(), localEntry.getValue());
        }
      }
    }
  }
  
  public final boolean a()
  {
    return e;
  }
  
  public final boolean a(String paramString)
  {
    return (e) && (g == 0L) && (b.equals(paramString));
  }
  
  public final void b(Map<String, String> paramMap)
  {
    c = paramMap;
  }
  
  public final boolean b()
  {
    return f;
  }
  
  public final Map<String, String> c()
  {
    return c;
  }
  
  public final int d()
  {
    return e().length;
  }
  
  /* Error */
  public final byte[] e()
  {
    // Byte code:
    //   0: new 134	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 135	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_2
    //   8: new 137	java/io/DataOutputStream
    //   11: dup
    //   12: aload_2
    //   13: invokespecial 140	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   16: astore_1
    //   17: aload_1
    //   18: aload_0
    //   19: getfield 24	com/flurry/sdk/db:a	I
    //   22: invokevirtual 144	java/io/DataOutputStream:writeShort	(I)V
    //   25: aload_1
    //   26: aload_0
    //   27: getfield 26	com/flurry/sdk/db:b	Ljava/lang/String;
    //   30: invokevirtual 147	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   33: aload_0
    //   34: getfield 28	com/flurry/sdk/db:c	Ljava/util/Map;
    //   37: ifnonnull +39 -> 76
    //   40: aload_1
    //   41: iconst_0
    //   42: invokevirtual 144	java/io/DataOutputStream:writeShort	(I)V
    //   45: aload_1
    //   46: aload_0
    //   47: getfield 30	com/flurry/sdk/db:d	J
    //   50: invokevirtual 150	java/io/DataOutputStream:writeLong	(J)V
    //   53: aload_1
    //   54: aload_0
    //   55: getfield 40	com/flurry/sdk/db:g	J
    //   58: invokevirtual 150	java/io/DataOutputStream:writeLong	(J)V
    //   61: aload_1
    //   62: invokevirtual 153	java/io/DataOutputStream:flush	()V
    //   65: aload_2
    //   66: invokevirtual 156	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   69: astore_2
    //   70: aload_1
    //   71: invokestatic 161	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   74: aload_2
    //   75: areturn
    //   76: aload_1
    //   77: aload_0
    //   78: getfield 28	com/flurry/sdk/db:c	Ljava/util/Map;
    //   81: invokeinterface 78 1 0
    //   86: invokevirtual 144	java/io/DataOutputStream:writeShort	(I)V
    //   89: aload_0
    //   90: getfield 28	com/flurry/sdk/db:c	Ljava/util/Map;
    //   93: invokeinterface 82 1 0
    //   98: invokeinterface 88 1 0
    //   103: astore_3
    //   104: aload_3
    //   105: invokeinterface 94 1 0
    //   110: ifeq -65 -> 45
    //   113: aload_3
    //   114: invokeinterface 98 1 0
    //   119: checkcast 100	java/util/Map$Entry
    //   122: astore 4
    //   124: aload_1
    //   125: aload 4
    //   127: invokeinterface 103 1 0
    //   132: checkcast 122	java/lang/String
    //   135: invokestatic 164	com/flurry/sdk/fb:a	(Ljava/lang/String;)Ljava/lang/String;
    //   138: invokevirtual 147	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   141: aload_1
    //   142: aload 4
    //   144: invokeinterface 114 1 0
    //   149: checkcast 122	java/lang/String
    //   152: invokestatic 164	com/flurry/sdk/fb:a	(Ljava/lang/String;)Ljava/lang/String;
    //   155: invokevirtual 147	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   158: goto -54 -> 104
    //   161: astore_2
    //   162: aload_1
    //   163: invokestatic 161	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   166: iconst_0
    //   167: newarray <illegal type>
    //   169: areturn
    //   170: astore_1
    //   171: aconst_null
    //   172: astore_3
    //   173: aload_1
    //   174: astore_2
    //   175: aload_3
    //   176: invokestatic 161	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   179: aload_2
    //   180: athrow
    //   181: astore_2
    //   182: aload_1
    //   183: astore_3
    //   184: goto -9 -> 175
    //   187: astore_1
    //   188: goto -13 -> 175
    //   191: astore_1
    //   192: aconst_null
    //   193: astore_1
    //   194: goto -32 -> 162
    // Exception table:
    //   from	to	target	type
    //   17	45	161	java/io/IOException
    //   45	70	161	java/io/IOException
    //   76	104	161	java/io/IOException
    //   104	158	161	java/io/IOException
    //   0	17	170	finally
    //   17	45	181	finally
    //   45	70	181	finally
    //   76	104	181	finally
    //   104	158	181	finally
    //   0	17	191	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */