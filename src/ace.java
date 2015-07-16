import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.table.UpdateSnapsAnalyticsTable;
import javax.inject.Provider;

public final class ace
  implements bvk<UpdateSnapsAnalyticsTable>
{
  private final bvk<DbTable<all>> b;
  private final Provider<UpdateSnapsAnalyticsPlatform> c;
  
  static
  {
    if (!ace.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ace(bvk<DbTable<all>> parambvk, Provider<UpdateSnapsAnalyticsPlatform> paramProvider)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static bvk<UpdateSnapsAnalyticsTable> a(bvk<DbTable<all>> parambvk, Provider<UpdateSnapsAnalyticsPlatform> paramProvider)
  {
    return new ace(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ace
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */