package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

class TagManager$3
  implements ComponentCallbacks2
{
  TagManager$3(TagManager paramTagManager) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory() {}
  
  public void onTrimMemory(int paramInt)
  {
    if (paramInt == 20) {
      zzaAT.dispatch();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.TagManager.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */