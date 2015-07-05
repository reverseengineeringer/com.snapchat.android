package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzc.zzf;
import com.google.android.gms.internal.zzvd.zza;
import com.google.android.gms.internal.zzvl;
import com.google.android.gms.internal.zzvl.zzc;
import com.google.android.gms.internal.zzvl.zzg;
import com.google.android.gms.internal.zzwx;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

class zzcm
  implements zzo.zzf
{
  private final Context mContext;
  private final String zzaxw;
  private zzbe<zzvd.zza> zzazN;
  private final ExecutorService zzazT;
  
  zzcm(Context paramContext, String paramString)
  {
    mContext = paramContext;
    zzaxw = paramString;
    zzazT = Executors.newSingleThreadExecutor();
  }
  
  private zzvl.zzc zza(ByteArrayOutputStream paramByteArrayOutputStream)
  {
    try
    {
      paramByteArrayOutputStream = zzay.zzdd(paramByteArrayOutputStream.toString("UTF-8"));
      return paramByteArrayOutputStream;
    }
    catch (UnsupportedEncodingException paramByteArrayOutputStream)
    {
      zzbf.zzY("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
      return null;
    }
    catch (JSONException paramByteArrayOutputStream)
    {
      zzbf.zzac("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
    }
    return null;
  }
  
  private void zzd(zzvd.zza paramzza)
  {
    if ((zzgs == null) && (zzaBL == null)) {
      throw new IllegalArgumentException("Resource and SupplementedResource are NULL.");
    }
  }
  
  private zzvl.zzc zzl(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = zzvl.zzb(zzc.zzf.zza(paramArrayOfByte));
      if (paramArrayOfByte != null) {
        zzbf.zzab("The container was successfully loaded from the resource (using binary file)");
      }
      return paramArrayOfByte;
    }
    catch (zzwx paramArrayOfByte)
    {
      zzbf.zzZ("The resource file is corrupted. The container cannot be extracted from the binary file");
      return null;
    }
    catch (zzvl.zzg paramArrayOfByte)
    {
      zzbf.zzac("The resource file is invalid. The container from the binary file is invalid");
    }
    return null;
  }
  
  public void release()
  {
    try
    {
      zzazT.shutdown();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void zza(zzbe<zzvd.zza> paramzzbe)
  {
    zzazN = paramzzbe;
  }
  
  public void zzb(final zzvd.zza paramzza)
  {
    zzazT.execute(new Runnable()
    {
      public void run()
      {
        zzc(paramzza);
      }
    });
  }
  
  /* Error */
  boolean zzc(zzvd.zza paramzza)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 145	com/google/android/gms/tagmanager/zzcm:zztG	()Ljava/io/File;
    //   4: astore_3
    //   5: new 147	java/io/FileOutputStream
    //   8: dup
    //   9: aload_3
    //   10: invokespecial 150	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   13: astore_2
    //   14: aload_2
    //   15: aload_1
    //   16: invokestatic 156	com/google/android/gms/internal/zzwy:zzf	(Lcom/google/android/gms/internal/zzwy;)[B
    //   19: invokevirtual 160	java/io/FileOutputStream:write	([B)V
    //   22: aload_2
    //   23: invokevirtual 163	java/io/FileOutputStream:close	()V
    //   26: iconst_1
    //   27: ireturn
    //   28: astore_1
    //   29: ldc -91
    //   31: invokestatic 115	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   34: iconst_0
    //   35: ireturn
    //   36: astore_1
    //   37: ldc -89
    //   39: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   42: goto -16 -> 26
    //   45: astore_1
    //   46: ldc -87
    //   48: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   51: aload_3
    //   52: invokevirtual 175	java/io/File:delete	()Z
    //   55: pop
    //   56: aload_2
    //   57: invokevirtual 163	java/io/FileOutputStream:close	()V
    //   60: iconst_0
    //   61: ireturn
    //   62: astore_1
    //   63: ldc -89
    //   65: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   68: iconst_0
    //   69: ireturn
    //   70: astore_1
    //   71: aload_2
    //   72: invokevirtual 163	java/io/FileOutputStream:close	()V
    //   75: aload_1
    //   76: athrow
    //   77: astore_2
    //   78: ldc -89
    //   80: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   83: goto -8 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	zzcm
    //   0	86	1	paramzza	zzvd.zza
    //   13	59	2	localFileOutputStream	java.io.FileOutputStream
    //   77	1	2	localIOException	java.io.IOException
    //   4	48	3	localFile	File
    // Exception table:
    //   from	to	target	type
    //   5	14	28	java/io/FileNotFoundException
    //   22	26	36	java/io/IOException
    //   14	22	45	java/io/IOException
    //   56	60	62	java/io/IOException
    //   14	22	70	finally
    //   46	56	70	finally
    //   71	75	77	java/io/IOException
  }
  
  /* Error */
  public zzvl.zzc zzhc(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 26	com/google/android/gms/tagmanager/zzcm:mContext	Landroid/content/Context;
    //   4: invokevirtual 185	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   7: iload_1
    //   8: invokevirtual 191	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   11: astore_3
    //   12: new 193	java/lang/StringBuilder
    //   15: dup
    //   16: ldc -61
    //   18: invokespecial 196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   21: iload_1
    //   22: invokevirtual 200	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   25: ldc -54
    //   27: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_0
    //   31: getfield 26	com/google/android/gms/tagmanager/zzcm:mContext	Landroid/content/Context;
    //   34: invokevirtual 185	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   37: iload_1
    //   38: invokevirtual 209	android/content/res/Resources:getResourceName	(I)Ljava/lang/String;
    //   41: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: ldc -45
    //   46: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokestatic 110	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   55: new 47	java/io/ByteArrayOutputStream
    //   58: dup
    //   59: invokespecial 215	java/io/ByteArrayOutputStream:<init>	()V
    //   62: astore_2
    //   63: aload_3
    //   64: aload_2
    //   65: invokestatic 218	com/google/android/gms/internal/zzvl:zzc	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   68: aload_0
    //   69: aload_2
    //   70: invokespecial 220	com/google/android/gms/tagmanager/zzcm:zza	(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/internal/zzvl$zzc;
    //   73: astore_3
    //   74: aload_3
    //   75: ifnull +32 -> 107
    //   78: ldc -34
    //   80: invokestatic 110	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   83: aload_3
    //   84: areturn
    //   85: astore_2
    //   86: new 193	java/lang/StringBuilder
    //   89: dup
    //   90: ldc -32
    //   92: invokespecial 196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   95: iload_1
    //   96: invokevirtual 200	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   99: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   105: aconst_null
    //   106: areturn
    //   107: aload_0
    //   108: aload_2
    //   109: invokevirtual 228	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   112: invokespecial 230	com/google/android/gms/tagmanager/zzcm:zzl	([B)Lcom/google/android/gms/internal/zzvl$zzc;
    //   115: astore_2
    //   116: aload_2
    //   117: areturn
    //   118: astore_2
    //   119: new 193	java/lang/StringBuilder
    //   122: dup
    //   123: ldc -24
    //   125: invokespecial 196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   128: iload_1
    //   129: invokevirtual 200	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   132: ldc -54
    //   134: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload_0
    //   138: getfield 26	com/google/android/gms/tagmanager/zzcm:mContext	Landroid/content/Context;
    //   141: invokevirtual 185	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   144: iload_1
    //   145: invokevirtual 209	android/content/res/Resources:getResourceName	(I)Ljava/lang/String;
    //   148: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: ldc -45
    //   153: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   159: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   162: aconst_null
    //   163: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	this	zzcm
    //   0	164	1	paramInt	int
    //   62	8	2	localByteArrayOutputStream	ByteArrayOutputStream
    //   85	24	2	localNotFoundException	android.content.res.Resources.NotFoundException
    //   115	2	2	localzzc	zzvl.zzc
    //   118	1	2	localIOException	java.io.IOException
    //   11	73	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	12	85	android/content/res/Resources$NotFoundException
    //   55	74	118	java/io/IOException
    //   78	83	118	java/io/IOException
    //   107	116	118	java/io/IOException
  }
  
  public void zzsS()
  {
    zzazT.execute(new Runnable()
    {
      public void run()
      {
        zztF();
      }
    });
  }
  
  /* Error */
  void zztF()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 126	com/google/android/gms/tagmanager/zzcm:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   4: ifnonnull +13 -> 17
    //   7: new 239	java/lang/IllegalStateException
    //   10: dup
    //   11: ldc -15
    //   13: invokespecial 242	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: aload_0
    //   18: getfield 126	com/google/android/gms/tagmanager/zzcm:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   21: invokeinterface 247 1 0
    //   26: ldc -7
    //   28: invokestatic 110	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   31: invokestatic 255	com/google/android/gms/tagmanager/zzca:zztx	()Lcom/google/android/gms/tagmanager/zzca;
    //   34: invokevirtual 259	com/google/android/gms/tagmanager/zzca:zzty	()Lcom/google/android/gms/tagmanager/zzca$zza;
    //   37: getstatic 265	com/google/android/gms/tagmanager/zzca$zza:zzazC	Lcom/google/android/gms/tagmanager/zzca$zza;
    //   40: if_acmpeq +15 -> 55
    //   43: invokestatic 255	com/google/android/gms/tagmanager/zzca:zztx	()Lcom/google/android/gms/tagmanager/zzca;
    //   46: invokevirtual 259	com/google/android/gms/tagmanager/zzca:zzty	()Lcom/google/android/gms/tagmanager/zzca$zza;
    //   49: getstatic 268	com/google/android/gms/tagmanager/zzca$zza:zzazD	Lcom/google/android/gms/tagmanager/zzca$zza;
    //   52: if_acmpne +32 -> 84
    //   55: aload_0
    //   56: getfield 28	com/google/android/gms/tagmanager/zzcm:zzaxw	Ljava/lang/String;
    //   59: invokestatic 255	com/google/android/gms/tagmanager/zzca:zztx	()Lcom/google/android/gms/tagmanager/zzca;
    //   62: invokevirtual 271	com/google/android/gms/tagmanager/zzca:getContainerId	()Ljava/lang/String;
    //   65: invokevirtual 277	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   68: ifeq +16 -> 84
    //   71: aload_0
    //   72: getfield 126	com/google/android/gms/tagmanager/zzcm:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   75: getstatic 283	com/google/android/gms/tagmanager/zzbe$zza:zzazg	Lcom/google/android/gms/tagmanager/zzbe$zza;
    //   78: invokeinterface 286 2 0
    //   83: return
    //   84: new 288	java/io/FileInputStream
    //   87: dup
    //   88: aload_0
    //   89: invokevirtual 145	com/google/android/gms/tagmanager/zzcm:zztG	()Ljava/io/File;
    //   92: invokespecial 289	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   95: astore_1
    //   96: new 47	java/io/ByteArrayOutputStream
    //   99: dup
    //   100: invokespecial 215	java/io/ByteArrayOutputStream:<init>	()V
    //   103: astore_2
    //   104: aload_1
    //   105: aload_2
    //   106: invokestatic 218	com/google/android/gms/internal/zzvl:zzc	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   109: aload_2
    //   110: invokevirtual 228	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   113: invokestatic 293	com/google/android/gms/internal/zzvd$zza:zzm	([B)Lcom/google/android/gms/internal/zzvd$zza;
    //   116: astore_2
    //   117: aload_0
    //   118: aload_2
    //   119: invokespecial 295	com/google/android/gms/tagmanager/zzcm:zzd	(Lcom/google/android/gms/internal/zzvd$zza;)V
    //   122: aload_0
    //   123: getfield 126	com/google/android/gms/tagmanager/zzcm:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   126: aload_2
    //   127: invokeinterface 299 2 0
    //   132: aload_1
    //   133: invokevirtual 300	java/io/FileInputStream:close	()V
    //   136: ldc_w 302
    //   139: invokestatic 110	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   142: return
    //   143: astore_1
    //   144: ldc_w 304
    //   147: invokestatic 65	com/google/android/gms/tagmanager/zzbf:zzY	(Ljava/lang/String;)V
    //   150: aload_0
    //   151: getfield 126	com/google/android/gms/tagmanager/zzcm:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   154: getstatic 283	com/google/android/gms/tagmanager/zzbe$zza:zzazg	Lcom/google/android/gms/tagmanager/zzbe$zza;
    //   157: invokeinterface 286 2 0
    //   162: return
    //   163: astore_1
    //   164: ldc_w 306
    //   167: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   170: goto -34 -> 136
    //   173: astore_2
    //   174: aload_0
    //   175: getfield 126	com/google/android/gms/tagmanager/zzcm:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   178: getstatic 309	com/google/android/gms/tagmanager/zzbe$zza:zzazh	Lcom/google/android/gms/tagmanager/zzbe$zza;
    //   181: invokeinterface 286 2 0
    //   186: ldc_w 311
    //   189: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   192: aload_1
    //   193: invokevirtual 300	java/io/FileInputStream:close	()V
    //   196: goto -60 -> 136
    //   199: astore_1
    //   200: ldc_w 306
    //   203: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   206: goto -70 -> 136
    //   209: astore_2
    //   210: aload_0
    //   211: getfield 126	com/google/android/gms/tagmanager/zzcm:zzazN	Lcom/google/android/gms/tagmanager/zzbe;
    //   214: getstatic 309	com/google/android/gms/tagmanager/zzbe$zza:zzazh	Lcom/google/android/gms/tagmanager/zzbe$zza;
    //   217: invokeinterface 286 2 0
    //   222: ldc_w 313
    //   225: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   228: aload_1
    //   229: invokevirtual 300	java/io/FileInputStream:close	()V
    //   232: goto -96 -> 136
    //   235: astore_1
    //   236: ldc_w 306
    //   239: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   242: goto -106 -> 136
    //   245: astore_2
    //   246: aload_1
    //   247: invokevirtual 300	java/io/FileInputStream:close	()V
    //   250: aload_2
    //   251: athrow
    //   252: astore_1
    //   253: ldc_w 306
    //   256: invokestatic 70	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   259: goto -9 -> 250
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	262	0	this	zzcm
    //   95	38	1	localFileInputStream	java.io.FileInputStream
    //   143	1	1	localFileNotFoundException	java.io.FileNotFoundException
    //   163	30	1	localIOException1	java.io.IOException
    //   199	30	1	localIOException2	java.io.IOException
    //   235	12	1	localIOException3	java.io.IOException
    //   252	1	1	localIOException4	java.io.IOException
    //   103	24	2	localObject1	Object
    //   173	1	2	localIOException5	java.io.IOException
    //   209	1	2	localIllegalArgumentException	IllegalArgumentException
    //   245	6	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   84	96	143	java/io/FileNotFoundException
    //   132	136	163	java/io/IOException
    //   96	132	173	java/io/IOException
    //   192	196	199	java/io/IOException
    //   96	132	209	java/lang/IllegalArgumentException
    //   228	232	235	java/io/IOException
    //   96	132	245	finally
    //   174	192	245	finally
    //   210	228	245	finally
    //   246	250	252	java/io/IOException
  }
  
  File zztG()
  {
    String str = "resource_" + zzaxw;
    return new File(mContext.getDir("google_tagmanager", 0), str);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */