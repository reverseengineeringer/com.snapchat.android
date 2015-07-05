package com.google.android.gms.internal;

import android.content.Context;

@zzgi
public final class zzhu
  extends zzhl
{
  private final Context mContext;
  private final String zznf;
  private final String zzxX;
  private String zzyW = null;
  
  public zzhu(Context paramContext, String paramString1, String paramString2)
  {
    mContext = paramContext;
    zznf = paramString1;
    zzxX = paramString2;
  }
  
  public zzhu(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    mContext = paramContext;
    zznf = paramString1;
    zzxX = paramString2;
    zzyW = paramString3;
  }
  
  public final void onStop() {}
  
  /* Error */
  public final void zzdw()
  {
    // Byte code:
    //   0: new 34	java/lang/StringBuilder
    //   3: dup
    //   4: ldc 36
    //   6: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   9: aload_0
    //   10: getfield 24	com/google/android/gms/internal/zzhu:zzxX	Ljava/lang/String;
    //   13: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   19: invokestatic 52	com/google/android/gms/internal/zzhx:zzab	(Ljava/lang/String;)V
    //   22: new 54	java/net/URL
    //   25: dup
    //   26: aload_0
    //   27: getfield 24	com/google/android/gms/internal/zzhu:zzxX	Ljava/lang/String;
    //   30: invokespecial 55	java/net/URL:<init>	(Ljava/lang/String;)V
    //   33: invokevirtual 59	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   36: checkcast 61	java/net/HttpURLConnection
    //   39: astore_2
    //   40: aload_0
    //   41: getfield 18	com/google/android/gms/internal/zzhu:zzyW	Ljava/lang/String;
    //   44: invokestatic 67	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   47: ifeq +74 -> 121
    //   50: invokestatic 73	com/google/android/gms/internal/zzab:zzaM	()Lcom/google/android/gms/internal/zzho;
    //   53: aload_0
    //   54: getfield 20	com/google/android/gms/internal/zzhu:mContext	Landroid/content/Context;
    //   57: aload_0
    //   58: getfield 22	com/google/android/gms/internal/zzhu:zznf	Ljava/lang/String;
    //   61: iconst_1
    //   62: aload_2
    //   63: invokevirtual 79	com/google/android/gms/internal/zzho:zza	(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
    //   66: aload_2
    //   67: invokevirtual 83	java/net/HttpURLConnection:getResponseCode	()I
    //   70: istore_1
    //   71: iload_1
    //   72: sipush 200
    //   75: if_icmplt +10 -> 85
    //   78: iload_1
    //   79: sipush 300
    //   82: if_icmplt +34 -> 116
    //   85: new 34	java/lang/StringBuilder
    //   88: dup
    //   89: ldc 85
    //   91: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   94: iload_1
    //   95: invokevirtual 88	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   98: ldc 90
    //   100: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: aload_0
    //   104: getfield 24	com/google/android/gms/internal/zzhu:zzxX	Ljava/lang/String;
    //   107: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 93	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   116: aload_2
    //   117: invokevirtual 96	java/net/HttpURLConnection:disconnect	()V
    //   120: return
    //   121: invokestatic 73	com/google/android/gms/internal/zzab:zzaM	()Lcom/google/android/gms/internal/zzho;
    //   124: aload_0
    //   125: getfield 20	com/google/android/gms/internal/zzhu:mContext	Landroid/content/Context;
    //   128: aload_0
    //   129: getfield 22	com/google/android/gms/internal/zzhu:zznf	Ljava/lang/String;
    //   132: iconst_1
    //   133: aload_2
    //   134: aload_0
    //   135: getfield 18	com/google/android/gms/internal/zzhu:zzyW	Ljava/lang/String;
    //   138: invokevirtual 99	com/google/android/gms/internal/zzho:zza	(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;Ljava/lang/String;)V
    //   141: goto -75 -> 66
    //   144: astore_3
    //   145: aload_2
    //   146: invokevirtual 96	java/net/HttpURLConnection:disconnect	()V
    //   149: aload_3
    //   150: athrow
    //   151: astore_2
    //   152: new 34	java/lang/StringBuilder
    //   155: dup
    //   156: ldc 101
    //   158: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   161: aload_0
    //   162: getfield 24	com/google/android/gms/internal/zzhu:zzxX	Ljava/lang/String;
    //   165: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: ldc 103
    //   170: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: aload_2
    //   174: invokevirtual 106	java/lang/IndexOutOfBoundsException:getMessage	()Ljava/lang/String;
    //   177: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokestatic 93	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   186: return
    //   187: astore_2
    //   188: new 34	java/lang/StringBuilder
    //   191: dup
    //   192: ldc 108
    //   194: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   197: aload_0
    //   198: getfield 24	com/google/android/gms/internal/zzhu:zzxX	Ljava/lang/String;
    //   201: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: ldc 103
    //   206: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: aload_2
    //   210: invokevirtual 109	java/io/IOException:getMessage	()Ljava/lang/String;
    //   213: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: invokestatic 93	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   222: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	this	zzhu
    //   70	25	1	i	int
    //   39	107	2	localHttpURLConnection	java.net.HttpURLConnection
    //   151	23	2	localIndexOutOfBoundsException	IndexOutOfBoundsException
    //   187	23	2	localIOException	java.io.IOException
    //   144	6	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   40	66	144	finally
    //   66	71	144	finally
    //   85	116	144	finally
    //   121	141	144	finally
    //   0	40	151	java/lang/IndexOutOfBoundsException
    //   116	120	151	java/lang/IndexOutOfBoundsException
    //   145	151	151	java/lang/IndexOutOfBoundsException
    //   0	40	187	java/io/IOException
    //   116	120	187	java/io/IOException
    //   145	151	187	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */