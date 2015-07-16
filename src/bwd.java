import android.os.Process;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Date;
import java.util.UUID;

public final class bwd
  implements Thread.UncaughtExceptionHandler
{
  bwc a;
  private boolean b = false;
  private Thread.UncaughtExceptionHandler c;
  
  public bwd(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, bwc parambwc, boolean paramBoolean)
  {
    c = paramUncaughtExceptionHandler;
    b = paramBoolean;
    a = parambwc;
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
      paramString2 = bwa.a + "/" + paramString2;
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
  
  public static void a(Throwable paramThrowable, bwc parambwc)
  {
    Date localDate = new Date();
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    try
    {
      paramThrowable = UUID.randomUUID().toString();
      BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(bwa.a + "/" + paramThrowable + ".stacktrace"));
      localBufferedWriter.write("Package: " + bwa.d + "\n");
      localBufferedWriter.write("Version Code: " + bwa.b + "\n");
      localBufferedWriter.write("Version Name: " + bwa.c + "\n");
      localBufferedWriter.write("Android: " + bwa.e + "\n");
      localBufferedWriter.write("Manufacturer: " + bwa.g + "\n");
      localBufferedWriter.write("Model: " + bwa.f + "\n");
      if (bwa.h != null) {
        localBufferedWriter.write("CrashReporter Key: " + bwa.h + "\n");
      }
      localBufferedWriter.write("Date: " + localDate + "\n");
      localBufferedWriter.write("\n");
      localBufferedWriter.write(localStringWriter.toString());
      localBufferedWriter.flush();
      localBufferedWriter.close();
      if (parambwc != null)
      {
        a(a(parambwc.c()), paramThrowable + ".user");
        a(a(parambwc.d()), paramThrowable + ".contact");
        a(parambwc.b(), paramThrowable + ".description");
      }
      return;
    }
    catch (Exception paramThrowable) {}
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (bwa.a == null)
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
 * Qualified Name:     bwd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */