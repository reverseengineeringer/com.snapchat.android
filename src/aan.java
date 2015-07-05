import com.snapchat.android.database.DataType;
import com.snapchat.android.database.table.DbTable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class aan
  extends DbTable<zp.a>
{
  private final String a;
  private final zp b;
  
  protected aan(String paramString, zp paramzp)
  {
    a = paramString;
    b = paramzp;
  }
  
  protected final Collection<zp.a> a(ajv paramajv)
  {
    Object localObject = b;
    paramajv = new ArrayList();
    localObject = a.entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      paramajv.add(new zp.a((String)localEntry.getKey(), ((Long)localEntry.getValue()).longValue()));
    }
    return paramajv;
  }
  
  public final void b(ajv paramajv)
  {
    paramajv = b;
    Object localObject = a(null, null);
    a.clear();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      zp.a locala = (zp.a)((Iterator)localObject).next();
      if (!locala.a()) {
        a.put(b, Long.valueOf(c));
      }
    }
  }
  
  public final zw[] b()
  {
    return aan.a.values();
  }
  
  public final String c()
  {
    return a;
  }
  
  public final String d()
  {
    String str = "_id INTEGER PRIMARY KEY";
    aan.a[] arrayOfa = aan.a.values();
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      aan.a locala = arrayOfa[i];
      str = str + "," + aan.a.a(locala) + " " + aan.a.b(locala).toString();
      i += 1;
    }
    return str;
  }
  
  static enum a
    implements zw
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
 * Qualified Name:     aan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */