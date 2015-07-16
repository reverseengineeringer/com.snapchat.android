final class cgm$a
  implements cfl.a
{
  String a;
  cfo b;
  cgi c;
  private int d;
  
  public cgm$a(int paramInt, String paramString, cfo paramcfo, cgi paramcgi)
  {
    a = paramString;
    b = paramcfo;
    c = paramcgi;
    d = paramInt;
  }
  
  public final String toString()
  {
    cgr localcgr = cgr.k;
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(cgr.a(a));
    localStringBuffer.append("(");
    localStringBuffer.append(((cgp)b).b(localcgr));
    localStringBuffer.append(")");
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     cgm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */