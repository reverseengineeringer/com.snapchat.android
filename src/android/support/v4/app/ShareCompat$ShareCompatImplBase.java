package android.support.v4.app;

import android.view.MenuItem;

class ShareCompat$ShareCompatImplBase
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

/* Location:
 * Qualified Name:     android.support.v4.app.ShareCompat.ShareCompatImplBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */