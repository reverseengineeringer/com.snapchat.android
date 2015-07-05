package org.apache.commons.lang3.text.translate;

import java.io.Writer;
import java.util.HashMap;

public class LookupTranslator
  extends CharSequenceTranslator
{
  private final int longest;
  private final HashMap<String, CharSequence> lookupMap = new HashMap();
  private final int shortest;
  
  public LookupTranslator(CharSequence[]... paramVarArgs)
  {
    int j = Integer.MAX_VALUE;
    int i;
    if (paramVarArgs != null)
    {
      int i1 = paramVarArgs.length;
      int k = 0;
      i = 0;
      int m;
      for (j = Integer.MAX_VALUE; k < i1; j = m)
      {
        CharSequence[] arrayOfCharSequence = paramVarArgs[k];
        lookupMap.put(arrayOfCharSequence[0].toString(), arrayOfCharSequence[1]);
        int n = arrayOfCharSequence[0].length();
        m = j;
        if (n < j) {
          m = n;
        }
        if (n <= i) {
          break label124;
        }
        i = n;
        k += 1;
      }
    }
    for (;;)
    {
      shortest = j;
      longest = i;
      return;
      label124:
      break;
      i = 0;
    }
  }
  
  public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    int i = longest;
    if (longest + paramInt > paramCharSequence.length()) {
      i = paramCharSequence.length() - paramInt;
    }
    for (;;)
    {
      if (i >= shortest)
      {
        CharSequence localCharSequence = paramCharSequence.subSequence(paramInt, paramInt + i);
        localCharSequence = (CharSequence)lookupMap.get(localCharSequence.toString());
        if (localCharSequence != null)
        {
          paramWriter.write(localCharSequence.toString());
          return i;
        }
        i -= 1;
      }
      else
      {
        return 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.translate.LookupTranslator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */