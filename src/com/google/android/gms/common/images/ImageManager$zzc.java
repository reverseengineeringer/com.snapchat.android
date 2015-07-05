package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.ParcelFileDescriptor;

final class ImageManager$zzc
  implements Runnable
{
  private final Uri mUri;
  private final ParcelFileDescriptor zzOx;
  
  public ImageManager$zzc(ImageManager paramImageManager, Uri paramUri, ParcelFileDescriptor paramParcelFileDescriptor)
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
    //   10	61	3	localBitmap	android.graphics.Bitmap
    //   87	1	3	localOutOfMemoryError	OutOfMemoryError
    //   109	1	3	localObject	Object
    //   113	1	3	localInterruptedException	InterruptedException
    //   12	96	4	localCountDownLatch	java.util.concurrent.CountDownLatch
    //   132	1	4	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   21	32	87	java/lang/OutOfMemoryError
    //   81	86	113	java/lang/InterruptedException
    //   34	41	132	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */