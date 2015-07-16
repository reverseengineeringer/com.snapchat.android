import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings.System;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ThreadFactory;

final class bqp
{
  static final StringBuilder a = new StringBuilder();
  
  static int a(Resources paramResources, bqh parambqh)
  {
    if ((e != 0) || (d == null)) {
      return e;
    }
    String str = d.getAuthority();
    if (str == null) {
      throw new FileNotFoundException("No package provided: " + d);
    }
    List localList = d.getPathSegments();
    if ((localList == null) || (localList.isEmpty())) {
      throw new FileNotFoundException("No path segments: " + d);
    }
    if (localList.size() == 1) {
      try
      {
        int i = Integer.parseInt((String)localList.get(0));
        return i;
      }
      catch (NumberFormatException paramResources)
      {
        throw new FileNotFoundException("Last path segment is not a resource ID: " + d);
      }
    }
    if (localList.size() == 2)
    {
      parambqh = (String)localList.get(0);
      return paramResources.getIdentifier((String)localList.get(1), parambqh, str);
    }
    throw new FileNotFoundException("More than two path segments: " + d);
  }
  
  static int a(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 12) {}
    for (int i = paramBitmap.getByteCount(); i < 0; i = paramBitmap.getRowBytes() * paramBitmap.getHeight()) {
      throw new IllegalStateException("Negative size: " + paramBitmap);
    }
    return i;
  }
  
  static long a(File paramFile)
  {
    try
    {
      paramFile = new StatFs(paramFile.getAbsolutePath());
      l = paramFile.getBlockCount();
      l = paramFile.getBlockSize() * l / 50L;
      return Math.max(Math.min(l, 52428800L), 5242880L);
    }
    catch (IllegalArgumentException paramFile)
    {
      for (;;)
      {
        long l = 5242880L;
      }
    }
  }
  
  static Resources a(Context paramContext, bqh parambqh)
  {
    if ((e != 0) || (d == null)) {
      return paramContext.getResources();
    }
    String str = d.getAuthority();
    if (str == null) {
      throw new FileNotFoundException("No package provided: " + d);
    }
    try
    {
      paramContext = paramContext.getPackageManager().getResourcesForApplication(str);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new FileNotFoundException("Unable to obtain resources for package: " + d);
    }
  }
  
  static bpt a(Context paramContext)
  {
    try
    {
      Class.forName("bmz");
      bqd localbqd = new bqd(paramContext);
      return localbqd;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return new bqo(paramContext);
  }
  
  static <T> T a(Context paramContext, String paramString)
  {
    return (T)paramContext.getSystemService(paramString);
  }
  
  static <T> T a(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new NullPointerException(paramString);
    }
    return paramT;
  }
  
  static String a(bpm parambpm)
  {
    return a(parambpm, "");
  }
  
  static String a(bpm parambpm, String paramString)
  {
    paramString = new StringBuilder(paramString);
    bpk localbpk = k;
    if (localbpk != null) {
      paramString.append(b.a());
    }
    parambpm = l;
    if (parambpm != null)
    {
      int j = parambpm.size();
      int i = 0;
      while (i < j)
      {
        if ((i > 0) || (localbpk != null)) {
          paramString.append(", ");
        }
        paramString.append(getb.a());
        i += 1;
      }
    }
    return paramString.toString();
  }
  
  static String a(bqh parambqh)
  {
    parambqh = a(parambqh, a);
    a.setLength(0);
    return parambqh;
  }
  
  static String a(bqh parambqh, StringBuilder paramStringBuilder)
  {
    if (f != null)
    {
      paramStringBuilder.ensureCapacity(f.length() + 50);
      paramStringBuilder.append(f);
      paramStringBuilder.append('\n');
      if (m != 0.0F)
      {
        paramStringBuilder.append("rotation:").append(m);
        if (p) {
          paramStringBuilder.append('@').append(n).append('x').append(o);
        }
        paramStringBuilder.append('\n');
      }
      if (parambqh.c())
      {
        paramStringBuilder.append("resize:").append(h).append('x').append(parambqh.i);
        paramStringBuilder.append('\n');
      }
      if (!parambqh.j) {
        break label274;
      }
      paramStringBuilder.append("centerCrop\n");
    }
    for (;;)
    {
      if (g == null) {
        break label292;
      }
      int j = g.size();
      int i = 0;
      while (i < j)
      {
        paramStringBuilder.append(((bqn)g.get(i)).b());
        paramStringBuilder.append('\n');
        i += 1;
      }
      if (d != null)
      {
        String str = d.toString();
        paramStringBuilder.ensureCapacity(str.length() + 50);
        paramStringBuilder.append(str);
        break;
      }
      paramStringBuilder.ensureCapacity(50);
      paramStringBuilder.append(e);
      break;
      label274:
      if (k) {
        paramStringBuilder.append("centerInside\n");
      }
    }
    label292:
    return paramStringBuilder.toString();
  }
  
  static void a()
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread()) {}
    for (int i = 1; i == 0; i = 0) {
      throw new IllegalStateException("Method call should happen from the main thread.");
    }
  }
  
  static void a(Looper paramLooper)
  {
    paramLooper = new Handler(paramLooper)
    {
      public final void handleMessage(Message paramAnonymousMessage)
      {
        sendMessageDelayed(obtainMessage(), 1000L);
      }
    };
    paramLooper.sendMessageDelayed(paramLooper.obtainMessage(), 1000L);
  }
  
  static void a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return;
    }
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException paramInputStream) {}
  }
  
  static void a(String paramString1, String paramString2, String paramString3)
  {
    a(paramString1, paramString2, paramString3, "");
  }
  
  static void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String.format("%1$-11s %2$-12s %3$s %4$s", new Object[] { paramString1, paramString2, paramString3, paramString4 });
  }
  
  static boolean a(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      paramString = paramString.split(" ", 2);
      if ("CACHE".equals(paramString[0])) {
        return true;
      }
      if (paramString.length != 1) {
        try
        {
          if ("CONDITIONAL_CACHE".equals(paramString[0]))
          {
            int i = Integer.parseInt(paramString[1]);
            if (i == 304) {
              return true;
            }
          }
        }
        catch (NumberFormatException paramString) {}
      }
    }
    return false;
  }
  
  static File b(Context paramContext)
  {
    paramContext = new File(paramContext.getApplicationContext().getCacheDir(), "picasso-cache");
    if (!paramContext.exists()) {
      paramContext.mkdirs();
    }
    return paramContext;
  }
  
  static boolean b(Context paramContext, String paramString)
  {
    return paramContext.checkCallingOrSelfPermission(paramString) == 0;
  }
  
  static byte[] b(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['က'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (-1 == i) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  static int c(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    int j;
    if ((getApplicationInfoflags & 0x100000) != 0)
    {
      i = 1;
      j = localActivityManager.getMemoryClass();
      if ((i == 0) || (Build.VERSION.SDK_INT < 11)) {
        break label63;
      }
    }
    label63:
    for (int i = localActivityManager.getLargeMemoryClass();; i = j)
    {
      return i * 1048576 / 7;
      i = 0;
      break;
    }
  }
  
  static boolean c(InputStream paramInputStream)
  {
    boolean bool2 = false;
    byte[] arrayOfByte = new byte[12];
    boolean bool1 = bool2;
    if (paramInputStream.read(arrayOfByte, 0, 12) == 12)
    {
      bool1 = bool2;
      if ("RIFF".equals(new String(arrayOfByte, 0, 4, "US-ASCII")))
      {
        bool1 = bool2;
        if ("WEBP".equals(new String(arrayOfByte, 8, 4, "US-ASCII"))) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  static boolean d(Context paramContext)
  {
    boolean bool = false;
    paramContext = paramContext.getContentResolver();
    try
    {
      int i = Settings.System.getInt(paramContext, "airplane_mode_on", 0);
      if (i != 0) {
        bool = true;
      }
      return bool;
    }
    catch (NullPointerException paramContext) {}
    return false;
  }
  
  static final class a
    extends Thread
  {
    public a(Runnable paramRunnable)
    {
      super();
    }
    
    public final void run()
    {
      Process.setThreadPriority(10);
      super.run();
    }
  }
  
  static final class b
    implements ThreadFactory
  {
    public final Thread newThread(Runnable paramRunnable)
    {
      return new bqp.a(paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     bqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */