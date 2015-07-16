import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.HttpMetricSchema;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.model.Snap;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.Collection;
import java.util.HashMap;

public final class abp
  extends DbTable
{
  public static final String[] a;
  public static final HashMap<String, String> b;
  private static abp c;
  private static final aph d;
  
  static
  {
    int j = 0;
    d = aph.a();
    HttpMetricSchema[] arrayOfHttpMetricSchema = HttpMetricSchema.values();
    int k = arrayOfHttpMetricSchema.length;
    a = new String[k];
    int i = 0;
    while (i < k)
    {
      a[i] = arrayOfHttpMetricSchema[i].getColumnName();
      i += 1;
    }
    b = new HashMap();
    arrayOfHttpMetricSchema = HttpMetricSchema.values();
    k = arrayOfHttpMetricSchema.length;
    i = j;
    while (i < k)
    {
      HttpMetricSchema localHttpMetricSchema = arrayOfHttpMetricSchema[i];
      b.put(localHttpMetricSchema.getColumnName(), localHttpMetricSchema.getColumnName());
      i += 1;
    }
  }
  
  public static long a(Context paramContext, ContentValues paramContentValues)
  {
    SQLiteDatabase localSQLiteDatabase = DatabaseHelper.a(paramContext).getWritableDatabase();
    new StringBuilder("save ").append(paramContentValues);
    long l1 = localSQLiteDatabase.insertWithOnConflict("HttpMetrics", null, paramContentValues, 5);
    if (DatabaseUtils.longForQuery(localSQLiteDatabase, "SELECT COUNT() FROM HttpMetrics", null) > 200L)
    {
      paramContentValues = HttpMetricSchema.TIMESTAMP.getColumnName();
      String str = HttpMetricSchema.TIMESTAMP.getColumnName();
      paramContentValues = localSQLiteDatabase.query("HttpMetrics", new String[] { paramContentValues }, null, null, null, null, str, "20");
      if (paramContentValues == null) {}
    }
    try
    {
      if (paramContentValues.moveToLast())
      {
        long l2 = paramContentValues.getLong(0);
        localSQLiteDatabase.delete("HttpMetrics", HttpMetricSchema.TIMESTAMP.getColumnName() + " <=?", new String[] { String.valueOf(l2) });
      }
      if (paramContentValues != null) {
        paramContentValues.close();
      }
      paramContext.getContentResolver().notifyChange(SnapchatProvider.a, null);
      return l1;
    }
    finally
    {
      if (paramContentValues != null) {
        paramContentValues.close();
      }
    }
  }
  
  public static abp a()
  {
    try
    {
      if (c == null) {
        c = new abp();
      }
      abp localabp = c;
      return localabp;
    }
    finally {}
  }
  
  public static void a(Context paramContext)
  {
    aph localaph = d;
    Intent localIntent = localaph.b(paramContext);
    localIntent.putExtra("op_code", 1005);
    localIntent.putExtra("clear", true);
    localaph.a(paramContext, localIntent);
  }
  
  public static void a(Context paramContext, long paramLong1, String paramString1, String paramString2, long paramLong2, long paramLong3, long paramLong4, String paramString3, int paramInt)
  {
    if (ReleaseManager.f())
    {
      paramString1 = abcaTIMESTAMPaMETHODaPATHaSENT_BYTESaRECEIVED_BYTESaDURATIONaSTATUS_LINEaSTATUS_CODEa;
      paramString2 = d;
      paramString3 = paramString2.b(paramContext);
      paramString3.putExtra("op_code", 1005);
      paramString3.putExtra("content_values", paramString1);
      paramString2.a(paramContext, paramString3);
    }
  }
  
  public static void a(Context paramContext, long paramLong1, String paramString1, String paramString2, long paramLong2, String paramString3)
  {
    if (ReleaseManager.f()) {
      a(paramContext, paramLong1, paramString1, paramString2, 0L, 0L, paramLong2, paramString3, 0);
    }
  }
  
  public static void b(Context paramContext)
  {
    DatabaseHelper.a(paramContext).getWritableDatabase().delete("HttpMetrics", null, null);
    paramContext.getContentResolver().notifyChange(SnapchatProvider.a, null);
  }
  
  protected final ContentValues a(Object paramObject)
  {
    return null;
  }
  
  protected final Collection<Snap> a(akp paramakp)
  {
    return null;
  }
  
  public final void b(akp paramakp) {}
  
  public final aav[] b()
  {
    return HttpMetricSchema.values();
  }
  
  public final String c()
  {
    return "HttpMetrics";
  }
  
  public final void c(akp paramakp) {}
  
  public final String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    HttpMetricSchema[] arrayOfHttpMetricSchema = HttpMetricSchema.values();
    int j = arrayOfHttpMetricSchema.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfHttpMetricSchema[i];
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(((HttpMetricSchema)localObject).getColumnName() + " " + ((HttpMetricSchema)localObject).getDataType().toString());
      localObject = ((HttpMetricSchema)localObject).getConstraints();
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
 * Qualified Name:     abp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */