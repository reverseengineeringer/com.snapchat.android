import com.snapchat.android.discover.model.ChannelPage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class aea
{
  final adw a;
  final aef b;
  final Map<String, Integer> c = new HashMap();
  final Comparator<ChannelPage> d = new Comparator() {};
  final Comparator<adx> e = new Comparator() {};
  final Comparator<ChannelPage> f = new Comparator() {};
  final Comparator<ChannelPage> g = new Comparator() {};
  private final bhk h;
  
  public aea()
  {
    this(adw.a(), aef.a(), new bhk());
  }
  
  private aea(adw paramadw, aef paramaef, bhk parambhk)
  {
    a = paramadw;
    b = paramaef;
    h = parambhk;
  }
  
  @awj
  public final List<ChannelPage> a(@chc List<ChannelPage> paramList, int paramInt)
  {
    int m = 0;
    if (paramList.isEmpty()) {
      return paramList;
    }
    if (paramInt != 2) {}
    ArrayList localArrayList;
    HashSet localHashSet;
    int j;
    for (int i = 1;; i = 0)
    {
      localArrayList = new ArrayList(paramList.size());
      localHashSet = new HashSet(paramList.size());
      int k = 0;
      j = i;
      i = k;
      while (i < paramList.size())
      {
        ChannelPage localChannelPage = (ChannelPage)paramList.get(i);
        k = j;
        if (j != 0) {
          k = j & c.containsKey(b);
        }
        localHashSet.add(b);
        localArrayList.add(localChannelPage);
        i += 1;
        j = k;
      }
    }
    if ((j != 0) && (localHashSet.size() == c.size())) {
      switch (paramInt)
      {
      default: 
        paramList = d;
        Collections.sort(localArrayList, paramList);
      }
    }
    for (;;)
    {
      c.clear();
      paramInt = m;
      while (paramInt < localArrayList.size())
      {
        paramList = (ChannelPage)localArrayList.get(paramInt);
        c.put(b, Integer.valueOf(paramInt));
        paramInt += 1;
      }
      paramList = g;
      break;
      paramList = f;
      break;
      Collections.sort(localArrayList, f);
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     aea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */