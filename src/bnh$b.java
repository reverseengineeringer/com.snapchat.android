import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;

final class bnh$b
{
  final String a;
  final long[] b;
  final File[] c;
  final File[] d;
  boolean e;
  bnh.a f;
  long g;
  
  private bnh$b(bnh parambnh, String paramString)
  {
    a = paramString;
    b = new long[bnh.h(parambnh)];
    c = new File[bnh.h(parambnh)];
    d = new File[bnh.h(parambnh)];
    paramString = new StringBuilder(paramString).append('.');
    int j = paramString.length();
    int i = 0;
    while (i < bnh.h(parambnh))
    {
      paramString.append(i);
      c[i] = new File(bnh.j(parambnh), paramString.toString());
      paramString.append(".tmp");
      d[i] = new File(bnh.j(parambnh), paramString.toString());
      paramString.setLength(j);
      i += 1;
    }
  }
  
  private static IOException b(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }
  
  final bnh.c a()
  {
    j = 0;
    if (!Thread.holdsLock(h)) {
      throw new AssertionError();
    }
    cbk[] arrayOfcbk = new cbk[bnh.h(h)];
    Object localObject = (long[])b.clone();
    i = 0;
    for (;;)
    {
      try
      {
        if (i < bnh.h(h))
        {
          arrayOfcbk[i] = bnh.i(h).a(c[i]);
          i += 1;
          continue;
        }
        localObject = new bnh.c(h, a, g, arrayOfcbk, (long[])localObject, (byte)0);
        return (bnh.c)localObject;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        i = j;
        continue;
      }
      if ((i >= bnh.h(h)) || (arrayOfcbk[i] == null)) {
        continue;
      }
      bnq.a(arrayOfcbk[i]);
      i += 1;
    }
    return null;
  }
  
  final void a(caw paramcaw)
  {
    long[] arrayOfLong = b;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      paramcaw.g(32).j(l);
      i += 1;
    }
  }
  
  final void a(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != bnh.h(h)) {
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
 * Qualified Name:     bnh.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */