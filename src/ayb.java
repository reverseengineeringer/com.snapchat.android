import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import com.snapchat.android.util.cache.CacheType;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.apache.commons.io.FileUtils;

public final class ayb
  extends axn
{
  private static final String TAG = "ZipFileCache";
  
  public ayb(CacheType paramCacheType)
  {
    super(paramCacheType, 10080L);
  }
  
  private static boolean a(String paramString, @chc ZipInputStream paramZipInputStream)
  {
    Object localObject2 = paramZipInputStream.getNextEntry();
    Object localObject3;
    if (localObject2 != null)
    {
      Object localObject1 = null;
      try
      {
        localObject2 = new File(paramString + "/" + ((ZipEntry)localObject2).getName());
        localObject3 = ((File)localObject2).getParentFile();
        if ((!((File)localObject3).exists()) && (!((File)localObject3).mkdirs())) {
          throw new IOException("Could not create directory " + localObject3);
        }
      }
      finally
      {
        paramZipInputStream = (ZipInputStream)localObject1;
      }
    }
    for (;;)
    {
      bgo.a(paramZipInputStream);
      throw paramString;
      if ((((File)localObject2).exists()) && (!((File)localObject2).delete())) {
        throw new IOException("Could not delete file " + localObject2);
      }
      if (!((File)localObject2).createNewFile()) {
        throw new IOException("Could not create new file " + localObject2);
      }
      localObject3 = new byte['Ѐ'];
      localObject2 = new BufferedOutputStream(new FileOutputStream((File)localObject2), 1024);
      try
      {
        for (;;)
        {
          int i = paramZipInputStream.read((byte[])localObject3);
          if (i == -1) {
            break;
          }
          ((BufferedOutputStream)localObject2).write((byte[])localObject3, 0, i);
        }
        ((BufferedOutputStream)localObject2).flush();
        bgo.a((Closeable)localObject2);
        break;
      }
      finally
      {
        paramZipInputStream = (ZipInputStream)localObject2;
      }
      return true;
    }
  }
  
  public final Bitmap a(Context paramContext, @chc String paramString, aza paramaza)
  {
    throw new UnsupportedOperationException("Not supported by ZipFileCache");
  }
  
  public final Bitmap a(Context paramContext, @chc String paramString, aza paramaza, Bitmap.Config paramConfig)
  {
    throw new UnsupportedOperationException("Not supported by ZipFileCache");
  }
  
  @cbr
  @chd
  protected final String a(byte[] paramArrayOfByte, int paramInt)
  {
    File localFile1 = new File(mCacheType.getDirectory() + "/" + mCacheType.generateFilename());
    try
    {
      File localFile2 = mCacheType.getDirectory();
      if ((!localFile2.exists()) && (!localFile2.mkdirs()))
      {
        new StringBuilder("Failed to create directory ").append(localFile2.getAbsolutePath());
        return null;
      }
      if (localFile1.exists()) {
        FileUtils.deleteDirectory(localFile1);
      }
      localFile1.mkdirs();
      paramArrayOfByte = new ZipInputStream(new ByteArrayInputStream(paramArrayOfByte, 0, paramInt));
      try
      {
        a(localFile1.getAbsolutePath(), paramArrayOfByte);
        return localFile1.getAbsolutePath();
      }
      finally
      {
        bgo.a(paramArrayOfByte);
      }
      return null;
    }
    catch (FileNotFoundException paramArrayOfByte)
    {
      return null;
    }
    catch (IOException paramArrayOfByte) {}
  }
  
  public final void a(@chc String paramString, @chc Bitmap paramBitmap, @chc Bitmap.CompressFormat paramCompressFormat)
  {
    throw new UnsupportedOperationException("Not supported by ZipFileCache");
  }
  
  public final byte[] a(@chc String paramString)
  {
    throw new UnsupportedOperationException("Not supported by ZipFileCache");
  }
}

/* Location:
 * Qualified Name:     ayb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */