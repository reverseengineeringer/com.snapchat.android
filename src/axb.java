import android.os.AsyncTask;

public final class axb
  extends AsyncTask<String, Void, awm>
{
  private final axd mBitmapDecoder;
  private final aww[] mCallbacks;
  public final awv mRequest;
  
  public axb(@chc awv paramawv, axd paramaxd, @chc aww... paramVarArgs)
  {
    mRequest = paramawv;
    mBitmapDecoder = paramaxd;
    mCallbacks = paramVarArgs;
  }
  
  public static final class a
  {
    public static axb a(awv paramawv, axd paramaxd, aww[] paramArrayOfaww)
    {
      return new axb(paramawv, paramaxd, paramArrayOfaww);
    }
  }
}

/* Location:
 * Qualified Name:     axb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */