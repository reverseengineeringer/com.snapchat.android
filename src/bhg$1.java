import android.os.AsyncTask;

public final class bhg$1
  extends AsyncTask<Void, Void, fu>
{
  public bhg$1(bhg parambhg, bhj parambhj, bhh parambhh) {}
  
  private fu a()
  {
    try
    {
      fu localfu = val$svgLoader.a();
      return localfu;
    }
    catch (Exception localException)
    {
      bhg.a();
      new StringBuilder("Unable to load SVG! Error: ").append(localException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bhg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */