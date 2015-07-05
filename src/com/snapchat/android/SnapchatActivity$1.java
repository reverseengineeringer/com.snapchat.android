package com.snapchat.android;

import ajv;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import mi;
import nf;

final class SnapchatActivity$1
  implements LoaderManager.LoaderCallbacks<ajv>
{
  SnapchatActivity$1(SnapchatActivity paramSnapchatActivity) {}
  
  public final Loader<ajv> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new mi(a, nf.a());
  }
  
  public final void onLoaderReset(Loader<ajv> paramLoader) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapchatActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */