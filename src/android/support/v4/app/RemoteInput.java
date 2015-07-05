package android.support.v4.app;

import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;

public final class RemoteInput
  extends RemoteInputCompatBase.RemoteInput
{
  public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
  public static final RemoteInputCompatBase.RemoteInput.Factory FACTORY;
  private static final Impl IMPL;
  public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
  private static final String TAG = "RemoteInput";
  private final boolean mAllowFreeFormInput;
  private final CharSequence[] mChoices;
  private final Bundle mExtras;
  private final CharSequence mLabel;
  private final String mResultKey;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 20) {
      IMPL = new ImplApi20();
    }
    for (;;)
    {
      FACTORY = new RemoteInputCompatBase.RemoteInput.Factory()
      {
        private static RemoteInput build(String paramAnonymousString, CharSequence paramAnonymousCharSequence, CharSequence[] paramAnonymousArrayOfCharSequence, boolean paramAnonymousBoolean, Bundle paramAnonymousBundle)
        {
          return new RemoteInput(paramAnonymousString, paramAnonymousCharSequence, paramAnonymousArrayOfCharSequence, paramAnonymousBoolean, paramAnonymousBundle);
        }
        
        private static RemoteInput[] newArray(int paramAnonymousInt)
        {
          return new RemoteInput[paramAnonymousInt];
        }
      };
      return;
      if (Build.VERSION.SDK_INT >= 16) {
        IMPL = new ImplJellybean();
      } else {
        IMPL = new ImplBase();
      }
    }
  }
  
  RemoteInput(String paramString, CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence, boolean paramBoolean, Bundle paramBundle)
  {
    mResultKey = paramString;
    mLabel = paramCharSequence;
    mChoices = paramArrayOfCharSequence;
    mAllowFreeFormInput = paramBoolean;
    mExtras = paramBundle;
  }
  
  private static void addResultsToIntent(RemoteInput[] paramArrayOfRemoteInput, Intent paramIntent, Bundle paramBundle)
  {
    IMPL.addResultsToIntent(paramArrayOfRemoteInput, paramIntent, paramBundle);
  }
  
  private static Bundle getResultsFromIntent(Intent paramIntent)
  {
    return IMPL.getResultsFromIntent(paramIntent);
  }
  
  public final boolean getAllowFreeFormInput()
  {
    return mAllowFreeFormInput;
  }
  
  public final CharSequence[] getChoices()
  {
    return mChoices;
  }
  
  public final Bundle getExtras()
  {
    return mExtras;
  }
  
  public final CharSequence getLabel()
  {
    return mLabel;
  }
  
  public final String getResultKey()
  {
    return mResultKey;
  }
  
  public static final class Builder
  {
    private boolean mAllowFreeFormInput = true;
    private CharSequence[] mChoices;
    private Bundle mExtras = new Bundle();
    private CharSequence mLabel;
    private final String mResultKey;
    
    private Builder(String paramString)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("Result key can't be null");
      }
      mResultKey = paramString;
    }
    
    private Builder addExtras(Bundle paramBundle)
    {
      if (paramBundle != null) {
        mExtras.putAll(paramBundle);
      }
      return this;
    }
    
    private RemoteInput build()
    {
      return new RemoteInput(mResultKey, mLabel, mChoices, mAllowFreeFormInput, mExtras);
    }
    
    private Bundle getExtras()
    {
      return mExtras;
    }
    
    private Builder setAllowFreeFormInput(boolean paramBoolean)
    {
      mAllowFreeFormInput = paramBoolean;
      return this;
    }
    
    private Builder setChoices(CharSequence[] paramArrayOfCharSequence)
    {
      mChoices = paramArrayOfCharSequence;
      return this;
    }
    
    private Builder setLabel(CharSequence paramCharSequence)
    {
      mLabel = paramCharSequence;
      return this;
    }
  }
  
  static abstract interface Impl
  {
    public abstract void addResultsToIntent(RemoteInput[] paramArrayOfRemoteInput, Intent paramIntent, Bundle paramBundle);
    
    public abstract Bundle getResultsFromIntent(Intent paramIntent);
  }
  
  static final class ImplApi20
    implements RemoteInput.Impl
  {
    public final void addResultsToIntent(RemoteInput[] paramArrayOfRemoteInput, Intent paramIntent, Bundle paramBundle)
    {
      RemoteInputCompatApi20.addResultsToIntent(paramArrayOfRemoteInput, paramIntent, paramBundle);
    }
    
    public final Bundle getResultsFromIntent(Intent paramIntent)
    {
      return RemoteInputCompatApi20.getResultsFromIntent(paramIntent);
    }
  }
  
  static final class ImplBase
    implements RemoteInput.Impl
  {
    public final void addResultsToIntent(RemoteInput[] paramArrayOfRemoteInput, Intent paramIntent, Bundle paramBundle) {}
    
    public final Bundle getResultsFromIntent(Intent paramIntent)
    {
      return null;
    }
  }
  
  static final class ImplJellybean
    implements RemoteInput.Impl
  {
    public final void addResultsToIntent(RemoteInput[] paramArrayOfRemoteInput, Intent paramIntent, Bundle paramBundle)
    {
      RemoteInputCompatJellybean.addResultsToIntent(paramArrayOfRemoteInput, paramIntent, paramBundle);
    }
    
    public final Bundle getResultsFromIntent(Intent paramIntent)
    {
      return RemoteInputCompatJellybean.getResultsFromIntent(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.RemoteInput
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */