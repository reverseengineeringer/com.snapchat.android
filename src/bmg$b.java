import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;

final class bmg$b
{
  final String a;
  final long[] b;
  final File[] c;
  final File[] d;
  boolean e;
  bmg.a f;
  long g;
  
  private bmg$b(bmg parambmg, String paramString)
  {
    a = paramString;
    b = new long[bmg.h(parambmg)];
    c = new File[bmg.h(parambmg)];
    d = new File[bmg.h(parambmg)];
    paramString = new StringBuilder(paramString).append('.');
    int j = paramString.length();
    int i = 0;
    while (i < bmg.h(parambmg))
    {
      paramString.append(i);
      c[i] = new File(bmg.j(parambmg), paramString.toString());
      paramString.append(".tmp");
      d[i] = new File(bmg.j(parambmg), paramString.toString());
      paramString.setLength(j);
      i += 1;
    }
  }
  
  private static IOException b(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }
  
  final bmg.c a()
  {
    j = 0;
    if (!Thread.holdsLock(h)) {
      throw new AssertionError();
    }
    caj[] arrayOfcaj = new caj[bmg.h(h)];
    Object localObject = (long[])b.clone();
    i = 0;
    for (;;)
    {
      try
      {
        if (i < bmg.h(h))
        {
          arrayOfcaj[i] = bmg.i(h).a(c[i]);
          i += 1;
          continue;
        }
        localObject = new bmg.c(h, a, g, arrayOfcaj, (long[])localObject, (byte)0);
        return (bmg.c)localObject;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        i = j;
        continue;
      }
      if ((i >= bmg.h(h)) || (arrayOfcaj[i] == null)) {
        continue;
      }
      bmp.a(arrayOfcaj[i]);
      i += 1;
    }
    return null;
  }
  
  final void a(bzv parambzv)
  {
    long[] arrayOfLong = b;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      parambzv.g(32).j(l);
      i += 1;
    }
  }
  
  final void a(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != bmg.h(h)) {
      throw b(paramArrayOfString);
    }
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        b[i] = Long.parseLong(paramArrayOfString[i]);
        i += 1;
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw b(paramArrayOfString);
    }
  }
}

/* Location:
 * Qualified Name:     bmg.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */