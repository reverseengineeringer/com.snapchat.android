import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.Inflater;

final class bnr
{
  int a;
  final bzw b = cad.a(c);
  private final cac c = new cac(new caa(parambzw)new Inflater
  {
    public final long a(bzu paramAnonymousbzu, long paramAnonymousLong)
    {
      if (a == 0) {}
      do
      {
        return -1L;
        paramAnonymousLong = super.a(paramAnonymousbzu, Math.min(paramAnonymousLong, a));
      } while (paramAnonymousLong == -1L);
      a = ((int)(a - paramAnonymousLong));
      return paramAnonymousLong;
    }
  }, new Inflater()
  {
    public final int inflate(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      int j = super.inflate(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      int i = j;
      if (j == 0)
      {
        i = j;
        if (needsDictionary())
        {
          setDictionary(bnv.a);
          i = super.inflate(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        }
      }
      return i;
    }
  });
  
  public bnr(bzw parambzw) {}
  
  private bzx a()
  {
    int i = b.h();
    return b.c(i);
  }
  
  public final List<bnl> a(int paramInt)
  {
    a += paramInt;
    int i = b.h();
    if (i < 0) {
      throw new IOException("numberOfPairs < 0: " + i);
    }
    if (i > 1024) {
      throw new IOException("numberOfPairs > 1024: " + i);
    }
    ArrayList localArrayList = new ArrayList(i);
    paramInt = 0;
    while (paramInt < i)
    {
      bzx localbzx1 = a().c();
      bzx localbzx2 = a();
      if (c.length == 0) {
        throw new IOException("name.size == 0");
      }
      localArrayList.add(new bnl(localbzx1, localbzx2));
      paramInt += 1;
    }
    if (a > 0)
    {
      c.b();
      if (a != 0) {
        throw new IOException("compressedLimit > 0: " + a);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     bnr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */