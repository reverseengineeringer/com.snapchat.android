package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public class zza
  implements SafeParcelable
{
  public static final Parcelable.Creator<zza> CREATOR = new zzb();
  final int zzFG;
  final int zzJp;
  ParcelFileDescriptor zzNJ;
  private Bitmap zzNK;
  private boolean zzNL;
  private File zzNM;
  
  zza(int paramInt1, ParcelFileDescriptor paramParcelFileDescriptor, int paramInt2)
  {
    zzFG = paramInt1;
    zzNJ = paramParcelFileDescriptor;
    zzJp = paramInt2;
    zzNK = null;
    zzNL = false;
  }
  
  public zza(Bitmap paramBitmap)
  {
    zzFG = 1;
    zzNJ = null;
    zzJp = 0;
    zzNK = paramBitmap;
    zzNL = true;
  }
  
  private void zza(Closeable paramCloseable)
  {
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  /* Error */
  private java.io.FileOutputStream zziw()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 58	com/google/android/gms/common/data/zza:zzNM	Ljava/io/File;
    //   4: ifnonnull +13 -> 17
    //   7: new 60	java/lang/IllegalStateException
    //   10: dup
    //   11: ldc 62
    //   13: invokespecial 65	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: ldc 67
    //   19: ldc 69
    //   21: aload_0
    //   22: getfield 58	com/google/android/gms/common/data/zza:zzNM	Ljava/io/File;
    //   25: invokestatic 75	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    //   28: astore_1
    //   29: new 77	java/io/FileOutputStream
    //   32: dup
    //   33: aload_1
    //   34: invokespecial 80	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   37: astore_2
    //   38: aload_0
    //   39: aload_1
    //   40: ldc 81
    //   42: invokestatic 87	android/os/ParcelFileDescriptor:open	(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    //   45: putfield 36	com/google/android/gms/common/data/zza:zzNJ	Landroid/os/ParcelFileDescriptor;
    //   48: aload_1
    //   49: invokevirtual 91	java/io/File:delete	()Z
    //   52: pop
    //   53: aload_2
    //   54: areturn
    //   55: astore_1
    //   56: new 60	java/lang/IllegalStateException
    //   59: dup
    //   60: ldc 93
    //   62: aload_1
    //   63: invokespecial 96	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   66: athrow
    //   67: astore_1
    //   68: new 60	java/lang/IllegalStateException
    //   71: dup
    //   72: ldc 98
    //   74: invokespecial 65	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   77: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	this	zza
    //   28	21	1	localFile	File
    //   55	8	1	localIOException	IOException
    //   67	1	1	localFileNotFoundException	java.io.FileNotFoundException
    //   37	17	2	localFileOutputStream	java.io.FileOutputStream
    // Exception table:
    //   from	to	target	type
    //   17	29	55	java/io/IOException
    //   29	48	67	java/io/FileNotFoundException
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void release()
  {
    if (!zzNL) {
      zza(zzNJ);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bitmap localBitmap;
    Object localObject;
    byte[] arrayOfByte;
    if (zzNJ == null)
    {
      localBitmap = zzNK;
      localObject = ByteBuffer.allocate(localBitmap.getRowBytes() * localBitmap.getHeight());
      localBitmap.copyPixelsToBuffer((Buffer)localObject);
      arrayOfByte = ((ByteBuffer)localObject).array();
      localObject = new DataOutputStream(zziw());
    }
    try
    {
      ((DataOutputStream)localObject).writeInt(arrayOfByte.length);
      ((DataOutputStream)localObject).writeInt(localBitmap.getWidth());
      ((DataOutputStream)localObject).writeInt(localBitmap.getHeight());
      ((DataOutputStream)localObject).writeUTF(localBitmap.getConfig().toString());
      ((DataOutputStream)localObject).write(arrayOfByte);
      zza((Closeable)localObject);
      zzb.zza(this, paramParcel, paramInt | 0x1);
      zzNJ = null;
      return;
    }
    catch (IOException paramParcel)
    {
      throw new IllegalStateException("Could not write into unlinked file", paramParcel);
    }
    finally
    {
      zza((Closeable)localObject);
    }
  }
  
  public void zza(File paramFile)
  {
    if (paramFile == null) {
      throw new NullPointerException("Cannot set null temp directory");
    }
    zzNM = paramFile;
  }
  
  public Bitmap zziv()
  {
    Object localObject1;
    if (!zzNL) {
      localObject1 = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(zzNJ));
    }
    try
    {
      byte[] arrayOfByte = new byte[((DataInputStream)localObject1).readInt()];
      int i = ((DataInputStream)localObject1).readInt();
      int j = ((DataInputStream)localObject1).readInt();
      Object localObject2 = Bitmap.Config.valueOf(((DataInputStream)localObject1).readUTF());
      ((DataInputStream)localObject1).read(arrayOfByte);
      zza((Closeable)localObject1);
      localObject1 = ByteBuffer.wrap(arrayOfByte);
      localObject2 = Bitmap.createBitmap(i, j, (Bitmap.Config)localObject2);
      ((Bitmap)localObject2).copyPixelsFromBuffer((Buffer)localObject1);
      zzNK = ((Bitmap)localObject2);
      zzNL = true;
      return zzNK;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("Could not read from parcel file descriptor", localIOException);
    }
    finally
    {
      zza((Closeable)localObject1);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */