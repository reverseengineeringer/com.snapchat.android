package com.snapchat.android;

import akp;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import mz;
import nw;

final class SnapchatActivity$1
  implements LoaderManager.LoaderCallbacks<akp>
{
  SnapchatActivity$1(SnapchatActivity paramSnapchatActivity) {}
  
  public final Loader<akp> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new mz(a, nw.a());
  }
  
  public final void onLoaderReset(Loader<akp> paramLoader) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapchatActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */