import java.util.concurrent.TimeUnit;

public final class nu
{
  public long filterCount;
  final String filterGeofilterId;
  public long filterIndexCount;
  public long filterIndexPos;
  public final cs viewTimeStopwatch = new cs();
  
  public nu(String paramString)
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
 * Qualified Name:     nu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */