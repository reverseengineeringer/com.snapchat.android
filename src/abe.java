import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.table.UpdateSnapsAnalyticsTable;
import javax.inject.Provider;

public final class abe
  implements buj<UpdateSnapsAnalyticsTable>
{
  private final buj<DbTable<akq>> b;
  private final Provider<UpdateSnapsAnalyticsPlatform> c;
  
  static
  {
    if (!abe.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private abe(buj<DbTable<akq>> parambuj, Provider<UpdateSnapsAnalyticsPlatform> paramProvider)
  {
    if ((!a) && (parambuj == null)) {
      throw new AssertionError();
    }
    b = parambuj;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static buj<UpdateSnapsAnalyticsTable> a(buj<DbTable<akq>> parambuj, Provider<UpdateSnapsAnalyticsPlatform> paramProvider)
  {
    return new abe(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     abe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */