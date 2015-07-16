import android.os.AsyncTask;
import java.util.concurrent.Executor;

public class bhg
{
  private static final String TAG = bhg.class.getSimpleName();
  public final Executor mExecutor;
  
  public bhg()
  {
    this(avf.HIGH_PRIORITY_EXECUTOR);
  }
  
  private bhg(Executor paramExecutor)
  {
    mExecutor = paramExecutor;
  }
}

/* Location:
 * Qualified Name:     bhg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */