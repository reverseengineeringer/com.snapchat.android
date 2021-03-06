package android.support.v4.app;

import android.os.Bundle;

final class ActivityOptionsCompat$ActivityOptionsImplJB
  extends ActivityOptionsCompat
{
  private final ActivityOptionsCompatJB mImpl;
  
  ActivityOptionsCompat$ActivityOptionsImplJB(ActivityOptionsCompatJB paramActivityOptionsCompatJB)
  {
    mImpl = paramActivityOptionsCompatJB;
  }
  
  public final Bundle toBundle()
  {
    return mImpl.toBundle();
  }
  
  public final void update(ActivityOptionsCompat paramActivityOptionsCompat)
  {
    if ((paramActivityOptionsCompat instanceof ActivityOptionsImplJB))
    {
      paramActivityOptionsCompat = (ActivityOptionsImplJB)paramActivityOptionsCompat;
      mImpl.update(mImpl);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ActivityOptionsCompat.ActivityOptionsImplJB
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */