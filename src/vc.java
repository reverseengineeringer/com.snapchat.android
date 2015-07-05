import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class vc
  extends bfe<ut>
{
  private final List<ut> a;
  
  public vc(@cgb List<ut> paramList, @cgb azo paramazo, @cgb bfe.a<ut> parama)
  {
    super(paramazo, parama);
    a = paramList;
  }
  
  @cgc
  protected final List<ut> a(@cgc String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return a;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ut localut = (ut)localIterator.next();
      if (localut.a(paramString)) {
        localArrayList.add(localut);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     vc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */