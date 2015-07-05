import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

public abstract class adj$c
  extends ContentObserver
{
  public adj$c(Handler paramHandler)
  {
    super(paramHandler);
  }
  
  protected abstract void a();
  
  public void onChange(boolean paramBoolean)
  {
    a();
  }
  
  public void onChange(boolean paramBoolean, Uri paramUri)
  {
    a();
  }
}

/* Location:
 * Qualified Name:     adj.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */