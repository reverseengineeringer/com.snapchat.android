public final class ft
{
  private static final double[] e = new double[''];
  public int a;
  private char b;
  private CharSequence c;
  private int d;
  
  static
  {
    int i = 0;
    while (i < e.length)
    {
      e[i] = Math.pow(10.0D, i);
      i += 1;
    }
  }
  
  public ft(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    a = 0;
    d = paramCharSequence.length();
    b = paramCharSequence.charAt(0);
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
    return c.charAt(a);
  }
  
  private void f()
  {
    for (;;)
    {
      if (a < d) {}
      switch (c.charAt(a))
      {
      default: 
        return;
      }
      b();
    }
  }
  
  public final void a()
  {
    while ((a < d) && (Character.isWhitespace(c.charAt(a)))) {
      b();
    }
  }
  
  public final void b()
  {
    b = e();
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
    float f;
    switch (b)
    {
    case ',': 
    default: 
      i2 = 1;
      switch (b)
      {
      case '/': 
      default: 
        f = NaN.0F;
        label119:
        f();
        return f;
      }
      break;
    }
    for (int i = 0;; i = 1)
    {
      b = e();
      i2 = i;
      break;
      i = 0;
      int i1 = 0;
      int k = 0;
      for (int j = 0;; j = 0)
      {
        n = i;
        m = j;
        if (b != '.') {
          break label796;
        }
        b = e();
        switch (b)
        {
        default: 
          n = i;
          m = j;
          if (i1 != 0) {
            break label796;
          }
          a(b);
          f = 0.0F;
          break label119;
          b = e();
          switch (b)
          {
          case '0': 
          default: 
            f = 0.0F;
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
        k = m * 10 + (b - '0');
        i = n;
      }
      for (;;)
      {
        b = e();
        n = i;
        i1 = j;
        m = k;
        switch (b)
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
        b = e();
        i = m - 1;
        m = i;
        switch (b)
        {
        case '0': 
        default: 
          n = i;
          m = j;
          if (i1 == 0) {
            f = 0.0F;
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
          m = j * 10 + (b - '0');
          n = i - 1;
        }
        b = e();
        i = n;
        k = i1;
        j = m;
        switch (b)
        {
        }
        label796:
        switch (b)
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
          f = 0.0F;
          break;
          b = e();
          j = i7;
          i = i5;
          switch (b)
          {
          case ',': 
          case '.': 
          case '/': 
          default: 
            a(b);
            f = 0.0F;
            break;
          case '-': 
            j = 0;
          case '+': 
            b = e();
            i = j;
            switch (b)
            {
            default: 
              a(b);
              f = 0.0F;
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
            switch (b)
            {
            default: 
              j = i4;
              break;
            case '0': 
              b = e();
              switch (b)
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
            k = j * 10 + (b - '0');
          }
          b = e();
          i1 = i3;
          j = k;
          switch (b)
          {
          }
          j = k;
          break label836;
          label1339:
          if (k >= 128)
          {
            if (i > 0)
            {
              f = Float.POSITIVE_INFINITY;
              break;
            }
            f = Float.NEGATIVE_INFINITY;
            break;
          }
          if (k == 0)
          {
            f = i;
            break;
          }
          j = i;
          if (i >= 67108864) {
            j = i + 1;
          }
          if (k > 0) {
            d1 = j;
          }
          for (double d1 = e[k] * d1;; d1 = j / e[(-k)])
          {
            f = (float)d1;
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
    int i = b;
    b = e();
    f();
    return i - 48;
  }
}

/* Location:
 * Qualified Name:     ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */