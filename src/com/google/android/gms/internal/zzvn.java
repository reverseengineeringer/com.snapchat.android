package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tagmanager.zzbf;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class zzvn
{
  public static final Integer zzaCx = Integer.valueOf(0);
  public static final Integer zzaCy = Integer.valueOf(1);
  private final Context mContext;
  private final ExecutorService zzazT;
  
  public zzvn(Context paramContext)
  {
    this(paramContext, Executors.newSingleThreadExecutor());
  }
  
  zzvn(Context paramContext, ExecutorService paramExecutorService)
  {
    mContext = paramContext;
    zzazT = paramExecutorService;
  }
  
  private String zzdF(String paramString)
  {
    return "resource_" + paramString;
  }
  
  private byte[] zzf(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    for (;;)
    {
      try
      {
        zzlz.zza(paramInputStream, localByteArrayOutputStream);
      }
      catch (IOException localIOException)
      {
        zzbf.zzac("Failed to read the resource from disk");
        try
        {
          paramInputStream.close();
        }
        catch (IOException paramInputStream)
        {
          zzbf.zzac("Error closing stream for reading resource from disk");
          return null;
        }
      }
      finally
      {
        try
        {
          paramInputStream.close();
          throw ((Throwable)localObject);
        }
        catch (IOException paramInputStream)
        {
          zzbf.zzac("Error closing stream for reading resource from disk");
        }
      }
      try
      {
        paramInputStream.close();
        return localByteArrayOutputStream.toByteArray();
      }
      catch (IOException paramInputStream)
      {
        zzbf.zzac("Error closing stream for reading resource from disk");
        return null;
      }
    }
    return null;
  }
  
  public void zza(final String paramString, final Integer paramInteger, final zzvh paramzzvh, final zzvm paramzzvm)
  {
    zzazT.execute(new Runnable()
    {
      public void run()
      {
        zzb(paramString, paramInteger, paramzzvh, paramzzvm);
      }
    });
  }
  
  void zzb(String paramString, Integer paramInteger, zzvh paramzzvh, zzvm paramzzvm)
  {
    zzbf.zzab("DiskLoader: Starting to load resource from Disk.");
    try
    {
      Object localObject = paramzzvh.zzn(zzf(new FileInputStream(zzdE(paramString))));
      if (localObject != null)
      {
        zzbf.zzab("Saved resource loaded: " + zzdF(paramString));
        paramzzvm.zza(Status.zzNo, localObject, zzaCy, zzdD(paramString));
        return;
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      zzbf.zzZ("Saved resource not found: " + zzdF(paramString));
      if (paramInteger == null)
      {
        paramzzvm.zza(Status.zzNq, null, null, 0L);
        return;
      }
    }
    catch (zzvl.zzg localzzg)
    {
      for (;;)
      {
        zzbf.zzZ("Saved resource is corrupted: " + zzdF(paramString));
      }
    }
    try
    {
      paramString = mContext.getResources().openRawResource(paramInteger.intValue());
      if (paramString != null)
      {
        paramString = paramzzvh.zzn(zzf(paramString));
        if (paramString != null)
        {
          zzbf.zzab("Default resource loaded: " + mContext.getResources().getResourceEntryName(paramInteger.intValue()));
          paramzzvm.zza(Status.zzNo, paramString, zzaCx, 0L);
          return;
        }
      }
    }
    catch (Resources.NotFoundException paramString)
    {
      zzbf.zzZ("Default resource not found. ID: " + paramInteger);
      paramzzvm.zza(Status.zzNq, null, null, 0L);
      return;
    }
    catch (zzvl.zzg paramString)
    {
      for (;;)
      {
        zzbf.zzZ("Default resource resource is corrupted: " + paramInteger);
      }
    }
  }
  
  public long zzdD(String paramString)
  {
    paramString = zzdE(paramString);
    if (paramString.exists()) {
      return paramString.lastModified();
    }
    return 0L;
  }
  
  File zzdE(String paramString)
  {
    return new File(mContext.getDir("google_tagmanager", 0), zzdF(paramString));
  }
  
  public void zzf(final String paramString, final byte[] paramArrayOfByte)
  {
    zzazT.execute(new Runnable()
    {
      public void run()
      {
        zzg(paramString, paramArrayOfByte);
      }
    });
  }
  
  /* Error */
  void zzg(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 121	com/google/android/gms/internal/zzvn:zzdE	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore 4
    //   7: new 216	java/io/FileOutputStream
    //   10: dup
    //   11: aload 4
    //   13: invokespecial 217	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   16: astore_3
    //   17: aload_3
    //   18: aload_2
    //   19: invokevirtual 221	java/io/FileOutputStream:write	([B)V
    //   22: aload_3
    //   23: invokevirtual 222	java/io/FileOutputStream:close	()V
    //   26: new 49	java/lang/StringBuilder
    //   29: dup
    //   30: ldc -32
    //   32: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: aload_1
    //   36: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: ldc -30
    //   41: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 115	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   50: return
    //   51: astore_1
    //   52: ldc -28
    //   54: invokestatic 156	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   57: return
    //   58: astore_1
    //   59: ldc -26
    //   61: invokestatic 156	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   64: return
    //   65: astore_2
    //   66: ldc -24
    //   68: invokestatic 156	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   71: aload 4
    //   73: invokevirtual 235	java/io/File:delete	()Z
    //   76: pop
    //   77: aload_3
    //   78: invokevirtual 222	java/io/FileOutputStream:close	()V
    //   81: new 49	java/lang/StringBuilder
    //   84: dup
    //   85: ldc -32
    //   87: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: aload_1
    //   91: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: ldc -30
    //   96: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokestatic 115	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   105: return
    //   106: astore_1
    //   107: ldc -26
    //   109: invokestatic 156	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   112: return
    //   113: astore_2
    //   114: aload_3
    //   115: invokevirtual 222	java/io/FileOutputStream:close	()V
    //   118: new 49	java/lang/StringBuilder
    //   121: dup
    //   122: ldc -32
    //   124: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: aload_1
    //   128: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc -30
    //   133: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokestatic 115	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   142: aload_2
    //   143: athrow
    //   144: astore_1
    //   145: ldc -26
    //   147: invokestatic 156	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   150: goto -8 -> 142
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	153	0	this	zzvn
    //   0	153	1	paramString	String
    //   0	153	2	paramArrayOfByte	byte[]
    //   16	99	3	localFileOutputStream	java.io.FileOutputStream
    //   5	67	4	localFile	File
    // Exception table:
    //   from	to	target	type
    //   7	17	51	java/io/FileNotFoundException
    //   22	50	58	java/io/IOException
    //   17	22	65	java/io/IOException
    //   77	105	106	java/io/IOException
    //   17	22	113	finally
    //   66	77	113	finally
    //   114	142	144	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */