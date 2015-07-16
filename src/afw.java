import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import java.util.ArrayList;
import java.util.List;

public final class afw
{
  public final String a;
  public final EditionOpenOrigin b;
  public final List<DSnapPage> c = new ArrayList();
  
  public afw(@chc String paramString, @chc EditionOpenOrigin paramEditionOpenOrigin)
  {
    a = paramString;
    b = paramEditionOpenOrigin;
  }
  
  public afw(@chc String paramString, @chc EditionOpenOrigin paramEditionOpenOrigin, List<DSnapPage> paramList)
  {
    a = paramString;
    b = paramEditionOpenOrigin;
    c.addAll(paramList);
  }
}

/* Location:
 * Qualified Name:     afw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */