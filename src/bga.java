import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class bga<T>
{
  private final bfz mRandomIntegerSetGenerator;
  
  public bga()
  {
    this(new bfz());
  }
  
  private bga(bfz parambfz)
  {
    mRandomIntegerSetGenerator = parambfz;
  }
  
  public final List<T> a(List<T> paramList)
  {
    if (3 >= paramList.size()) {
      return paramList;
    }
    Object localObject2 = mRandomIntegerSetGenerator;
    int k = paramList.size();
    if (3 > k) {
      throw new IllegalStateException("Must generate <= upperBound numbers!");
    }
    Object localObject1 = new HashSet(3);
    int i = k - 3;
    if (i < k)
    {
      int j;
      if (i == 0)
      {
        j = 0;
        label69:
        if (!((Set)localObject1).contains(Integer.valueOf(j))) {
          break label117;
        }
        ((Set)localObject1).add(Integer.valueOf(i));
      }
      for (;;)
      {
        i += 1;
        break;
        j = mRgen.nextInt(i + 1);
        break label69;
        label117:
        ((Set)localObject1).add(Integer.valueOf(j));
      }
    }
    localObject2 = new ArrayList(3);
    localObject1 = ((Set)localObject1).iterator();
    while (((Iterator)localObject1).hasNext()) {
      ((List)localObject2).add(paramList.get(((Integer)((Iterator)localObject1).next()).intValue()));
    }
    return (List<T>)localObject2;
  }
}

/* Location:
 * Qualified Name:     bga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */