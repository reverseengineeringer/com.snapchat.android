package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.widget.ImageView;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.internal.zzkm;
import com.google.android.gms.internal.zzkv;
import com.google.android.gms.internal.zzme;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager
{
  private static final Object zzOl = new Object();
  private static HashSet<Uri> zzOm = new HashSet();
  private static ImageManager zzOn;
  private static ImageManager zzOo;
  private final Context mContext;
  private final Handler mHandler;
  private final ExecutorService zzOp;
  private final zzb zzOq;
  private final zzkm zzOr;
  private final Map<zza, ImageReceiver> zzOs;
  private final Map<Uri, ImageReceiver> zzOt;
  private final Map<Uri, Long> zzOu;
  
  private ImageManager(Context paramContext, boolean paramBoolean)
  {
    mContext = paramContext.getApplicationContext();
    mHandler = new Handler(Looper.getMainLooper());
    zzOp = Executors.newFixedThreadPool(4);
    if (paramBoolean)
    {
      zzOq = new zzb(mContext);
      if (zzme.zzkg()) {
        zziE();
      }
    }
    for (;;)
    {
      zzOr = new zzkm();
      zzOs = new HashMap();
      zzOt = new HashMap();
      zzOu = new HashMap();
      return;
      zzOq = null;
    }
  }
  
  public static ImageManager create(Context paramContext)
  {
    return zzb(paramContext, false);
  }
  
  private Bitmap zza(zza.zza paramzza)
  {
    if (zzOq == null) {
      return null;
    }
    return (Bitmap)zzOq.get(paramzza);
  }
  
  public static ImageManager zzb(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (zzOo == null) {
        zzOo = new ImageManager(paramContext, true);
      }
      return zzOo;
    }
    if (zzOn == null) {
      zzOn = new ImageManager(paramContext, false);
    }
    return zzOn;
  }
  
  private void zziE()
  {
    mContext.registerComponentCallbacks(new zze(zzOq));
  }
  
  public final void loadImage(ImageView paramImageView, int paramInt)
  {
    zza(new zza.zzb(paramImageView, paramInt));
  }
  
  public final void loadImage(ImageView paramImageView, Uri paramUri)
  {
    zza(new zza.zzb(paramImageView, paramUri));
  }
  
  public final void loadImage(ImageView paramImageView, Uri paramUri, int paramInt)
  {
    paramImageView = new zza.zzb(paramImageView, paramUri);
    paramImageView.zzaC(paramInt);
    zza(paramImageView);
  }
  
  public final void loadImage(OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri)
  {
    zza(new zza.zzc(paramOnImageLoadedListener, paramUri));
  }
  
  public final void loadImage(OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri, int paramInt)
  {
    paramOnImageLoadedListener = new zza.zzc(paramOnImageLoadedListener, paramUri);
    paramOnImageLoadedListener.zzaC(paramInt);
    zza(paramOnImageLoadedListener);
  }
  
  public final void zza(zza paramzza)
  {
    zzb.zzbd("ImageManager.loadImage() must be called in the main thread");
    new zzd(paramzza).run();
  }
  
  final class ImageReceiver
    extends ResultReceiver
  {
    private final Uri mUri;
    private final ArrayList<zza> zzOv;
    
    ImageReceiver(Uri paramUri)
    {
      super();
      mUri = paramUri;
      zzOv = new ArrayList();
    }
    
    public final void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      paramBundle = (ParcelFileDescriptor)paramBundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
      ImageManager.zzf(ImageManager.this).execute(new ImageManager.zzc(ImageManager.this, mUri, paramBundle));
    }
    
    public final void zzb(zza paramzza)
    {
      zzb.zzbd("ImageReceiver.addImageRequest() must be called in the main thread");
      zzOv.add(paramzza);
    }
    
    public final void zzc(zza paramzza)
    {
      zzb.zzbd("ImageReceiver.removeImageRequest() must be called in the main thread");
      zzOv.remove(paramzza);
    }
    
    public final void zziH()
    {
      Intent localIntent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
      localIntent.putExtra("com.google.android.gms.extras.uri", mUri);
      localIntent.putExtra("com.google.android.gms.extras.resultReceiver", this);
      localIntent.putExtra("com.google.android.gms.extras.priority", 3);
      ImageManager.zzb(ImageManager.this).sendBroadcast(localIntent);
    }
  }
  
  public static abstract interface OnImageLoadedListener
  {
    public abstract void onImageLoaded(Uri paramUri, Drawable paramDrawable, boolean paramBoolean);
  }
  
  static final class zza
  {
    static int zza(ActivityManager paramActivityManager)
    {
      return paramActivityManager.getLargeMemoryClass();
    }
  }
  
  static final class zzb
    extends zzkv<zza.zza, Bitmap>
  {
    public zzb(Context paramContext)
    {
      super();
    }
    
    private static int zzO(Context paramContext)
    {
      ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
      if ((getApplicationInfoflags & 0x100000) != 0)
      {
        i = 1;
        if ((i == 0) || (!zzme.zzkd())) {
          break label55;
        }
      }
      label55:
      for (int i = ImageManager.zza.zza(localActivityManager);; i = localActivityManager.getMemoryClass())
      {
        return (int)(i * 1048576 * 0.33F);
        i = 0;
        break;
      }
    }
    
    protected final int zza(zza.zza paramzza, Bitmap paramBitmap)
    {
      return paramBitmap.getHeight() * paramBitmap.getRowBytes();
    }
    
    protected final void zza(boolean paramBoolean, zza.zza paramzza, Bitmap paramBitmap1, Bitmap paramBitmap2)
    {
      super.entryRemoved(paramBoolean, paramzza, paramBitmap1, paramBitmap2);
    }
  }
  
  final class zzc
    implements Runnable
  {
    private final Uri mUri;
    private final ParcelFileDescriptor zzOx;
    
    public zzc(Uri paramUri, ParcelFileDescriptor paramParcelFileDescriptor)
    {
      mUri = paramUri;
      zzOx = paramParcelFileDescriptor;
    }
    
    /* Error */
    public final void run()
    {
      // Byte code:
      //   0: ldc 36
      //   2: invokestatic 42	com/google/android/gms/common/internal/zzb:zzbe	(Ljava/lang/String;)V
      //   5: iconst_0
      //   6: istore_1
      //   7: iconst_0
      //   8: istore_2
      //   9: aconst_null
      //   10: astore_3
      //   11: aconst_null
      //   12: astore 4
      //   14: aload_0
      //   15: getfield 26	com/google/android/gms/common/images/ImageManager$zzc:zzOx	Landroid/os/ParcelFileDescriptor;
      //   18: ifnull +23 -> 41
      //   21: aload_0
      //   22: getfield 26	com/google/android/gms/common/images/ImageManager$zzc:zzOx	Landroid/os/ParcelFileDescriptor;
      //   25: invokevirtual 48	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
      //   28: invokestatic 54	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
      //   31: astore_3
      //   32: iload_2
      //   33: istore_1
      //   34: aload_0
      //   35: getfield 26	com/google/android/gms/common/images/ImageManager$zzc:zzOx	Landroid/os/ParcelFileDescriptor;
      //   38: invokevirtual 57	android/os/ParcelFileDescriptor:close	()V
      //   41: new 59	java/util/concurrent/CountDownLatch
      //   44: dup
      //   45: iconst_1
      //   46: invokespecial 62	java/util/concurrent/CountDownLatch:<init>	(I)V
      //   49: astore 4
      //   51: aload_0
      //   52: getfield 19	com/google/android/gms/common/images/ImageManager$zzc:zzOw	Lcom/google/android/gms/common/images/ImageManager;
      //   55: invokestatic 66	com/google/android/gms/common/images/ImageManager:zzg	(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
      //   58: new 68	com/google/android/gms/common/images/ImageManager$zzf
      //   61: dup
      //   62: aload_0
      //   63: getfield 19	com/google/android/gms/common/images/ImageManager$zzc:zzOw	Lcom/google/android/gms/common/images/ImageManager;
      //   66: aload_0
      //   67: getfield 24	com/google/android/gms/common/images/ImageManager$zzc:mUri	Landroid/net/Uri;
      //   70: aload_3
      //   71: iload_1
      //   72: aload 4
      //   74: invokespecial 71	com/google/android/gms/common/images/ImageManager$zzf:<init>	(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
      //   77: invokevirtual 77	android/os/Handler:post	(Ljava/lang/Runnable;)Z
      //   80: pop
      //   81: aload 4
      //   83: invokevirtual 80	java/util/concurrent/CountDownLatch:await	()V
      //   86: return
      //   87: astore_3
      //   88: new 82	java/lang/StringBuilder
      //   91: dup
      //   92: ldc 84
      //   94: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   97: aload_0
      //   98: getfield 24	com/google/android/gms/common/images/ImageManager$zzc:mUri	Landroid/net/Uri;
      //   101: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   104: pop
      //   105: iconst_1
      //   106: istore_1
      //   107: aload 4
      //   109: astore_3
      //   110: goto -76 -> 34
      //   113: astore_3
      //   114: new 82	java/lang/StringBuilder
      //   117: dup
      //   118: ldc 92
      //   120: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   123: aload_0
      //   124: getfield 24	com/google/android/gms/common/images/ImageManager$zzc:mUri	Landroid/net/Uri;
      //   127: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   130: pop
      //   131: return
      //   132: astore 4
      //   134: goto -93 -> 41
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	137	0	this	zzc
      //   6	101	1	bool1	boolean
      //   8	25	2	bool2	boolean
      //   10	61	3	localBitmap	Bitmap
      //   87	1	3	localOutOfMemoryError	OutOfMemoryError
      //   109	1	3	localObject	Object
      //   113	1	3	localInterruptedException	InterruptedException
      //   12	96	4	localCountDownLatch	CountDownLatch
      //   132	1	4	localIOException	java.io.IOException
      // Exception table:
      //   from	to	target	type
      //   21	32	87	java/lang/OutOfMemoryError
      //   81	86	113	java/lang/InterruptedException
      //   34	41	132	java/io/IOException
    }
  }
  
  final class zzd
    implements Runnable
  {
    private final zza zzOy;
    
    public zzd(zza paramzza)
    {
      zzOy = paramzza;
    }
    
    public final void run()
    {
      zzb.zzbd("LoadImageRunnable must be executed on the main thread");
      Object localObject1 = (ImageManager.ImageReceiver)ImageManager.zza(ImageManager.this).get(zzOy);
      if (localObject1 != null)
      {
        ImageManager.zza(ImageManager.this).remove(zzOy);
        ((ImageManager.ImageReceiver)localObject1).zzc(zzOy);
      }
      zza.zza localzza = zzOy.zzOA;
      if (uri == null)
      {
        zzOy.zza(ImageManager.zzb(ImageManager.this), ImageManager.zzc(ImageManager.this), true);
        return;
      }
      localObject1 = ImageManager.zza(ImageManager.this, localzza);
      if (localObject1 != null)
      {
        zzOy.zza(ImageManager.zzb(ImageManager.this), (Bitmap)localObject1, true);
        return;
      }
      localObject1 = (Long)ImageManager.zzd(ImageManager.this).get(uri);
      if (localObject1 != null)
      {
        if (SystemClock.elapsedRealtime() - ((Long)localObject1).longValue() < 3600000L)
        {
          zzOy.zza(ImageManager.zzb(ImageManager.this), ImageManager.zzc(ImageManager.this), true);
          return;
        }
        ImageManager.zzd(ImageManager.this).remove(uri);
      }
      zzOy.zza(ImageManager.zzb(ImageManager.this), ImageManager.zzc(ImageManager.this));
      ??? = (ImageManager.ImageReceiver)ImageManager.zze(ImageManager.this).get(uri);
      localObject1 = ???;
      if (??? == null)
      {
        localObject1 = new ImageManager.ImageReceiver(ImageManager.this, uri);
        ImageManager.zze(ImageManager.this).put(uri, localObject1);
      }
      ((ImageManager.ImageReceiver)localObject1).zzb(zzOy);
      if (!(zzOy instanceof zza.zzc)) {
        ImageManager.zza(ImageManager.this).put(zzOy, localObject1);
      }
      synchronized (ImageManager.zziF())
      {
        if (!ImageManager.zziG().contains(uri))
        {
          ImageManager.zziG().add(uri);
          ((ImageManager.ImageReceiver)localObject1).zziH();
        }
        return;
      }
    }
  }
  
  static final class zze
    implements ComponentCallbacks2
  {
    private final ImageManager.zzb zzOq;
    
    public zze(ImageManager.zzb paramzzb)
    {
      zzOq = paramzzb;
    }
    
    public final void onConfigurationChanged(Configuration paramConfiguration) {}
    
    public final void onLowMemory()
    {
      zzOq.evictAll();
    }
    
    public final void onTrimMemory(int paramInt)
    {
      if (paramInt >= 60) {
        zzOq.evictAll();
      }
      while (paramInt < 20) {
        return;
      }
      zzOq.trimToSize(zzOq.size() / 2);
    }
  }
  
  final class zzf
    implements Runnable
  {
    private final Bitmap mBitmap;
    private final Uri mUri;
    private boolean zzOz;
    private final CountDownLatch zzmx;
    
    public zzf(Uri paramUri, Bitmap paramBitmap, boolean paramBoolean, CountDownLatch paramCountDownLatch)
    {
      mUri = paramUri;
      mBitmap = paramBitmap;
      zzOz = paramBoolean;
      zzmx = paramCountDownLatch;
    }
    
    private void zza(ImageManager.ImageReceiver paramImageReceiver, boolean paramBoolean)
    {
      paramImageReceiver = ImageManager.ImageReceiver.zza(paramImageReceiver);
      int j = paramImageReceiver.size();
      int i = 0;
      if (i < j)
      {
        zza localzza = (zza)paramImageReceiver.get(i);
        if (paramBoolean) {
          localzza.zza(ImageManager.zzb(ImageManager.this), mBitmap, false);
        }
        for (;;)
        {
          if (!(localzza instanceof zza.zzc)) {
            ImageManager.zza(ImageManager.this).remove(localzza);
          }
          i += 1;
          break;
          ImageManager.zzd(ImageManager.this).put(mUri, Long.valueOf(SystemClock.elapsedRealtime()));
          localzza.zza(ImageManager.zzb(ImageManager.this), ImageManager.zzc(ImageManager.this), false);
        }
      }
    }
    
    public final void run()
    {
      zzb.zzbd("OnBitmapLoadedRunnable must be executed in the main thread");
      boolean bool;
      if (mBitmap != null) {
        bool = true;
      }
      while (ImageManager.zzh(ImageManager.this) != null) {
        if (zzOz)
        {
          ImageManager.zzh(ImageManager.this).evictAll();
          System.gc();
          zzOz = false;
          ImageManager.zzg(ImageManager.this).post(this);
          return;
          bool = false;
        }
        else if (bool)
        {
          ImageManager.zzh(ImageManager.this).put(new zza.zza(mUri), mBitmap);
        }
      }
      ??? = (ImageManager.ImageReceiver)ImageManager.zze(ImageManager.this).remove(mUri);
      if (??? != null) {
        zza((ImageManager.ImageReceiver)???, bool);
      }
      zzmx.countDown();
      synchronized (ImageManager.zziF())
      {
        ImageManager.zziG().remove(mUri);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */