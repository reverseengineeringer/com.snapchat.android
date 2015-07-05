final class cah
{
  static cag a;
  static long b;
  
  static cag a()
  {
    try
    {
      if (a != null)
      {
        cag localcag = a;
        a = f;
        f = null;
        b -= 2048L;
        return localcag;
      }
      return new cag();
    }
    finally {}
  }
  
  static void a(cag paramcag)
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
    a = paramcag;
  }
}

/* Location:
 * Qualified Name:     cah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */