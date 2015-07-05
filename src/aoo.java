import java.util.ArrayList;
import java.util.List;

public final class aoo
{
  private final azn a;
  
  public aoo()
  {
    this(azn.a());
  }
  
  private aoo(azn paramazn)
  {
    a = paramazn;
  }
  
  public final List<ajr> a(List<ajr> paramList)
  {
    int i = a.d();
    if (i == -1) {
      i = 3;
    }
    for (;;)
    {
      ArrayList localArrayList = new ArrayList(i);
      if ((i == 0) || (paramList.size() == 0)) {
        return localArrayList;
      }
      ajr localajr = (ajr)paramList.get(0);
      localArrayList.add(localajr);
      if (paramList.size() == 1) {
        return localArrayList;
      }
      if ((i > 2) && (paramList.size() > 2))
      {
        long l1 = localajr.W();
        long l3 = Math.ceil(Math.abs(((ajr)paramList.get(paramList.size() - 1)).W() - l1) / (i - 1));
        l1 -= l3;
        int j = 1;
        while (j < paramList.size() - 1)
        {
          localajr = (ajr)paramList.get(j);
          localajr.W();
          localajr.W();
          long l2 = l1;
          if (localajr.W() <= l1)
          {
            l2 = l1 - l3;
            localArrayList.add(localajr);
          }
          j += 1;
          l1 = l2;
        }
      }
      if ((i > 1) && (paramList.size() > 1)) {
        localArrayList.add(paramList.get(paramList.size() - 1));
      }
      localArrayList.size();
      String.format("Selected too many stories for thumbnail! (%d/%s)", new Object[] { Integer.valueOf(localArrayList.size()), Integer.valueOf(i) });
      return localArrayList;
    }
  }
}

/* Location:
 * Qualified Name:     aoo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */