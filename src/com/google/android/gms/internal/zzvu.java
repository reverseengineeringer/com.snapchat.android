package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.tagmanager.zzbf;

public class zzvu
  implements Runnable
{
  private final Context mContext;
  private final zzvj zzaCG;
  private final zzvt zzaCN;
  private final zzvo zzaCO;
  private final zzvs zzazL;
  
  public zzvu(Context paramContext, zzvj paramzzvj, zzvt paramzzvt)
  {
    this(paramContext, paramzzvj, paramzzvt, new zzvs(), new zzvo());
  }
  
  zzvu(Context paramContext, zzvj paramzzvj, zzvt paramzzvt, zzvs paramzzvs, zzvo paramzzvo)
  {
    zzx.zzl(paramContext);
    zzx.zzl(paramzzvt);
    mContext = paramContext;
    zzaCG = paramzzvj;
    zzaCN = paramzzvt;
    zzazL = paramzzvs;
    zzaCO = paramzzvo;
  }
  
  public zzvu(Context paramContext, zzvj paramzzvj, zzvt paramzzvt, String paramString)
  {
    this(paramContext, paramzzvj, paramzzvt, new zzvs(), new zzvo());
    zzaCO.zzdx(paramString);
  }
  
  public void run()
  {
    zzdo();
  }
  
  boolean zzdI(String paramString)
  {
    return mContext.getPackageManager().checkPermission(paramString, mContext.getPackageName()) == 0;
  }
  
  /* Error */
  void zzdo()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 82	com/google/android/gms/internal/zzvu:zzuQ	()Z
    //   4: ifne +14 -> 18
    //   7: aload_0
    //   8: getfield 43	com/google/android/gms/internal/zzvu:zzaCN	Lcom/google/android/gms/internal/zzvt;
    //   11: getstatic 88	com/google/android/gms/internal/zzvt$zza:zzaCI	Lcom/google/android/gms/internal/zzvt$zza;
    //   14: invokevirtual 94	com/google/android/gms/internal/zzvt:zza	(Lcom/google/android/gms/internal/zzvt$zza;)V
    //   17: return
    //   18: ldc 96
    //   20: invokestatic 101	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: getfield 45	com/google/android/gms/internal/zzvu:zzazL	Lcom/google/android/gms/internal/zzvs;
    //   27: invokevirtual 105	com/google/android/gms/internal/zzvs:zzuO	()Lcom/google/android/gms/internal/zzvr;
    //   30: astore_1
    //   31: aload_0
    //   32: getfield 47	com/google/android/gms/internal/zzvu:zzaCO	Lcom/google/android/gms/internal/zzvo;
    //   35: aload_0
    //   36: getfield 41	com/google/android/gms/internal/zzvu:zzaCG	Lcom/google/android/gms/internal/zzvj;
    //   39: invokevirtual 111	com/google/android/gms/internal/zzvj:zzun	()Ljava/util/List;
    //   42: invokevirtual 115	com/google/android/gms/internal/zzvo:zzv	(Ljava/util/List;)Ljava/lang/String;
    //   45: astore_2
    //   46: aload_1
    //   47: aload_2
    //   48: invokeinterface 121 2 0
    //   53: astore_3
    //   54: new 123	java/io/ByteArrayOutputStream
    //   57: dup
    //   58: invokespecial 124	java/io/ByteArrayOutputStream:<init>	()V
    //   61: astore 4
    //   63: aload_3
    //   64: aload 4
    //   66: invokestatic 129	com/google/android/gms/internal/zzlz:zza	(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    //   69: pop2
    //   70: aload_0
    //   71: getfield 43	com/google/android/gms/internal/zzvu:zzaCN	Lcom/google/android/gms/internal/zzvt;
    //   74: aload 4
    //   76: invokevirtual 133	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   79: invokevirtual 137	com/google/android/gms/internal/zzvt:zzo	([B)V
    //   82: aload_1
    //   83: invokeinterface 140 1 0
    //   88: ldc -114
    //   90: invokestatic 101	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   93: return
    //   94: astore_3
    //   95: new 144	java/lang/StringBuilder
    //   98: dup
    //   99: ldc -110
    //   101: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   104: aload_2
    //   105: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: invokestatic 158	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   114: aload_0
    //   115: getfield 43	com/google/android/gms/internal/zzvu:zzaCN	Lcom/google/android/gms/internal/zzvt;
    //   118: getstatic 161	com/google/android/gms/internal/zzvt$zza:zzaCK	Lcom/google/android/gms/internal/zzvt$zza;
    //   121: invokevirtual 94	com/google/android/gms/internal/zzvt:zza	(Lcom/google/android/gms/internal/zzvt$zza;)V
    //   124: aload_1
    //   125: invokeinterface 140 1 0
    //   130: return
    //   131: astore_3
    //   132: new 144	java/lang/StringBuilder
    //   135: dup
    //   136: ldc -93
    //   138: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   141: aload_2
    //   142: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: ldc -91
    //   147: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: aload_3
    //   151: invokevirtual 168	java/io/IOException:getMessage	()Ljava/lang/String;
    //   154: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: aload_3
    //   161: invokestatic 172	com/google/android/gms/tagmanager/zzbf:zzb	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   164: aload_0
    //   165: getfield 43	com/google/android/gms/internal/zzvu:zzaCN	Lcom/google/android/gms/internal/zzvt;
    //   168: getstatic 175	com/google/android/gms/internal/zzvt$zza:zzaCJ	Lcom/google/android/gms/internal/zzvt$zza;
    //   171: invokevirtual 94	com/google/android/gms/internal/zzvt:zza	(Lcom/google/android/gms/internal/zzvt$zza;)V
    //   174: aload_1
    //   175: invokeinterface 140 1 0
    //   180: return
    //   181: astore_3
    //   182: new 144	java/lang/StringBuilder
    //   185: dup
    //   186: ldc -79
    //   188: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   191: aload_2
    //   192: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: ldc -91
    //   197: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: aload_3
    //   201: invokevirtual 168	java/io/IOException:getMessage	()Ljava/lang/String;
    //   204: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: aload_3
    //   211: invokestatic 172	com/google/android/gms/tagmanager/zzbf:zzb	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   214: aload_0
    //   215: getfield 43	com/google/android/gms/internal/zzvu:zzaCN	Lcom/google/android/gms/internal/zzvt;
    //   218: getstatic 161	com/google/android/gms/internal/zzvt$zza:zzaCK	Lcom/google/android/gms/internal/zzvt$zza;
    //   221: invokevirtual 94	com/google/android/gms/internal/zzvt:zza	(Lcom/google/android/gms/internal/zzvt$zza;)V
    //   224: aload_1
    //   225: invokeinterface 140 1 0
    //   230: return
    //   231: astore_2
    //   232: aload_1
    //   233: invokeinterface 140 1 0
    //   238: aload_2
    //   239: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	240	0	this	zzvu
    //   30	203	1	localzzvr	zzvr
    //   45	147	2	str	String
    //   231	8	2	localObject	Object
    //   53	11	3	localInputStream	java.io.InputStream
    //   94	1	3	localFileNotFoundException	java.io.FileNotFoundException
    //   131	30	3	localIOException1	java.io.IOException
    //   181	30	3	localIOException2	java.io.IOException
    //   61	14	4	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   46	54	94	java/io/FileNotFoundException
    //   46	54	131	java/io/IOException
    //   54	82	181	java/io/IOException
    //   31	46	231	finally
    //   46	54	231	finally
    //   54	82	231	finally
    //   95	124	231	finally
    //   132	174	231	finally
    //   182	224	231	finally
  }
  
  boolean zzuQ()
  {
    if (!zzdI("android.permission.INTERNET"))
    {
      zzbf.zzZ("Missing android.permission.INTERNET. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.INTERNET\" />");
      return false;
    }
    if (!zzdI("android.permission.ACCESS_NETWORK_STATE"))
    {
      zzbf.zzZ("Missing android.permission.ACCESS_NETWORK_STATE. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />");
      return false;
    }
    NetworkInfo localNetworkInfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      zzbf.zzac("NetworkLoader: No network connectivity - Offline");
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */