package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.internal.zzc.zzj;
import com.google.android.gms.internal.zzvs;

class zzck
  implements Runnable
{
  private final Context mContext;
  private volatile String zzaxT;
  private final String zzaxw;
  private final zzvs zzazL;
  private final String zzazM;
  private zzbe<zzc.zzj> zzazN;
  private volatile zzr zzazO;
  private volatile String zzazP;
  
  zzck(Context paramContext, String paramString, zzvs paramzzvs, zzr paramzzr)
  {
    mContext = paramContext;
    zzazL = paramzzvs;
    zzaxw = paramString;
    zzazO = paramzzr;
    zzazM = ("/r?id=" + paramString);
    zzaxT = zzazM;
    zzazP = null;
  }
  
  public zzck(Context paramContext, String paramString, zzr paramzzr)
  {
    this(paramContext, paramString, new zzvs(), paramzzr);
  }
  
  private boolean zztA()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      zzbf.zzab("...no network connectivity");
      return false;
    }
    return true;
  }
  
  /* Error */
  private void zztB()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 96	com/google/android/gms/tagmanager/zzck:zztA	()Z
    //   4: ifne +16 -> 20
    //   7: aload_0
    //   8: getfield 98	com/google/android/gms/tagmanager/zzck:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   11: getstatic 104	com/google/android/gms/tagmanager/zzbe$zza:zzazg	Lcom/google/android/gms/tagmanager/zzbe$zza;
    //   14: invokeinterface 110 2 0
    //   19: return
    //   20: ldc 112
    //   22: invokestatic 89	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: invokevirtual 115	com/google/android/gms/tagmanager/zzck:zztC	()Ljava/lang/String;
    //   29: astore_2
    //   30: aload_0
    //   31: getfield 29	com/google/android/gms/tagmanager/zzck:zzazL	Lcom/google/android/gms/internal/zzvs;
    //   34: invokevirtual 119	com/google/android/gms/internal/zzvs:zzuO	()Lcom/google/android/gms/internal/zzvr;
    //   37: astore_1
    //   38: aload_1
    //   39: aload_2
    //   40: invokeinterface 125 2 0
    //   45: astore_3
    //   46: new 127	java/io/ByteArrayOutputStream
    //   49: dup
    //   50: invokespecial 128	java/io/ByteArrayOutputStream:<init>	()V
    //   53: astore 4
    //   55: aload_3
    //   56: aload 4
    //   58: invokestatic 134	com/google/android/gms/internal/zzvl:zzc	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   61: aload 4
    //   63: invokevirtual 138	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   66: invokestatic 144	com/google/android/gms/internal/zzc$zzj:zzb	([B)Lcom/google/android/gms/internal/zzc$zzj;
    //   69: astore_3
    //   70: new 35	java/lang/StringBuilder
    //   73: dup
    //   74: ldc -110
    //   76: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   79: aload_3
    //   80: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: invokestatic 89	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   89: aload_3
    //   90: getfield 153	com/google/android/gms/internal/zzc$zzj:zzgs	Lcom/google/android/gms/internal/zzc$zzf;
    //   93: ifnonnull +33 -> 126
    //   96: aload_3
    //   97: getfield 157	com/google/android/gms/internal/zzc$zzj:zzgr	[Lcom/google/android/gms/internal/zzc$zzi;
    //   100: arraylength
    //   101: ifne +25 -> 126
    //   104: new 35	java/lang/StringBuilder
    //   107: dup
    //   108: ldc -97
    //   110: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_0
    //   114: getfield 31	com/google/android/gms/tagmanager/zzck:zzaxw	Ljava/lang/String;
    //   117: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokestatic 89	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   126: aload_0
    //   127: getfield 98	com/google/android/gms/tagmanager/zzck:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   130: aload_3
    //   131: invokeinterface 163 2 0
    //   136: aload_1
    //   137: invokeinterface 166 1 0
    //   142: ldc -88
    //   144: invokestatic 89	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   147: return
    //   148: astore_3
    //   149: new 35	java/lang/StringBuilder
    //   152: dup
    //   153: ldc -86
    //   155: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   158: aload_2
    //   159: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc -84
    //   164: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload_0
    //   168: getfield 31	com/google/android/gms/tagmanager/zzck:zzaxw	Ljava/lang/String;
    //   171: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: ldc -82
    //   176: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: invokestatic 177	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 98	com/google/android/gms/tagmanager/zzck:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   189: getstatic 180	com/google/android/gms/tagmanager/zzbe$zza:zzazi	Lcom/google/android/gms/tagmanager/zzbe$zza;
    //   192: invokeinterface 110 2 0
    //   197: aload_1
    //   198: invokeinterface 166 1 0
    //   203: return
    //   204: astore_3
    //   205: new 35	java/lang/StringBuilder
    //   208: dup
    //   209: ldc -74
    //   211: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   214: aload_2
    //   215: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc -72
    //   220: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: aload_3
    //   224: invokevirtual 187	java/io/IOException:getMessage	()Ljava/lang/String;
    //   227: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   233: aload_3
    //   234: invokestatic 191	com/google/android/gms/tagmanager/zzbf:zzd	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   237: aload_0
    //   238: getfield 98	com/google/android/gms/tagmanager/zzck:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   241: getstatic 194	com/google/android/gms/tagmanager/zzbe$zza:zzazh	Lcom/google/android/gms/tagmanager/zzbe$zza;
    //   244: invokeinterface 110 2 0
    //   249: aload_1
    //   250: invokeinterface 166 1 0
    //   255: return
    //   256: astore_3
    //   257: new 35	java/lang/StringBuilder
    //   260: dup
    //   261: ldc -60
    //   263: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: aload_2
    //   267: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: ldc -72
    //   272: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: aload_3
    //   276: invokevirtual 187	java/io/IOException:getMessage	()Ljava/lang/String;
    //   279: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: aload_3
    //   286: invokestatic 191	com/google/android/gms/tagmanager/zzbf:zzd	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   289: aload_0
    //   290: getfield 98	com/google/android/gms/tagmanager/zzck:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   293: getstatic 180	com/google/android/gms/tagmanager/zzbe$zza:zzazi	Lcom/google/android/gms/tagmanager/zzbe$zza;
    //   296: invokeinterface 110 2 0
    //   301: aload_1
    //   302: invokeinterface 166 1 0
    //   307: return
    //   308: astore_2
    //   309: aload_1
    //   310: invokeinterface 166 1 0
    //   315: aload_2
    //   316: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	317	0	this	zzck
    //   37	273	1	localzzvr	com.google.android.gms.internal.zzvr
    //   29	238	2	str	String
    //   308	8	2	localObject1	Object
    //   45	86	3	localObject2	Object
    //   148	1	3	localFileNotFoundException	java.io.FileNotFoundException
    //   204	30	3	localIOException1	java.io.IOException
    //   256	30	3	localIOException2	java.io.IOException
    //   53	9	4	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   38	46	148	java/io/FileNotFoundException
    //   38	46	204	java/io/IOException
    //   46	126	256	java/io/IOException
    //   126	136	256	java/io/IOException
    //   38	46	308	finally
    //   46	126	308	finally
    //   126	136	308	finally
    //   149	197	308	finally
    //   205	249	308	finally
    //   257	301	308	finally
  }
  
  public void run()
  {
    if (zzazN == null) {
      throw new IllegalStateException("callback must be set before execute");
    }
    zzazN.zzsR();
    zztB();
  }
  
  void zza(zzbe<zzc.zzj> paramzzbe)
  {
    zzazN = paramzzbe;
  }
  
  void zzcT(String paramString)
  {
    if (paramString == null)
    {
      zzaxT = zzazM;
      return;
    }
    zzbf.zzY("Setting CTFE URL path: " + paramString);
    zzaxT = paramString;
  }
  
  void zzdg(String paramString)
  {
    zzbf.zzY("Setting previous container version: " + paramString);
    zzazP = paramString;
  }
  
  String zztC()
  {
    Object localObject2 = zzazO.zzsT() + zzaxT + "&v=a65833898";
    Object localObject1 = localObject2;
    if (zzazP != null)
    {
      localObject1 = localObject2;
      if (!zzazP.trim().equals("")) {
        localObject1 = (String)localObject2 + "&pv=" + zzazP;
      }
    }
    localObject2 = localObject1;
    if (zzca.zztx().zzty().equals(zzca.zza.zzazD)) {
      localObject2 = (String)localObject1 + "&gtm_debug=x";
    }
    return (String)localObject2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */