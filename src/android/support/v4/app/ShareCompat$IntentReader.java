package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Html;
import android.text.Spanned;
import java.util.ArrayList;

public final class ShareCompat$IntentReader
{
  private static final String TAG = "IntentReader";
  private Activity mActivity;
  private ComponentName mCallingActivity;
  private String mCallingPackage;
  private Intent mIntent;
  private ArrayList<Uri> mStreams;
  
  private ShareCompat$IntentReader(Activity paramActivity)
  {
    mActivity = paramActivity;
    mIntent = paramActivity.getIntent();
    mCallingPackage = ShareCompat.getCallingPackage(paramActivity);
    mCallingActivity = ShareCompat.getCallingActivity(paramActivity);
  }
  
  private static IntentReader from(Activity paramActivity)
  {
    return new IntentReader(paramActivity);
  }
  
  private ComponentName getCallingActivity()
  {
    return mCallingActivity;
  }
  
  private Drawable getCallingActivityIcon()
  {
    if (mCallingActivity == null) {
      return null;
    }
    Object localObject = mActivity.getPackageManager();
    try
    {
      localObject = ((PackageManager)localObject).getActivityIcon(mCallingActivity);
      return (Drawable)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  private Drawable getCallingApplicationIcon()
  {
    if (mCallingPackage == null) {
      return null;
    }
    Object localObject = mActivity.getPackageManager();
    try
    {
      localObject = ((PackageManager)localObject).getApplicationIcon(mCallingPackage);
      return (Drawable)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  private CharSequence getCallingApplicationLabel()
  {
    if (mCallingPackage == null) {
      return null;
    }
    Object localObject = mActivity.getPackageManager();
    try
    {
      localObject = ((PackageManager)localObject).getApplicationLabel(((PackageManager)localObject).getApplicationInfo(mCallingPackage, 0));
      return (CharSequence)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  private String getCallingPackage()
  {
    return mCallingPackage;
  }
  
  private String[] getEmailBcc()
  {
    return mIntent.getStringArrayExtra("android.intent.extra.BCC");
  }
  
  private String[] getEmailCc()
  {
    return mIntent.getStringArrayExtra("android.intent.extra.CC");
  }
  
  private String[] getEmailTo()
  {
    return mIntent.getStringArrayExtra("android.intent.extra.EMAIL");
  }
  
  private String getHtmlText()
  {
    String str = mIntent.getStringExtra("android.intent.extra.HTML_TEXT");
    if (str == null)
    {
      CharSequence localCharSequence = mIntent.getCharSequenceExtra("android.intent.extra.TEXT");
      if ((localCharSequence instanceof Spanned)) {
        return Html.toHtml((Spanned)localCharSequence);
      }
      if (localCharSequence != null) {
        return ShareCompat.access$000().escapeHtml(localCharSequence);
      }
    }
    return str;
  }
  
  private Uri getStream()
  {
    return (Uri)mIntent.getParcelableExtra("android.intent.extra.STREAM");
  }
  
  private Uri getStream(int paramInt)
  {
    if ((mStreams == null) && (isMultipleShare())) {
      mStreams = mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
    }
    if (mStreams != null) {
      return (Uri)mStreams.get(paramInt);
    }
    if (paramInt == 0) {
      return (Uri)mIntent.getParcelableExtra("android.intent.extra.STREAM");
    }
    StringBuilder localStringBuilder = new StringBuilder("Stream items available: ");
    if ((mStreams == null) && (isMultipleShare())) {
      mStreams = mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
    }
    int i;
    if (mStreams != null) {
      i = mStreams.size();
    }
    for (;;)
    {
      throw new IndexOutOfBoundsException(i + " index requested: " + paramInt);
      if (mIntent.hasExtra("android.intent.extra.STREAM")) {
        i = 1;
      } else {
        i = 0;
      }
    }
  }
  
  private int getStreamCount()
  {
    if ((mStreams == null) && (isMultipleShare())) {
      mStreams = mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
    }
    if (mStreams != null) {
      return mStreams.size();
    }
    if (mIntent.hasExtra("android.intent.extra.STREAM")) {
      return 1;
    }
    return 0;
  }
  
  private String getSubject()
  {
    return mIntent.getStringExtra("android.intent.extra.SUBJECT");
  }
  
  private CharSequence getText()
  {
    return mIntent.getCharSequenceExtra("android.intent.extra.TEXT");
  }
  
  private String getType()
  {
    return mIntent.getType();
  }
  
  private boolean isMultipleShare()
  {
    return "android.intent.action.SEND_MULTIPLE".equals(mIntent.getAction());
  }
  
  private boolean isShareIntent()
  {
    String str = mIntent.getAction();
    return ("android.intent.action.SEND".equals(str)) || ("android.intent.action.SEND_MULTIPLE".equals(str));
  }
  
  private boolean isSingleShare()
  {
    return "android.intent.action.SEND".equals(mIntent.getAction());
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ShareCompat.IntentReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */