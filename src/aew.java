import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import java.util.ArrayList;
import java.util.List;

public final class aew
{
  public final String a;
  public final EditionOpenOrigin b;
  public final List<DSnapPage> c = new ArrayList();
  
  public aew(@cgb String paramString, @cgb EditionOpenOrigin paramEditionOpenOrigin)
  {
    a = paramString;
    b = paramEditionOpenOrigin;
  }
  
  public aew(@cgb String paramString, @cgb EditionOpenOrigin paramEditionOpenOrigin, List<DSnapPage> paramList)
  {
    a = paramString;
    b = paramEditionOpenOrigin;
    c.addAll(paramList);
  }
}

/* Location:
 * Qualified Name:     aew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */