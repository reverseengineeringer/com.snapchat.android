package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzra;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

class zzk
  implements zzq
{
  private final zzra zzAM;
  private volatile String zzBC;
  private Future<String> zzBD;
  
  protected zzk(zzra paramzzra)
  {
    zzx.zzl(paramzzra);
    zzAM = paramzzra;
    zzBD = paramzzra.zza(new Callable()
    {
      public String zzfA()
      {
        return zzfx();
      }
    });
  }
  
  /* Error */
  protected static String zzC(Context paramContext)
  {
    // Byte code:
    //   0: ldc 50
    //   2: invokestatic 54	com/google/android/gms/common/internal/zzx:zzbe	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: ldc 56
    //   8: invokevirtual 62	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: aload_2
    //   13: astore_3
    //   14: bipush 36
    //   16: newarray <illegal type>
    //   18: astore 4
    //   20: aload_2
    //   21: astore_3
    //   22: aload_2
    //   23: aload 4
    //   25: iconst_0
    //   26: bipush 36
    //   28: invokevirtual 68	java/io/FileInputStream:read	([BII)I
    //   31: istore_1
    //   32: aload_2
    //   33: astore_3
    //   34: aload_2
    //   35: invokevirtual 72	java/io/FileInputStream:available	()I
    //   38: ifle +57 -> 95
    //   41: aload_2
    //   42: astore_3
    //   43: ldc 74
    //   45: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   48: aload_2
    //   49: astore_3
    //   50: aload_2
    //   51: invokevirtual 82	java/io/FileInputStream:close	()V
    //   54: aload_2
    //   55: astore_3
    //   56: aload_0
    //   57: ldc 56
    //   59: invokevirtual 86	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   62: pop
    //   63: aload_2
    //   64: ifnull +7 -> 71
    //   67: aload_2
    //   68: invokevirtual 82	java/io/FileInputStream:close	()V
    //   71: aconst_null
    //   72: areturn
    //   73: astore_0
    //   74: new 88	java/lang/StringBuilder
    //   77: dup
    //   78: ldc 90
    //   80: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: aload_0
    //   84: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   93: aconst_null
    //   94: areturn
    //   95: iload_1
    //   96: bipush 14
    //   98: if_icmpge +57 -> 155
    //   101: aload_2
    //   102: astore_3
    //   103: ldc 102
    //   105: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   108: aload_2
    //   109: astore_3
    //   110: aload_2
    //   111: invokevirtual 82	java/io/FileInputStream:close	()V
    //   114: aload_2
    //   115: astore_3
    //   116: aload_0
    //   117: ldc 56
    //   119: invokevirtual 86	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   122: pop
    //   123: aload_2
    //   124: ifnull -53 -> 71
    //   127: aload_2
    //   128: invokevirtual 82	java/io/FileInputStream:close	()V
    //   131: aconst_null
    //   132: areturn
    //   133: astore_0
    //   134: new 88	java/lang/StringBuilder
    //   137: dup
    //   138: ldc 90
    //   140: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   143: aload_0
    //   144: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   153: aconst_null
    //   154: areturn
    //   155: aload_2
    //   156: astore_3
    //   157: aload_2
    //   158: invokevirtual 82	java/io/FileInputStream:close	()V
    //   161: aload_2
    //   162: astore_3
    //   163: new 104	java/lang/String
    //   166: dup
    //   167: aload 4
    //   169: iconst_0
    //   170: iload_1
    //   171: invokespecial 107	java/lang/String:<init>	([BII)V
    //   174: astore 4
    //   176: aload_2
    //   177: astore_3
    //   178: ldc 109
    //   180: invokestatic 112	com/google/android/gms/analytics/zzae:zzab	(Ljava/lang/String;)V
    //   183: aload_2
    //   184: ifnull +7 -> 191
    //   187: aload_2
    //   188: invokevirtual 82	java/io/FileInputStream:close	()V
    //   191: aload 4
    //   193: areturn
    //   194: astore_0
    //   195: new 88	java/lang/StringBuilder
    //   198: dup
    //   199: ldc 90
    //   201: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   204: aload_0
    //   205: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   214: goto -23 -> 191
    //   217: astore_0
    //   218: aconst_null
    //   219: astore_0
    //   220: aload_0
    //   221: ifnull -150 -> 71
    //   224: aload_0
    //   225: invokevirtual 82	java/io/FileInputStream:close	()V
    //   228: aconst_null
    //   229: areturn
    //   230: astore_0
    //   231: new 88	java/lang/StringBuilder
    //   234: dup
    //   235: ldc 90
    //   237: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   240: aload_0
    //   241: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   244: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   250: aconst_null
    //   251: areturn
    //   252: astore_2
    //   253: aconst_null
    //   254: astore_2
    //   255: aload_2
    //   256: astore_3
    //   257: ldc 114
    //   259: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   262: aload_2
    //   263: astore_3
    //   264: aload_0
    //   265: ldc 56
    //   267: invokevirtual 86	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   270: pop
    //   271: aload_2
    //   272: ifnull -201 -> 71
    //   275: aload_2
    //   276: invokevirtual 82	java/io/FileInputStream:close	()V
    //   279: aconst_null
    //   280: areturn
    //   281: astore_0
    //   282: new 88	java/lang/StringBuilder
    //   285: dup
    //   286: ldc 90
    //   288: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   291: aload_0
    //   292: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   295: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   298: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   301: aconst_null
    //   302: areturn
    //   303: astore_0
    //   304: aconst_null
    //   305: astore_3
    //   306: aload_3
    //   307: ifnull +7 -> 314
    //   310: aload_3
    //   311: invokevirtual 82	java/io/FileInputStream:close	()V
    //   314: aload_0
    //   315: athrow
    //   316: astore_2
    //   317: new 88	java/lang/StringBuilder
    //   320: dup
    //   321: ldc 90
    //   323: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   326: aload_2
    //   327: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   330: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   333: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   336: goto -22 -> 314
    //   339: astore_0
    //   340: goto -34 -> 306
    //   343: astore_3
    //   344: goto -89 -> 255
    //   347: astore_0
    //   348: aload_2
    //   349: astore_0
    //   350: goto -130 -> 220
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	353	0	paramContext	Context
    //   31	140	1	i	int
    //   11	177	2	localFileInputStream	java.io.FileInputStream
    //   252	1	2	localIOException1	IOException
    //   254	22	2	localObject1	Object
    //   316	33	2	localIOException2	IOException
    //   13	298	3	localObject2	Object
    //   343	1	3	localIOException3	IOException
    //   18	174	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   67	71	73	java/io/IOException
    //   127	131	133	java/io/IOException
    //   187	191	194	java/io/IOException
    //   5	12	217	java/io/FileNotFoundException
    //   224	228	230	java/io/IOException
    //   5	12	252	java/io/IOException
    //   275	279	281	java/io/IOException
    //   5	12	303	finally
    //   310	314	316	java/io/IOException
    //   14	20	339	finally
    //   22	32	339	finally
    //   34	41	339	finally
    //   43	48	339	finally
    //   50	54	339	finally
    //   56	63	339	finally
    //   103	108	339	finally
    //   110	114	339	finally
    //   116	123	339	finally
    //   157	161	339	finally
    //   163	176	339	finally
    //   178	183	339	finally
    //   257	262	339	finally
    //   264	271	339	finally
    //   14	20	343	java/io/IOException
    //   22	32	343	java/io/IOException
    //   34	41	343	java/io/IOException
    //   43	48	343	java/io/IOException
    //   50	54	343	java/io/IOException
    //   56	63	343	java/io/IOException
    //   103	108	343	java/io/IOException
    //   110	114	343	java/io/IOException
    //   116	123	343	java/io/IOException
    //   157	161	343	java/io/IOException
    //   163	176	343	java/io/IOException
    //   178	183	343	java/io/IOException
    //   14	20	347	java/io/FileNotFoundException
    //   22	32	347	java/io/FileNotFoundException
    //   34	41	347	java/io/FileNotFoundException
    //   43	48	347	java/io/FileNotFoundException
    //   50	54	347	java/io/FileNotFoundException
    //   56	63	347	java/io/FileNotFoundException
    //   103	108	347	java/io/FileNotFoundException
    //   110	114	347	java/io/FileNotFoundException
    //   116	123	347	java/io/FileNotFoundException
    //   157	161	347	java/io/FileNotFoundException
    //   163	176	347	java/io/FileNotFoundException
    //   178	183	347	java/io/FileNotFoundException
  }
  
  private static boolean zzf(Context paramContext, String paramString)
  {
    boolean bool = false;
    zzx.zzbn(paramString);
    zzx.zzbe("ClientId should be saved from worker thread");
    Object localObject5 = null;
    Object localObject6 = null;
    Object localObject4 = null;
    Object localObject2 = localObject4;
    Object localObject3 = localObject5;
    Object localObject1 = localObject6;
    for (;;)
    {
      try
      {
        zzae.zzab("Storing clientId.");
        localObject2 = localObject4;
        localObject3 = localObject5;
        localObject1 = localObject6;
        paramContext = paramContext.openFileOutput("gaClientId", 0);
        localObject2 = paramContext;
        localObject3 = paramContext;
        localObject1 = paramContext;
        paramContext.write(paramString.getBytes());
      }
      catch (FileNotFoundException paramContext)
      {
        localObject1 = localObject2;
        zzae.zzZ("Error creating clientId file.");
        if (localObject2 == null) {
          continue;
        }
        try
        {
          ((FileOutputStream)localObject2).close();
          return false;
        }
        catch (IOException paramContext)
        {
          zzae.zzZ("Failed to close clientId writing stream: " + paramContext);
          return false;
        }
      }
      catch (IOException paramContext)
      {
        localObject1 = localObject3;
        zzae.zzZ("Error writing to clientId file.");
        if (localObject3 == null) {
          continue;
        }
        try
        {
          ((FileOutputStream)localObject3).close();
          return false;
        }
        catch (IOException paramContext)
        {
          zzae.zzZ("Failed to close clientId writing stream: " + paramContext);
          return false;
        }
      }
      finally
      {
        if (localObject1 == null) {
          break label202;
        }
      }
      try
      {
        paramContext.close();
        bool = true;
        return bool;
      }
      catch (IOException paramContext)
      {
        zzae.zzZ("Failed to close clientId writing stream: " + paramContext);
      }
    }
    try
    {
      ((FileOutputStream)localObject1).close();
      label202:
      throw paramContext;
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        zzae.zzZ("Failed to close clientId writing stream: " + paramString);
      }
    }
  }
  
  private String zzfy()
  {
    String str2 = zzfz();
    String str1 = str2;
    try
    {
      if (!zzf(zzAM.getContext(), str2)) {
        str1 = "0";
      }
      return str1;
    }
    catch (Exception localException)
    {
      zzae.zzZ("Error saving clientId file: " + localException);
    }
    return "0";
  }
  
  public String getValue(String paramString)
  {
    if ("&cid".equals(paramString)) {
      return zzfv();
    }
    return null;
  }
  
  public boolean zzaj(String paramString)
  {
    return "&cid".equals(paramString);
  }
  
  /* Error */
  protected String zzfv()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 41	com/google/android/gms/analytics/zzk:zzBD	Ljava/util/concurrent/Future;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +29 -> 37
    //   11: aload_0
    //   12: aload_0
    //   13: getfield 41	com/google/android/gms/analytics/zzk:zzBD	Ljava/util/concurrent/Future;
    //   16: invokeinterface 185 1 0
    //   21: checkcast 104	java/lang/String
    //   24: putfield 187	com/google/android/gms/analytics/zzk:zzBC	Ljava/lang/String;
    //   27: ldc -67
    //   29: invokestatic 112	com/google/android/gms/analytics/zzae:zzab	(Ljava/lang/String;)V
    //   32: aload_0
    //   33: aconst_null
    //   34: putfield 41	com/google/android/gms/analytics/zzk:zzBD	Ljava/util/concurrent/Future;
    //   37: aload_0
    //   38: getfield 187	com/google/android/gms/analytics/zzk:zzBC	Ljava/lang/String;
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: areturn
    //   46: astore_1
    //   47: new 88	java/lang/StringBuilder
    //   50: dup
    //   51: ldc -65
    //   53: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   56: aload_1
    //   57: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   66: aload_0
    //   67: ldc -94
    //   69: putfield 187	com/google/android/gms/analytics/zzk:zzBC	Ljava/lang/String;
    //   72: goto -45 -> 27
    //   75: astore_1
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    //   80: astore_1
    //   81: new 88	java/lang/StringBuilder
    //   84: dup
    //   85: ldc -65
    //   87: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: aload_1
    //   91: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokestatic 79	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   100: aload_0
    //   101: ldc -94
    //   103: putfield 187	com/google/android/gms/analytics/zzk:zzBC	Ljava/lang/String;
    //   106: goto -79 -> 27
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	zzk
    //   6	39	1	localObject1	Object
    //   46	11	1	localInterruptedException	InterruptedException
    //   75	4	1	localObject2	Object
    //   80	11	1	localExecutionException	java.util.concurrent.ExecutionException
    // Exception table:
    //   from	to	target	type
    //   11	27	46	java/lang/InterruptedException
    //   2	7	75	finally
    //   11	27	75	finally
    //   27	37	75	finally
    //   37	44	75	finally
    //   47	72	75	finally
    //   76	78	75	finally
    //   81	106	75	finally
    //   11	27	80	java/util/concurrent/ExecutionException
  }
  
  String zzfw()
  {
    try
    {
      zzBC = null;
      zzBD = zzAM.zza(new Callable()
      {
        public String zzfA()
        {
          return zzk.zza(zzk.this);
        }
      });
      return zzfv();
    }
    finally {}
  }
  
  String zzfx()
  {
    String str2 = zzC(zzAM.getContext());
    String str1 = str2;
    if (str2 == null) {
      str1 = zzfy();
    }
    return str1;
  }
  
  protected String zzfz()
  {
    return UUID.randomUUID().toString().toLowerCase();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */