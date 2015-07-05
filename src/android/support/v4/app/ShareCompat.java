package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.text.Html;
import android.text.Spanned;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

public final class ShareCompat
{
  public static final String EXTRA_CALLING_ACTIVITY = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
  public static final String EXTRA_CALLING_PACKAGE = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
  private static ShareCompatImpl IMPL = new ShareCompatImplBase();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      IMPL = new ShareCompatImplJB();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new ShareCompatImplICS();
      return;
    }
  }
  
  private static void configureMenuItem(Menu paramMenu, int paramInt, IntentBuilder paramIntentBuilder)
  {
    paramMenu = paramMenu.findItem(paramInt);
    if (paramMenu == null) {
      throw new IllegalArgumentException("Could not find menu item with id " + paramInt + " in the supplied menu");
    }
    IMPL.configureMenuItem(paramMenu, paramIntentBuilder);
  }
  
  private static void configureMenuItem(MenuItem paramMenuItem, IntentBuilder paramIntentBuilder)
  {
    IMPL.configureMenuItem(paramMenuItem, paramIntentBuilder);
  }
  
  public static ComponentName getCallingActivity(Activity paramActivity)
  {
    ComponentName localComponentName2 = paramActivity.getCallingActivity();
    ComponentName localComponentName1 = localComponentName2;
    if (localComponentName2 == null) {
      localComponentName1 = (ComponentName)paramActivity.getIntent().getParcelableExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY");
    }
    return localComponentName1;
  }
  
  public static String getCallingPackage(Activity paramActivity)
  {
    String str2 = paramActivity.getCallingPackage();
    String str1 = str2;
    if (str2 == null) {
      str1 = paramActivity.getIntent().getStringExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE");
    }
    return str1;
  }
  
  public static final class IntentBuilder
  {
    Activity mActivity;
    private ArrayList<String> mBccAddresses;
    private ArrayList<String> mCcAddresses;
    private CharSequence mChooserTitle;
    private Intent mIntent;
    private ArrayList<Uri> mStreams;
    private ArrayList<String> mToAddresses;
    
    private IntentBuilder(Activity paramActivity)
    {
      mActivity = paramActivity;
      mIntent = new Intent().setAction("android.intent.action.SEND");
      mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", paramActivity.getPackageName());
      mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", paramActivity.getComponentName());
      mIntent.addFlags(524288);
    }
    
    private IntentBuilder addEmailBcc(String paramString)
    {
      if (mBccAddresses == null) {
        mBccAddresses = new ArrayList();
      }
      mBccAddresses.add(paramString);
      return this;
    }
    
    private IntentBuilder addEmailBcc(String[] paramArrayOfString)
    {
      combineArrayExtra("android.intent.extra.BCC", paramArrayOfString);
      return this;
    }
    
    private IntentBuilder addEmailCc(String paramString)
    {
      if (mCcAddresses == null) {
        mCcAddresses = new ArrayList();
      }
      mCcAddresses.add(paramString);
      return this;
    }
    
    private IntentBuilder addEmailCc(String[] paramArrayOfString)
    {
      combineArrayExtra("android.intent.extra.CC", paramArrayOfString);
      return this;
    }
    
    private IntentBuilder addEmailTo(String paramString)
    {
      if (mToAddresses == null) {
        mToAddresses = new ArrayList();
      }
      mToAddresses.add(paramString);
      return this;
    }
    
    private IntentBuilder addEmailTo(String[] paramArrayOfString)
    {
      combineArrayExtra("android.intent.extra.EMAIL", paramArrayOfString);
      return this;
    }
    
    private IntentBuilder addStream(Uri paramUri)
    {
      Uri localUri = (Uri)mIntent.getParcelableExtra("android.intent.extra.STREAM");
      if (localUri == null)
      {
        if (!mIntent.getAction().equals("android.intent.action.SEND")) {
          mIntent.setAction("android.intent.action.SEND");
        }
        mStreams = null;
        mIntent.putExtra("android.intent.extra.STREAM", paramUri);
        return this;
      }
      if (mStreams == null) {
        mStreams = new ArrayList();
      }
      if (localUri != null)
      {
        mIntent.removeExtra("android.intent.extra.STREAM");
        mStreams.add(localUri);
      }
      mStreams.add(paramUri);
      return this;
    }
    
    private void combineArrayExtra(String paramString, ArrayList<String> paramArrayList)
    {
      String[] arrayOfString1 = mIntent.getStringArrayExtra(paramString);
      if (arrayOfString1 != null) {}
      for (int i = arrayOfString1.length;; i = 0)
      {
        String[] arrayOfString2 = new String[paramArrayList.size() + i];
        paramArrayList.toArray(arrayOfString2);
        if (arrayOfString1 != null) {
          System.arraycopy(arrayOfString1, 0, arrayOfString2, paramArrayList.size(), i);
        }
        mIntent.putExtra(paramString, arrayOfString2);
        return;
      }
    }
    
    private void combineArrayExtra(String paramString, String[] paramArrayOfString)
    {
      Intent localIntent = getIntent();
      String[] arrayOfString1 = localIntent.getStringArrayExtra(paramString);
      if (arrayOfString1 != null) {}
      for (int i = arrayOfString1.length;; i = 0)
      {
        String[] arrayOfString2 = new String[paramArrayOfString.length + i];
        if (arrayOfString1 != null) {
          System.arraycopy(arrayOfString1, 0, arrayOfString2, 0, i);
        }
        System.arraycopy(paramArrayOfString, 0, arrayOfString2, i, paramArrayOfString.length);
        localIntent.putExtra(paramString, arrayOfString2);
        return;
      }
    }
    
    private static IntentBuilder from(Activity paramActivity)
    {
      return new IntentBuilder(paramActivity);
    }
    
    private Activity getActivity()
    {
      return mActivity;
    }
    
    private IntentBuilder setChooserTitle(int paramInt)
    {
      mChooserTitle = mActivity.getText(paramInt);
      return this;
    }
    
    private IntentBuilder setChooserTitle(CharSequence paramCharSequence)
    {
      mChooserTitle = paramCharSequence;
      return this;
    }
    
    private IntentBuilder setEmailBcc(String[] paramArrayOfString)
    {
      mIntent.putExtra("android.intent.extra.BCC", paramArrayOfString);
      return this;
    }
    
    private IntentBuilder setEmailCc(String[] paramArrayOfString)
    {
      mIntent.putExtra("android.intent.extra.CC", paramArrayOfString);
      return this;
    }
    
    private IntentBuilder setEmailTo(String[] paramArrayOfString)
    {
      if (mToAddresses != null) {
        mToAddresses = null;
      }
      mIntent.putExtra("android.intent.extra.EMAIL", paramArrayOfString);
      return this;
    }
    
    private IntentBuilder setHtmlText(String paramString)
    {
      mIntent.putExtra("android.intent.extra.HTML_TEXT", paramString);
      if (!mIntent.hasExtra("android.intent.extra.TEXT"))
      {
        paramString = Html.fromHtml(paramString);
        mIntent.putExtra("android.intent.extra.TEXT", paramString);
      }
      return this;
    }
    
    private IntentBuilder setStream(Uri paramUri)
    {
      if (!mIntent.getAction().equals("android.intent.action.SEND")) {
        mIntent.setAction("android.intent.action.SEND");
      }
      mStreams = null;
      mIntent.putExtra("android.intent.extra.STREAM", paramUri);
      return this;
    }
    
    private IntentBuilder setSubject(String paramString)
    {
      mIntent.putExtra("android.intent.extra.SUBJECT", paramString);
      return this;
    }
    
    private IntentBuilder setText(CharSequence paramCharSequence)
    {
      mIntent.putExtra("android.intent.extra.TEXT", paramCharSequence);
      return this;
    }
    
    private IntentBuilder setType(String paramString)
    {
      mIntent.setType(paramString);
      return this;
    }
    
    private void startChooser()
    {
      mActivity.startActivity(createChooserIntent());
    }
    
    public final Intent createChooserIntent()
    {
      return Intent.createChooser(getIntent(), mChooserTitle);
    }
    
    public final Intent getIntent()
    {
      if (mToAddresses != null)
      {
        combineArrayExtra("android.intent.extra.EMAIL", mToAddresses);
        mToAddresses = null;
      }
      if (mCcAddresses != null)
      {
        combineArrayExtra("android.intent.extra.CC", mCcAddresses);
        mCcAddresses = null;
      }
      if (mBccAddresses != null)
      {
        combineArrayExtra("android.intent.extra.BCC", mBccAddresses);
        mBccAddresses = null;
      }
      int i;
      if ((mStreams != null) && (mStreams.size() > 1))
      {
        i = 1;
        boolean bool = mIntent.getAction().equals("android.intent.action.SEND_MULTIPLE");
        if ((i == 0) && (bool))
        {
          mIntent.setAction("android.intent.action.SEND");
          if ((mStreams == null) || (mStreams.isEmpty())) {
            break label219;
          }
          mIntent.putExtra("android.intent.extra.STREAM", (Parcelable)mStreams.get(0));
          label155:
          mStreams = null;
        }
        if ((i != 0) && (!bool))
        {
          mIntent.setAction("android.intent.action.SEND_MULTIPLE");
          if ((mStreams == null) || (mStreams.isEmpty())) {
            break label231;
          }
          mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", mStreams);
        }
      }
      for (;;)
      {
        return mIntent;
        i = 0;
        break;
        label219:
        mIntent.removeExtra("android.intent.extra.STREAM");
        break label155;
        label231:
        mIntent.removeExtra("android.intent.extra.STREAM");
      }
    }
  }
  
  public static final class IntentReader
  {
    private static final String TAG = "IntentReader";
    private Activity mActivity;
    private ComponentName mCallingActivity;
    private String mCallingPackage;
    private Intent mIntent;
    private ArrayList<Uri> mStreams;
    
    private IntentReader(Activity paramActivity)
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
          return ShareCompat.IMPL.escapeHtml(localCharSequence);
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
  
  static abstract interface ShareCompatImpl
  {
    public abstract void configureMenuItem(MenuItem paramMenuItem, ShareCompat.IntentBuilder paramIntentBuilder);
    
    public abstract String escapeHtml(CharSequence paramCharSequence);
  }
  
  static class ShareCompatImplBase
    implements ShareCompat.ShareCompatImpl
  {
    private static void withinStyle$115f5926(StringBuilder paramStringBuilder, CharSequence paramCharSequence, int paramInt)
    {
      int i = 0;
      if (i < paramInt)
      {
        char c = paramCharSequence.charAt(i);
        if (c == '<') {
          paramStringBuilder.append("&lt;");
        }
        for (;;)
        {
          i += 1;
          break;
          if (c == '>')
          {
            paramStringBuilder.append("&gt;");
          }
          else if (c == '&')
          {
            paramStringBuilder.append("&amp;");
          }
          else if ((c > '~') || (c < ' '))
          {
            paramStringBuilder.append("&#" + c + ";");
          }
          else if (c == ' ')
          {
            while ((i + 1 < paramInt) && (paramCharSequence.charAt(i + 1) == ' '))
            {
              paramStringBuilder.append("&nbsp;");
              i += 1;
            }
            paramStringBuilder.append(' ');
          }
          else
          {
            paramStringBuilder.append(c);
          }
        }
      }
    }
    
    public void configureMenuItem(MenuItem paramMenuItem, ShareCompat.IntentBuilder paramIntentBuilder)
    {
      paramMenuItem.setIntent(paramIntentBuilder.createChooserIntent());
    }
    
    public String escapeHtml(CharSequence paramCharSequence)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      withinStyle$115f5926(localStringBuilder, paramCharSequence, paramCharSequence.length());
      return localStringBuilder.toString();
    }
  }
  
  static class ShareCompatImplICS
    extends ShareCompat.ShareCompatImplBase
  {
    public final void configureMenuItem(MenuItem paramMenuItem, ShareCompat.IntentBuilder paramIntentBuilder)
    {
      ShareCompatICS.configureMenuItem(paramMenuItem, mActivity, paramIntentBuilder.getIntent());
      if (shouldAddChooserIntent(paramMenuItem)) {
        paramMenuItem.setIntent(paramIntentBuilder.createChooserIntent());
      }
    }
    
    boolean shouldAddChooserIntent(MenuItem paramMenuItem)
    {
      return !paramMenuItem.hasSubMenu();
    }
  }
  
  static final class ShareCompatImplJB
    extends ShareCompat.ShareCompatImplICS
  {
    public final String escapeHtml(CharSequence paramCharSequence)
    {
      return ShareCompatJB.escapeHtml(paramCharSequence);
    }
    
    final boolean shouldAddChooserIntent(MenuItem paramMenuItem)
    {
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ShareCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */