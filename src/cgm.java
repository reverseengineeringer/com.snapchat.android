final class cgm
  implements cfn
{
  Object a;
  Object b;
  Object[] c;
  cfl.a d;
  
  public cgm(cfl.a parama, Object paramObject1, Object paramObject2, Object[] paramArrayOfObject)
  {
    d = parama;
    a = paramObject1;
    b = paramObject2;
    c = paramArrayOfObject;
  }
  
  public final Object a()
  {
    return b;
  }
  
  public final String toString()
  {
    return d.toString();
  }
  
  static final class a
    implements cfl.a
  {
    String a;
    cfo b;
    cgi c;
    private int d;
    
    public a(int paramInt, String paramString, cfo paramcfo, cgi paramcgi)
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
}

/* Location:
 * Qualified Name:     cgm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */