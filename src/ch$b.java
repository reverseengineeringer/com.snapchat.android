final class ch$b
  extends ch
{
  final ch q;
  final ch r;
  
  ch$b(ch paramch1, ch paramch2)
  {
    this(paramch1, paramch2, str1.length() + 18 + str2.length() + "CharMatcher.or(" + str1 + ", " + str2 + ")");
  }
  
  private ch$b(ch paramch1, ch paramch2, String paramString)
  {
    super(paramString);
    q = ((ch)co.a(paramch1));
    r = ((ch)co.a(paramch2));
  }
  
  final ch a(String paramString)
  {
    return new b(q, r, paramString);
  }
  
  public final boolean a(char paramChar)
  {
    return (q.a(paramChar)) || (r.a(paramChar));
  }
}

/* Location:
 * Qualified Name:     ch.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */