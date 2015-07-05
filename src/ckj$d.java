import java.io.DataInput;

final class ckj$d
{
  final ckj.b a;
  final String b;
  final int c;
  
  private ckj$d(ckj.b paramb, String paramString, int paramInt)
  {
    a = paramb;
    b = paramString;
    c = paramInt;
  }
  
  static d a(DataInput paramDataInput)
  {
    return new d(new ckj.b((char)paramDataInput.readUnsignedByte(), paramDataInput.readUnsignedByte(), paramDataInput.readByte(), paramDataInput.readUnsignedByte(), paramDataInput.readBoolean(), (int)ckj.a(paramDataInput)), paramDataInput.readUTF(), (int)ckj.a(paramDataInput));
  }
  
  public final long a(long paramLong, int paramInt1, int paramInt2)
  {
    ckj.b localb = a;
    long l2;
    cic localcic;
    long l1;
    if (a == 'w')
    {
      paramInt1 += paramInt2;
      l2 = paramInt1 + paramLong;
      localcic = cic.L();
      paramLong = localcic.C().b(l2, b);
      paramLong = localcic.e().b(paramLong, 0);
      l1 = localb.a(localcic, localcic.e().a(paramLong, f));
      if (d != 0) {
        break label140;
      }
      paramLong = l1;
      if (l1 <= l2) {
        paramLong = localb.a(localcic, localcic.E().a(l1, 1));
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
      l1 = localb.c(localcic, l1);
      paramLong = l1;
      if (l1 <= l2)
      {
        paramLong = localcic.E().a(l1, 1);
        paramLong = localb.c(localcic, localb.a(localcic, localcic.C().b(paramLong, b)));
      }
    }
  }
  
  public final long b(long paramLong, int paramInt1, int paramInt2)
  {
    ckj.b localb = a;
    long l2;
    cic localcic;
    long l1;
    if (a == 'w')
    {
      paramInt1 += paramInt2;
      l2 = paramInt1 + paramLong;
      localcic = cic.L();
      paramLong = localcic.C().b(l2, b);
      paramLong = localcic.e().b(paramLong, 0);
      l1 = localb.b(localcic, localcic.e().a(paramLong, f));
      if (d != 0) {
        break label140;
      }
      paramLong = l1;
      if (l1 >= l2) {
        paramLong = localb.b(localcic, localcic.E().a(l1, -1));
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
      l1 = localb.c(localcic, l1);
      paramLong = l1;
      if (l1 >= l2)
      {
        paramLong = localcic.E().a(l1, -1);
        paramLong = localb.c(localcic, localb.b(localcic, localcic.C().b(paramLong, b)));
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
 * Qualified Name:     ckj.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */