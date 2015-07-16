final class cbi
{
  static cbh a;
  static long b;
  
  static cbh a()
  {
    try
    {
      if (a != null)
      {
        cbh localcbh = a;
        a = f;
        f = null;
        b -= 2048L;
        return localcbh;
      }
      return new cbh();
    }
    finally {}
  }
  
  static void a(cbh paramcbh)
  {
    if ((f != null) || (g != null)) {
      throw new IllegalArgumentException();
    }
    if (d) {
      return;
    }
    try
    {
      if (b + 2048L > 65536L) {
        return;
      }
    }
    finally {}
    b += 2048L;
    f = a;
    c = 0;
    b = 0;
    a = paramcbh;
  }
}

/* Location:
 * Qualified Name:     cbi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */