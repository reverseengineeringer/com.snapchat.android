package android.support.v4.os;

import android.os.Build.VERSION;
import android.os.Environment;
import java.io.File;
import java.io.IOException;

public final class EnvironmentCompat
{
  public static final String MEDIA_UNKNOWN = "unknown";
  private static final String TAG = "EnvironmentCompat";
  
  private static String getStorageState(File paramFile)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return EnvironmentCompatKitKat.getStorageState(paramFile);
    }
    try
    {
      if (paramFile.getCanonicalPath().startsWith(Environment.getExternalStorageDirectory().getCanonicalPath()))
      {
        paramFile = Environment.getExternalStorageState();
        return paramFile;
      }
    }
    catch (IOException paramFile)
    {
      new StringBuilder("Failed to resolve canonical path: ").append(paramFile);
    }
    return "unknown";
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.EnvironmentCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */