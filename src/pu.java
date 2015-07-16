import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

public final class pu
  extends pk
{
  private static final String CAPTCHA_ID_PARAM = "captcha_id";
  private static final String CAPTCHA_SOLUTION_PARAM = "captcha_solution";
  private static final String TASK_NAME = "SolveCaptchaTask";
  private String mCaptchaId;
  private pu.a mInterface;
  private List<Boolean> mSelectedCaptchas;
  
  public pu(String paramString, List<Boolean> paramList, pu.a parama)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    if (paramList.size() != 9) {
      throw new IllegalArgumentException();
    }
    mCaptchaId = paramString;
    mSelectedCaptchas = paramList;
    mInterface = parama;
  }
  
  protected final String a()
  {
    return "/bq/solve_captcha";
  }
  
  public final void a(String paramString, int paramInt)
  {
    super.a(paramString, paramInt);
    if (mInterface != null)
    {
      if (paramString.equals(Integer.toString(403))) {
        mInterface.t_();
      }
    }
    else {
      return;
    }
    mInterface.d();
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    Object localObject2 = akr.l();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = akr.G();
    }
    localBundle.putString("username", (String)localObject1);
    localBundle.putString("captcha_id", mCaptchaId);
    localObject2 = new StringBuilder();
    Iterator localIterator = mSelectedCaptchas.iterator();
    if (localIterator.hasNext())
    {
      if (((Boolean)localIterator.next()).booleanValue()) {}
      for (localObject1 = "1";; localObject1 = "0")
      {
        ((StringBuilder)localObject2).append((String)localObject1);
        break;
      }
    }
    localBundle.putString("captcha_solution", ((StringBuilder)localObject2).toString());
    return localBundle;
  }
  
  public final void b(alp paramalp)
  {
    super.b(paramalp);
    if (mInterface != null) {
      mInterface.s_();
    }
  }
  
  protected final String c()
  {
    return "SolveCaptchaTask";
  }
  
  public static abstract interface a
  {
    public abstract void d();
    
    public abstract void s_();
    
    public abstract void t_();
  }
}

/* Location:
 * Qualified Name:     pu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */