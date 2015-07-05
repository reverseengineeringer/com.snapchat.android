import android.database.Cursor;
import com.snapchat.android.discover.model.ChannelPage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class ada
{
  final acw a;
  final adf b;
  final adj c;
  Cursor d;
  final List<ChannelPage> e = new ArrayList();
  final Set<String> f = new HashSet();
  List<ChannelPage> g;
  final Comparator<acx> h = new Comparator() {};
  final Comparator<ChannelPage> i = new Comparator() {};
  final Comparator<ChannelPage> j = new Comparator() {};
  private final bgk k;
  
  public ada()
  {
    this(acw.a(), adf.a(), adj.a(), new bgk());
  }
  
  private ada(acw paramacw, adf paramadf, adj paramadj, bgk parambgk)
  {
    a = paramacw;
    b = paramadf;
    c = paramadj;
    k = parambgk;
  }
  
  final int[] a(List<ChannelPage> paramList, Comparator<ChannelPage> paramComparator)
  {
    g = new ArrayList(paramList);
    Collections.sort(g, paramComparator);
    paramList = new int[g.size()];
    int m = 0;
    while (m < g.size())
    {
      paramList[g.get(m)).f] = m;
      m += 1;
    }
    return paramList;
  }
}

/* Location:
 * Qualified Name:     ada
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */