import android.os.AsyncTask;
import com.snapchat.android.Timber;

public final class bgg$1
  extends AsyncTask<Void, Void, fl>
{
  public bgg$1(bgg parambgg, bgj parambgj, bgh parambgh) {}
  
  private fl a()
  {
    try
    {
      fl localfl = val$svgLoader.a();
      return localfl;
    }
    catch (Exception localException)
    {
      Timber.f(bgg.a(), "Unable to load SVG! Error: " + localException, new Object[0]);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bgg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */