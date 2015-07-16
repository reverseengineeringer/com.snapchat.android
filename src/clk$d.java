import java.io.DataInput;

final class clk$d
{
  final clk.b a;
  final String b;
  final int c;
  
  private clk$d(clk.b paramb, String paramString, int paramInt)
  {
    a = paramb;
    b = paramString;
    c = paramInt;
  }
  
  static d a(DataInput paramDataInput)
  {
    return new d(new clk.b((char)paramDataInput.readUnsignedByte(), paramDataInput.readUnsignedByte(), paramDataInput.readByte(), paramDataInput.readUnsignedByte(), paramDataInput.readBoolean(), (int)clk.a(paramDataInput)), paramDataInput.readUTF(), (int)clk.a(paramDataInput));
  }
  
  public final long a(long paramLong, int paramInt1, int paramInt2)
  {
    clk.b localb = a;
    long l2;
    cjd localcjd;
    long l1;
    if (a == 'w')
    {
      paramInt1 += paramInt2;
      l2 = paramInt1 + paramLong;
      localcjd = cjd.L();
      paramLong = localcjd.C().b(l2, b);
      paramLong = localcjd.e().b(paramLong, 0);
      l1 = localb.a(localcjd, localcjd.e().a(paramLong, f));
      if (d != 0) {
        break label140;
      }
      paramLong = l1;
      if (l1 <= l2) {
        paramLong = localb.a(localcjd, localcjd.E().a(l1, 1));
      }
    }
    for (;;)
    {
      return paramLong - paramInt1;
      if (a == 's') {
        break;
      }
      paramInt1 = 0;
      break;
      label140:
      l1 = localb.c(localcjd, l1);
      paramLong = l1;
      if (l1 <= l2)
      {
        paramLong = localcjd.E().a(l1, 1);
        paramLong = localb.c(localcjd, localb.a(localcjd, localcjd.C().b(paramLong, b)));
      }
    }
  }
  
  public final long b(long paramLong, int paramInt1, int paramInt2)
  {
    clk.b localb = a;
    long l2;
    cjd localcjd;
    long l1;
    if (a == 'w')
    {
      paramInt1 += paramInt2;
      l2 = paramInt1 + paramLong;
      localcjd = cjd.L();
      paramLong = localcjd.C().b(l2, b);
      paramLong = localcjd.e().b(paramLong, 0);
      l1 = localb.b(localcjd, localcjd.e().a(paramLong, f));
      if (d != 0) {
        break label140;
      }
      paramLong = l1;
      if (l1 >= l2) {
        paramLong = localb.b(localcjd, localcjd.E().a(l1, -1));
      }
    }
    for (;;)
    {
      return paramLong - paramInt1;
      if (a == 's') {
        break;
      }
      paramInt1 = 0;
      break;
      label140:
      l1 = localb.c(localcjd, l1);
      paramLong = l1;
      if (l1 >= l2)
      {
        paramLong = localcjd.E().a(l1, -1);
        paramLong = localb.c(localcjd, localb.b(localcjd, localcjd.C().b(paramLong, b)));
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof d)) {
        break;
      }
      paramObject = (d)paramObject;
    } while ((c == c) && (b.equals(b)) && (a.equals(a)));
    return false;
    return false;
  }
}

/* Location:
 * Qualified Name:     clk.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */