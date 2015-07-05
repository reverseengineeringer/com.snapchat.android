final class cg$b
  extends cg
{
  final cg q;
  final cg r;
  
  cg$b(cg paramcg1, cg paramcg2)
  {
    this(paramcg1, paramcg2, str1.length() + 18 + str2.length() + "CharMatcher.or(" + str1 + ", " + str2 + ")");
  }
  
  private cg$b(cg paramcg1, cg paramcg2, String paramString)
  {
    super(paramString);
    q = ((cg)ck.a(paramcg1));
    r = ((cg)ck.a(paramcg2));
  }
  
  final cg a(String paramString)
  {
    return new b(q, r, paramString);
  }
  
  public final boolean a(char paramChar)
  {
    return (q.a(paramChar)) || (r.a(paramChar));
  }
}

/* Location:
 * Qualified Name:     cg.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */