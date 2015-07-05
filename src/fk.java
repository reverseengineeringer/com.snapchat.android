import java.lang.reflect.Field;

public final class fk
{
  private static final Field b;
  private static final double[] f;
  public int a;
  private final char[] c;
  private final int d;
  private char e;
  
  static
  {
    try
    {
      Field localField = String.class.getDeclaredField("value");
      b = localField;
      localField.setAccessible(true);
      f = new double[''];
      int i = 0;
      while (i < f.length)
      {
        f[i] = Math.pow(10.0D, i);
        i += 1;
      }
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public fk(String paramString)
  {
    try
    {
      c = ((char[])b.get(paramString));
      a = 0;
      d = c.length;
      e = c[0];
      return;
    }
    catch (Exception paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private static void a(char paramChar)
  {
    throw new RuntimeException("Unexpected char '" + paramChar + "'.");
  }
  
  private char e()
  {
    if (a < d) {
      a += 1;
    }
    if (a == d) {
      return '\000';
    }
    return c[a];
  }
  
  private void f()
  {
    for (;;)
    {
      if (a < d) {}
      switch (c[a])
      {
      default: 
        return;
      }
      b();
    }
  }
  
  public final void a()
  {
    while ((a < d) && (Character.isWhitespace(c[a]))) {
      b();
    }
  }
  
  public final void b()
  {
    e = e();
  }
  
  public final float c()
  {
    int i7 = 1;
    int i5 = 1;
    int i6 = 1;
    int i3 = 0;
    int i4 = 0;
    a();
    int i2;
    float f1;
    switch (e)
    {
    case ',': 
    default: 
      i2 = 1;
      switch (e)
      {
      case '/': 
      default: 
        f1 = NaN.0F;
        label119:
        f();
        return f1;
      }
      break;
    }
    for (int i = 0;; i = 1)
    {
      e = e();
      i2 = i;
      break;
      i = 0;
      int i1 = 0;
      int k = 0;
      for (int j = 0;; j = 0)
      {
        n = i;
        m = j;
        if (e != '.') {
          break label796;
        }
        e = e();
        switch (e)
        {
        default: 
          n = i;
          m = j;
          if (i1 != 0) {
            break label796;
          }
          a(e);
          f1 = 0.0F;
          break label119;
          e = e();
          switch (e)
          {
          case '0': 
          default: 
            f1 = 0.0F;
            break;
          case '.': 
          case 'E': 
          case 'e': 
            i = 0;
            i1 = 1;
            k = 0;
          }
          break;
        }
      }
      int n = 0;
      i1 = 0;
      int m = 0;
      if (i1 < 9)
      {
        j = i1 + 1;
        k = m * 10 + (e - '0');
        i = n;
      }
      for (;;)
      {
        e = e();
        n = i;
        i1 = j;
        m = k;
        switch (e)
        {
        }
        m = k;
        i1 = 1;
        k = j;
        j = m;
        break;
        i = n + 1;
        j = i1;
        k = m;
      }
      if (k == 0)
      {
        m = i;
        e = e();
        i = m - 1;
        m = i;
        switch (e)
        {
        case '0': 
        default: 
          n = i;
          m = j;
          if (i1 == 0) {
            f1 = 0.0F;
          }
          break;
        }
      }
      for (;;)
      {
        n = i;
        i1 = k;
        m = j;
        if (k < 9)
        {
          i1 = k + 1;
          m = j * 10 + (e - '0');
          n = i - 1;
        }
        e = e();
        i = n;
        k = i1;
        j = m;
        switch (e)
        {
        }
        label796:
        switch (e)
        {
        default: 
          i = i6;
          j = i4;
        }
        for (;;)
        {
          label836:
          k = j;
          if (i == 0) {
            k = -j;
          }
          k += n;
          if (i2 != 0) {
            break label1432;
          }
          i = -m;
          label867:
          if ((k >= -125) && (i != 0)) {
            break label1339;
          }
          f1 = 0.0F;
          break;
          e = e();
          j = i7;
          i = i5;
          switch (e)
          {
          case ',': 
          case '.': 
          case '/': 
          default: 
            a(e);
            f1 = 0.0F;
            break;
          case '-': 
            j = 0;
          case '+': 
            e = e();
            i = j;
            switch (e)
            {
            default: 
              a(e);
              f1 = 0.0F;
            }
            break;
          case '0': 
          case '1': 
          case '2': 
          case '3': 
          case '4': 
          case '5': 
          case '6': 
          case '7': 
          case '8': 
          case '9': 
            switch (e)
            {
            default: 
              j = i4;
              break;
            case '0': 
              e = e();
              switch (e)
              {
              case '0': 
              default: 
                j = i4;
              }
              break;
            }
            break;
          }
        }
        j = 0;
        for (i1 = i3;; i1 = i3)
        {
          i3 = i1;
          k = j;
          if (i1 < 3)
          {
            i3 = i1 + 1;
            k = j * 10 + (e - '0');
          }
          e = e();
          i1 = i3;
          j = k;
          switch (e)
          {
          }
          j = k;
          break label836;
          label1339:
          if (k >= 128)
          {
            if (i > 0)
            {
              f1 = Float.POSITIVE_INFINITY;
              break;
            }
            f1 = Float.NEGATIVE_INFINITY;
            break;
          }
          if (k == 0)
          {
            f1 = i;
            break;
          }
          j = i;
          if (i >= 67108864) {
            j = i + 1;
          }
          if (k > 0) {
            d1 = j;
          }
          for (double d1 = f[k] * d1;; d1 = j / f[(-k)])
          {
            f1 = (float)d1;
            break;
          }
          label1432:
          i = m;
          break label867;
          j = 0;
        }
      }
    }
  }
  
  public final int d()
  {
    a();
    int i = e;
    e = e();
    f();
    return i - 48;
  }
}

/* Location:
 * Qualified Name:     fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */