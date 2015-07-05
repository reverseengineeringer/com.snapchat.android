package com.brightcove.player.util;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;

public class StringUtil
{
  public static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.trim().isEmpty());
  }
  
  public static String join(List<String> paramList, String paramString)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramList.size())
    {
      localStringBuilder.append((String)paramList.get(i));
      if (i < paramList.size() - 1) {
        localStringBuilder.append(paramString);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String join(String[] paramArrayOfString, String paramString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      return null;
    }
    return join(Arrays.asList(paramArrayOfString), paramString);
  }
  
  public static CharSequence replaceAll(CharSequence paramCharSequence, String[] paramArrayOfString, CharSequence[] paramArrayOfCharSequence)
  {
    paramCharSequence = new SpannableStringBuilder(paramCharSequence);
    for (;;)
    {
      int k = paramArrayOfString.length;
      int i = 0;
      int j = 0;
      while (i < k)
      {
        String str = paramArrayOfString[i];
        int m = TextUtils.indexOf(paramCharSequence, str);
        if (m >= 0)
        {
          j = 1;
          paramCharSequence.setSpan(str, m, str.length() + m, 33);
        }
        i += 1;
      }
      if (j == 0) {
        break;
      }
      i = 0;
      while (i < paramArrayOfString.length)
      {
        j = paramCharSequence.getSpanStart(paramArrayOfString[i]);
        k = paramCharSequence.getSpanEnd(paramArrayOfString[i]);
        if (j >= 0) {
          paramCharSequence.replace(j, k, paramArrayOfCharSequence[i]);
        }
        i += 1;
      }
    }
    return paramCharSequence;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.util.StringUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */