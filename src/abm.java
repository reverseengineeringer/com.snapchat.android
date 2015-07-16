import com.snapchat.android.database.DataType;
import com.snapchat.android.database.table.DbTable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class abm
  extends DbTable<aap.a>
{
  private final String a;
  private final aap b;
  
  protected abm(String paramString, aap paramaap)
  {
    a = paramString;
    b = paramaap;
  }
  
  protected final Collection<aap.a> a(akp paramakp)
  {
    Object localObject = b;
    paramakp = new ArrayList();
    localObject = a.entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      paramakp.add(new aap.a((String)localEntry.getKey(), ((Long)localEntry.getValue()).longValue()));
    }
    return paramakp;
  }
  
  public final void b(akp paramakp)
  {
    paramakp = b;
    Object localObject = a(null, null);
    a.clear();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      aap.a locala = (aap.a)((Iterator)localObject).next();
      if (!locala.a()) {
        a.put(b, Long.valueOf(c));
      }
    }
  }
  
  public final aav[] b()
  {
    return abm.a.values();
  }
  
  public final String c()
  {
    return a;
  }
  
  public final String d()
  {
    String str = "_id INTEGER PRIMARY KEY";
    abm.a[] arrayOfa = abm.a.values();
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      abm.a locala = arrayOfa[i];
      str = str + "," + abm.a.a(locala) + " " + abm.a.b(locala).toString();
      i += 1;
    }
    return str;
  }
  
  static enum a
    implements aav
  {
    private int c;
    private String d;
    private DataType e;
    
    private a(int paramInt, String paramString, DataType paramDataType)
    {
      c = paramInt;
      d = paramString;
      e = paramDataType;
    }
    
    public final String getColumnName()
    {
      return d;
    }
    
    public final int getColumnNumber()
    {
      return c;
    }
    
    public final String getConstraints()
    {
      return null;
    }
    
    public final DataType getDataType()
    {
      return e;
    }
  }
}

/* Location:
 * Qualified Name:     abm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */