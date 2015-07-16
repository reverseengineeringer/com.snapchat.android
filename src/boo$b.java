import java.util.List;
import java.util.Map;

final class boo$b
{
  private final cav a;
  
  boo$b(cav paramcav)
  {
    a = paramcav;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      a.a(paramInt1 | 0x0);
      return;
    }
    a.a(paramInt2 | 0x0);
    paramInt1 -= paramInt2;
    while (paramInt1 >= 128)
    {
      a.a(paramInt1 & 0x7F | 0x80);
      paramInt1 >>>= 7;
    }
    a.a(paramInt1);
  }
  
  private void a(cay paramcay)
  {
    a(c.length, 127);
    a.a(paramcay);
  }
  
  final void a(List<bom> paramList)
  {
    int j = paramList.size();
    int i = 0;
    if (i < j)
    {
      cay localcay = geth.c();
      Integer localInteger = (Integer)boo.b().get(localcay);
      if (localInteger != null)
      {
        a(localInteger.intValue() + 1, 15);
        a(geti);
      }
      for (;;)
      {
        i += 1;
        break;
        a.a(0);
        a(localcay);
        a(geti);
      }
    }
  }
}

/* Location:
 * Qualified Name:     boo.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */