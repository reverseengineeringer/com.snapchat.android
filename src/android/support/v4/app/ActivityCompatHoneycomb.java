package android.support.v4.app;

import android.app.Activity;
import java.io.FileDescriptor;
import java.io.PrintWriter;

final class ActivityCompatHoneycomb
{
  private static void dump(Activity paramActivity, String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramActivity.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  static void invalidateOptionsMenu(Activity paramActivity)
  {
    paramActivity.invalidateOptionsMenu();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ActivityCompatHoneycomb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */