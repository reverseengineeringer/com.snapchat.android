import android.text.TextUtils;
import com.snapchat.android.discover.model.database.table.ChannelViewDatesTable.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class adw
{
  private static final adw b = new adw();
  public Map<String, adx> a = new HashMap();
  private final bhk c;
  
  private adw()
  {
    this(new bhk());
  }
  
  private adw(bhk parambhk)
  {
    c = parambhk;
  }
  
  public static adw a()
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
        localObject = new adx(a, b);
        a.put(a, localObject);
      }
      ((adx)localObject).a(new chh(c));
    }
    return a.size();
  }
  
  public final adx a(String paramString)
  {
    return (adx)a.get(paramString);
  }
}

/* Location:
 * Qualified Name:     adw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */