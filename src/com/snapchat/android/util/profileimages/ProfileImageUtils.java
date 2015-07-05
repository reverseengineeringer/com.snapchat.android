package com.snapchat.android.util.profileimages;

import ajx;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import awp;
import aws;
import bgp;
import com.snapchat.android.Timber;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.CRC32;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;

public final class ProfileImageUtils
{
  private static final int COMPRESSION_QUALITY = 90;
  private static final int IMAGE_CHECKSUM_BUFFER_LENGTH = 8;
  private static final int IMAGE_LAST_UPDATED_BUFFER_LENGTH = 8;
  private static final int IMAGE_SIZE_BUFFER_LENGTH = 4;
  private static final int IMAGE_USERNAME_BUFFER_LENGTH = 15;
  public static final int NUMBER_OF_PROFILE_IMAGES = 5;
  public static final int PROFILE_PICTURE_ANIMATION_DURATION_IN_MILLIS = 200;
  public static final double PROFILE_PICTURE_SCALE_FACTOR = 0.736D;
  private static final String TAG = "ProfileImageUtils";
  private static final ProfileImageUtils sInstance = new ProfileImageUtils();
  
  public static Bitmap a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    if (paramBitmap1.isMutable()) {}
    for (;;)
    {
      Object localObject = new Canvas(paramBitmap1);
      Paint localPaint = new Paint();
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
      ((Canvas)localObject).drawBitmap(paramBitmap2, 0.0F, 0.0F, localPaint);
      paramBitmap2.recycle();
      return paramBitmap1;
      localObject = paramBitmap1.copy(Bitmap.Config.ARGB_8888, true);
      paramBitmap1.recycle();
      paramBitmap1 = (Bitmap)localObject;
    }
  }
  
  public static ProfileImageUtils a()
  {
    return sInstance;
  }
  
  public static List<Bitmap> a(awp paramawp, String paramString)
  {
    if ((!paramawp.d(paramString)) || (paramawp.a(paramString) == null)) {
      return null;
    }
    paramawp = (List)a(paramawp.a(paramString)).getRight();
    paramString = new ArrayList();
    int i = 0;
    while (i < paramawp.size())
    {
      paramString.add(BitmapFactory.decodeByteArray((byte[])paramawp.get(i), 0, ((byte[])paramawp.get(i)).length));
      i += 1;
    }
    return paramString;
  }
  
  public static List<byte[]> a(List<Bitmap> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      Bitmap localBitmap = (Bitmap)paramList.get(i);
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      localBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
      localArrayList.add(localByteArrayOutputStream.toByteArray());
      i += 1;
    }
    return localArrayList;
  }
  
  private static Pair<Long, List<byte[]>> a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      Timber.f("ProfileImageUtils", "profile images - exception deserializing profile media byte array: data is null", new Object[0]);
      throw new IllegalArgumentException("Exception deserializing profile media byte array: data is null");
    }
    paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte);
    int j = paramArrayOfByte.read();
    if (j != 5)
    {
      Timber.f("ProfileImageUtils", "profile images - exception deserializing profile media byte array: invalid pics number " + j, new Object[0]);
      throw new IllegalArgumentException("profile images - exception deserializing profile media byte array: invalid pics number");
    }
    Object localObject = new byte[8];
    paramArrayOfByte.read((byte[])localObject, 0, 8);
    long l = new BigInteger((byte[])localObject).longValue();
    localObject = new ArrayList();
    int i = 0;
    while (i < j)
    {
      byte[] arrayOfByte1 = new byte[4];
      paramArrayOfByte.read(arrayOfByte1, 0, 4);
      int k = new BigInteger(arrayOfByte1).intValue();
      arrayOfByte1 = new byte[k];
      if (paramArrayOfByte.read(arrayOfByte1, 0, k) != k)
      {
        Timber.f("ProfileImageUtils", "profile images - exception deserializing profile media byte array: data corruption", new Object[0]);
        throw new IllegalArgumentException("profile images - exception deserializing profile media byte array: data corruption");
      }
      byte[] arrayOfByte2 = new byte[8];
      paramArrayOfByte.read(arrayOfByte2, 0, 8);
      CRC32 localCRC32 = new CRC32();
      localCRC32.update(arrayOfByte1);
      if (localCRC32.getValue() != new BigInteger(arrayOfByte2).longValue())
      {
        Timber.f("ProfileImageUtils", "profile images - exception deserializing profile media byte array: data corruption, checksum : " + localCRC32.getValue() + " image index: " + i, new Object[0]);
        throw new IllegalArgumentException("profile images - exception deserializing profile media byte array: data corruption, checksum : " + localCRC32.getValue() + " image index: " + i);
      }
      ((List)localObject).add(arrayOfByte1);
      i += 1;
    }
    return ImmutablePair.of(Long.valueOf(l), localObject);
  }
  
  public static void a(long paramLong, awp paramawp)
  {
    int i = 0;
    bgp.b();
    try
    {
      if (paramLong <= ajx.A()) {
        return;
      }
      Timber.c("ProfileImageUtils", "profile images - removing images from cache with delete timestamp: " + paramLong, new Object[0]);
      ajx.d(paramLong);
      while (i < 5)
      {
        ProfileImageType localProfileImageType = ProfileImageType.values()[i];
        paramawp.c(localProfileImageType.toString());
        Timber.c("ProfileImageUtils", "profile images - %s removed with delete timestamp: %d ", new Object[] { localProfileImageType.toString(), Long.valueOf(paramLong) });
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public static void a(List<byte[]> paramList, long paramLong, awp paramawp)
  {
    
    try
    {
      if (paramLong < ajx.A()) {
        return;
      }
      ajx.d(paramLong);
      int i = 0;
      for (;;)
      {
        if (i < paramList.size())
        {
          ProfileImageType localProfileImageType = ProfileImageType.values()[i];
          try
          {
            paramawp.a(localProfileImageType.toString(), (byte[])paramList.get(i));
            Timber.c("ProfileImageUtils", "profile images - %s caching succeeded with picture taken timestamp: %d", new Object[] { localProfileImageType.toString(), Long.valueOf(paramLong) });
            i += 1;
          }
          catch (aws localaws)
          {
            for (;;)
            {
              Timber.f("ProfileImageUtils", "profile images - %s caching failed with timestamp %d and error: %s", new Object[] { localProfileImageType.toString(), Long.valueOf(paramLong), localaws });
            }
          }
        }
      }
    }
    finally {}
  }
  
  public static void a(byte[] paramArrayOfByte, awp paramawp)
  {
    
    if (paramArrayOfByte == null)
    {
      Timber.f("ProfileImageUtils", "friends profile images - exception deserializing profile media byte array: data is null", new Object[0]);
      throw new IllegalArgumentException("Exception deserializing profile media byte array: data is null");
    }
    paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte);
    while (paramArrayOfByte.available() > 0)
    {
      Object localObject = new byte[15];
      paramArrayOfByte.read((byte[])localObject, 0, 15);
      String str = new String((byte[])localObject, "UTF-8").trim();
      localObject = new ByteArrayOutputStream();
      int j = paramArrayOfByte.read();
      if (j != 5)
      {
        Timber.f("ProfileImageUtils", "friends profile images - exception deserializing profile media byte array: invalid pics number " + j, new Object[0]);
        throw new IllegalArgumentException("friends profile images - exception deserializing profile media byte array: invalid pics number");
      }
      ((ByteArrayOutputStream)localObject).write(j);
      byte[] arrayOfByte1 = new byte[8];
      paramArrayOfByte.read(arrayOfByte1, 0, 8);
      ((ByteArrayOutputStream)localObject).write(arrayOfByte1, 0, 8);
      int i = 0;
      while (i < j)
      {
        arrayOfByte1 = new byte[4];
        paramArrayOfByte.read(arrayOfByte1, 0, 4);
        ((ByteArrayOutputStream)localObject).write(arrayOfByte1, 0, 4);
        int k = new BigInteger(arrayOfByte1).intValue();
        arrayOfByte1 = new byte[k];
        if (paramArrayOfByte.read(arrayOfByte1, 0, k) != k)
        {
          Timber.f("ProfileImageUtils", "friends profile images - exception deserializing profile media byte array: data corruption", new Object[0]);
          throw new IllegalArgumentException("friends profile images - exception deserializing profile media byte array: data corruption");
        }
        ((ByteArrayOutputStream)localObject).write(arrayOfByte1, 0, k);
        byte[] arrayOfByte2 = new byte[8];
        paramArrayOfByte.read(arrayOfByte2, 0, 8);
        CRC32 localCRC32 = new CRC32();
        localCRC32.update(arrayOfByte1);
        if (localCRC32.getValue() != new BigInteger(arrayOfByte2).longValue())
        {
          Timber.f("ProfileImageUtils", "friends profile images - exception deserializing image byte array: data corruption, checksum : " + localCRC32.getValue() + " image index: " + i, new Object[0]);
          throw new IllegalArgumentException("friends profile images - exception deserializing image byte array: data corruption checksum : " + localCRC32.getValue() + " image index: " + i);
        }
        ((ByteArrayOutputStream)localObject).write(arrayOfByte2, 0, 8);
        i += 1;
      }
      ((ByteArrayOutputStream)localObject).flush();
      try
      {
        paramawp.a(str, ((ByteArrayOutputStream)localObject).toByteArray());
        Timber.b("ProfileImageUtils", "friends profile images -  caching succeeded for " + str, new Object[0]);
        ((ByteArrayOutputStream)localObject).close();
      }
      catch (aws localaws)
      {
        Timber.b("ProfileImageUtils", "friends profile images -  caching failed for " + str + " with error:" + localaws, new Object[0]);
        ((ByteArrayOutputStream)localObject).close();
      }
      finally
      {
        ((ByteArrayOutputStream)localObject).close();
      }
    }
  }
  
  public static boolean a(awp paramawp)
  {
    int i = 0;
    while (i < 5)
    {
      if (!paramawp.d(ProfileImageType.values()[i].toString())) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static byte[] a(List<byte[]> paramList, long paramLong)
  {
    if ((paramList == null) || (paramList.size() != 5)) {
      throw new IllegalArgumentException("profile images - exception serializing profile media byte array with invalid total number of profile pics.");
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    localByteArrayOutputStream.write((byte)paramList.size());
    localByteArrayOutputStream.write(ByteBuffer.allocate(8).putLong(paramLong).array());
    int i = 0;
    while (i < 5)
    {
      byte[] arrayOfByte = (byte[])paramList.get(i);
      int j = arrayOfByte.length;
      localByteArrayOutputStream.write(ByteBuffer.allocate(4).putInt(j).array());
      localByteArrayOutputStream.write(arrayOfByte);
      CRC32 localCRC32 = new CRC32();
      localCRC32.update(arrayOfByte);
      localByteArrayOutputStream.write(ByteBuffer.allocate(8).putLong(localCRC32.getValue()).array());
      i += 1;
    }
    localByteArrayOutputStream.flush();
    paramList = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    return paramList;
  }
  
  public static List<Bitmap> b(awp paramawp)
  {
    bgp.b();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < 5)
    {
      ProfileImageType localProfileImageType = ProfileImageType.values()[i];
      Object localObject = paramawp.a(localProfileImageType.toString());
      localObject = BitmapFactory.decodeByteArray((byte[])localObject, 0, localObject.length);
      localArrayList.add(localObject);
      Timber.c("ProfileImageUtils", "profile images - loading %s with size %s ", new Object[] { localProfileImageType.toString(), Integer.valueOf(((Bitmap)localObject).getByteCount()) });
      i += 1;
    }
    Timber.c("ProfileImageUtils", "profile images - loading success, number of bitmaps : %s", new Object[] { Integer.valueOf(localArrayList.size()) });
    return localArrayList;
  }
  
  public static void b(byte[] paramArrayOfByte, awp paramawp)
  {
    paramArrayOfByte = a(paramArrayOfByte);
    a((List)paramArrayOfByte.getRight(), ((Long)paramArrayOfByte.getLeft()).longValue(), paramawp);
  }
  
  public static List<byte[]> c(awp paramawp)
  {
    bgp.b();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < 5)
    {
      ProfileImageType localProfileImageType = ProfileImageType.values()[i];
      byte[] arrayOfByte = paramawp.a(localProfileImageType.toString());
      Timber.c("ProfileImageUtils", "profile images - loading %s with size %s ", new Object[] { localProfileImageType.toString(), Integer.valueOf(arrayOfByte.length) });
      localArrayList.add(arrayOfByte);
      i += 1;
    }
    Timber.c("ProfileImageUtils", "profile images - loading success, number of images : %s", new Object[] { Integer.valueOf(localArrayList.size()) });
    return localArrayList;
  }
  
  public static enum ProfileImageSize
  {
    BIG,  MEDIUM,  THUMBNAIL;
    
    private ProfileImageSize() {}
  }
  
  public static enum ProfileImageType
  {
    PROFILE_IMAGE_0,  PROFILE_IMAGE_1,  PROFILE_IMAGE_2,  PROFILE_IMAGE_3,  PROFILE_IMAGE_4;
    
    private ProfileImageType() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.profileimages.ProfileImageUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */