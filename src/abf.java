import android.content.ContentValues;
import android.text.TextUtils;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.VerifiedDeviceSchema;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.model.Snap;
import java.util.Collection;
import java.util.HashMap;

public final class abf
  extends DbTable
{
  public static final HashMap<String, String> a;
  public static final String[] b;
  private static abf c;
  
  static
  {
    int j = 0;
    VerifiedDeviceSchema[] arrayOfVerifiedDeviceSchema = VerifiedDeviceSchema.values();
    int k = arrayOfVerifiedDeviceSchema.length;
    b = new String[k];
    int i = 0;
    while (i < k)
    {
      b[i] = arrayOfVerifiedDeviceSchema[i].getColumnName();
      i += 1;
    }
    a = new HashMap();
    arrayOfVerifiedDeviceSchema = VerifiedDeviceSchema.values();
    k = arrayOfVerifiedDeviceSchema.length;
    i = j;
    while (i < k)
    {
      VerifiedDeviceSchema localVerifiedDeviceSchema = arrayOfVerifiedDeviceSchema[i];
      a.put(localVerifiedDeviceSchema.getColumnName(), localVerifiedDeviceSchema.getColumnName());
      i += 1;
    }
  }
  
  public static abf a()
  {
    try
    {
      if (c == null) {
        c = new abf();
      }
      abf localabf = c;
      return localabf;
    }
    finally {}
  }
  
  protected final ContentValues a(Object paramObject)
  {
    return null;
  }
  
  protected final Collection<Snap> a(ajv paramajv)
  {
    return null;
  }
  
  public final void b(ajv paramajv) {}
  
  public final zw[] b()
  {
    return VerifiedDeviceSchema.values();
  }
  
  public final String c()
  {
    return "VerifiedDeviceTable";
  }
  
  public final void c(ajv paramajv) {}
  
  public final String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    VerifiedDeviceSchema[] arrayOfVerifiedDeviceSchema = VerifiedDeviceSchema.values();
    int j = arrayOfVerifiedDeviceSchema.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfVerifiedDeviceSchema[i];
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(((VerifiedDeviceSchema)localObject).getColumnName() + " " + ((VerifiedDeviceSchema)localObject).getDataType().toString());
      localObject = ((VerifiedDeviceSchema)localObject).getConstraints();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localStringBuilder.append(" ");
        localStringBuilder.append((String)localObject);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     abf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */