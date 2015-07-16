import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Random;

public final class axr
{
  private static final String TAG = "FileUtils";
  
  public static long a(String paramString)
  {
    return new File(paramString).length();
  }
  
  @Deprecated
  public static File a()
  {
    Object localObject = Environment.getExternalStorageDirectory().toString();
    localObject = new File((String)localObject + "/Snapchat");
    ((File)localObject).mkdirs();
    return (File)localObject;
  }
  
  public static String a(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "";
    }
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    return str + new Random().nextLong() + paramString1;
  }
  
  public static void a(Context paramContext, File paramFile)
  {
    paramFile = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(paramFile));
    try
    {
      paramContext.sendBroadcast(paramFile);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void a(@chc File paramFile)
  {
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      if ((arrayOfFile != null) && (arrayOfFile.length > 0))
      {
        int j = arrayOfFile.length;
        int i = 0;
        while (i < j)
        {
          a(arrayOfFile[i]);
          i += 1;
        }
      }
    }
    paramFile.delete();
  }
  
  @Deprecated
  @cbr
  public static boolean a(Context paramContext, Uri paramUri)
  {
    bool2 = true;
    localObject1 = new File(paramUri.getPath());
    paramUri = b() + ".mp4";
    paramUri = new File(a(), paramUri);
    for (;;)
    {
      try
      {
        localObject1 = new FileInputStream((File)localObject1).getChannel();
        localFileChannel = new FileOutputStream(paramUri).getChannel();
      }
      catch (IOException localIOException1)
      {
        FileChannel localFileChannel;
        boolean bool1 = false;
        continue;
      }
      try
      {
        ((FileChannel)localObject1).transferTo(0L, ((FileChannel)localObject1).size(), localFileChannel);
        if (localObject1 != null) {
          ((FileChannel)localObject1).close();
        }
        bool1 = bool2;
        if (localFileChannel != null)
        {
          localFileChannel.close();
          bool1 = bool2;
        }
      }
      catch (IOException localIOException2)
      {
        new StringBuilder("File Transfer IOException: ").append(localIOException2.getMessage());
        if (localObject1 == null) {
          continue;
        }
        ((FileChannel)localObject1).close();
        bool1 = bool2;
        if (localFileChannel == null) {
          continue;
        }
        localFileChannel.close();
        bool1 = bool2;
      }
      finally
      {
        if (localObject1 == null) {
          continue;
        }
        ((FileChannel)localObject1).close();
        if (localFileChannel == null) {
          continue;
        }
        localFileChannel.close();
      }
    }
    a(paramContext, paramUri);
    return bool1;
  }
  
  @Deprecated
  public static String b()
  {
    return "Snapchat-" + new Random().nextLong();
  }
}

/* Location:
 * Qualified Name:     axr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */