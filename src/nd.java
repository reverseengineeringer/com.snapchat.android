import java.util.concurrent.TimeUnit;

public final class nd
{
  public long filterCount;
  final String filterGeofilterId;
  public long filterIndexCount;
  public long filterIndexPos;
  public final cn viewTimeStopwatch = new cn();
  
  public nd(String paramString)
  {
    filterGeofilterId = paramString;
  }
  
  public final void a()
  {
    if (viewTimeStopwatch.a) {
      viewTimeStopwatch.b();
    }
  }
  
  public final String toString()
  {
    return "GeofilterSwipeMetaDataItem{filterGeofilterId='" + filterGeofilterId + '\'' + ", viewTimeStopwatch isRunning=" + viewTimeStopwatch.a + ", viewTimeStopwatch=" + viewTimeStopwatch.a(TimeUnit.MILLISECONDS) + ", filterIndexPos=" + filterIndexPos + ", filterIndexCount=" + filterIndexCount + ", filterCount=" + filterCount + '}';
  }
}

/* Location:
 * Qualified Name:     nd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */