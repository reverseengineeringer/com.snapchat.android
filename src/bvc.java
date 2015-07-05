import android.os.Process;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Date;
import java.util.UUID;

public final class bvc
  implements Thread.UncaughtExceptionHandler
{
  bvb a;
  private boolean b = false;
  private Thread.UncaughtExceptionHandler c;
  
  public bvc(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, bvb parambvb, boolean paramBoolean)
  {
    c = paramUncaughtExceptionHandler;
    b = paramBoolean;
    a = parambvb;
  }
  
  private static String a(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() > 255) {
        str = paramString.substring(0, 255);
      }
    }
    return str;
  }
  
  private static void a(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = buz.a + "/" + paramString2;
      if (paramString1.trim().length() > 0)
      {
        paramString2 = new BufferedWriter(new FileWriter(paramString2));
        paramString2.write(paramString1);
        paramString2.flush();
        paramString2.close();
      }
      return;
    }
    catch (Exception paramString1) {}
  }
  
  public static void a(Throwable paramThrowable, bvb parambvb)
  {
    Date localDate = new Date();
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    try
    {
      paramThrowable = UUID.randomUUID().toString();
      BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(buz.a + "/" + paramThrowable + ".stacktrace"));
      localBufferedWriter.write("Package: " + buz.d + "\n");
      localBufferedWriter.write("Version Code: " + buz.b + "\n");
      localBufferedWriter.write("Version Name: " + buz.c + "\n");
      localBufferedWriter.write("Android: " + buz.e + "\n");
      localBufferedWriter.write("Manufacturer: " + buz.g + "\n");
      localBufferedWriter.write("Model: " + buz.f + "\n");
      if (buz.h != null) {
        localBufferedWriter.write("CrashReporter Key: " + buz.h + "\n");
      }
      localBufferedWriter.write("Date: " + localDate + "\n");
      localBufferedWriter.write("\n");
      localBufferedWriter.write(localStringWriter.toString());
      localBufferedWriter.flush();
      localBufferedWriter.close();
      if (parambvb != null)
      {
        a(a(parambvb.c()), paramThrowable + ".user");
        a(a(parambvb.d()), paramThrowable + ".contact");
        a(parambvb.b(), paramThrowable + ".description");
      }
      return;
    }
    catch (Exception paramThrowable) {}
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (buz.a == null)
    {
      c.uncaughtException(paramThread, paramThrowable);
      return;
    }
    a(paramThrowable, a);
    if (!b)
    {
      c.uncaughtException(paramThread, paramThrowable);
      return;
    }
    Process.killProcess(Process.myPid());
    System.exit(10);
  }
}

/* Location:
 * Qualified Name:     bvc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */