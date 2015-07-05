import android.text.TextUtils;
import com.snapchat.android.discover.model.database.table.ChannelViewDatesTable.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class acw
{
  private static final acw b = new acw();
  public Map<String, acx> a = new HashMap();
  private final bgk c;
  
  private acw()
  {
    this(new bgk());
  }
  
  private acw(bgk parambgk)
  {
    c = parambgk;
  }
  
  public static acw a()
  {
    return b;
  }
  
  public final int a(List<ChannelViewDatesTable.a> paramList)
  {
    a.clear();
    if (paramList.isEmpty()) {
      return 0;
    }
    Object localObject = null;
    Iterator localIterator = paramList.iterator();
    for (paramList = (List<ChannelViewDatesTable.a>)localObject; localIterator.hasNext(); paramList = (List<ChannelViewDatesTable.a>)localObject)
    {
      ChannelViewDatesTable.a locala = (ChannelViewDatesTable.a)localIterator.next();
      if (paramList != null)
      {
        localObject = paramList;
        if (TextUtils.equals(a, a)) {}
      }
      else
      {
        localObject = new acx(a, b);
        a.put(a, localObject);
      }
      ((acx)localObject).a(new cgg(c));
    }
    return a.size();
  }
  
  public final acx a(String paramString)
  {
    return (acx)a.get(paramString);
  }
}

/* Location:
 * Qualified Name:     acw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */