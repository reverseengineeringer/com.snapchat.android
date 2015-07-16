import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class vy
  extends bge<vp>
{
  private final List<vp> a;
  
  public vy(@chc List<vp> paramList, @chc ban paramban, @chc bge.a<vp> parama)
  {
    super(paramban, parama);
    a = paramList;
  }
  
  @chd
  protected final List<vp> a(@chd String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return a;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      vp localvp = (vp)localIterator.next();
      if (localvp.a(paramString)) {
        localArrayList.add(localvp);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     vy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */