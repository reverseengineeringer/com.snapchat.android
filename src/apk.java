import java.util.ArrayList;
import java.util.List;

public final class apk
{
  private final bam a;
  
  public apk()
  {
    this(bam.a());
  }
  
  private apk(bam parambam)
  {
    a = parambam;
  }
  
  public final List<akl> a(List<akl> paramList)
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
      akl localakl = (akl)paramList.get(0);
      localArrayList.add(localakl);
      if (paramList.size() == 1) {
        return localArrayList;
      }
      if ((i > 2) && (paramList.size() > 2))
      {
        long l1 = localakl.U();
        long l3 = Math.ceil(Math.abs(((akl)paramList.get(paramList.size() - 1)).U() - l1) / (i - 1));
        l1 -= l3;
        int j = 1;
        while (j < paramList.size() - 1)
        {
          localakl = (akl)paramList.get(j);
          localakl.U();
          localakl.U();
          long l2 = l1;
          if (localakl.U() <= l1)
          {
            l2 = l1 - l3;
            localArrayList.add(localakl);
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
 * Qualified Name:     apk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */