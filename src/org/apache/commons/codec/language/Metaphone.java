package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class Metaphone
  implements StringEncoder
{
  private static final String FRONTV = "EIY";
  private static final String VARSON = "CSPTG";
  private static final String VOWELS = "AEIOU";
  private int maxCodeLen = 4;
  
  private boolean isLastChar(int paramInt1, int paramInt2)
  {
    return paramInt2 + 1 == paramInt1;
  }
  
  private boolean isNextChar(StringBuffer paramStringBuffer, int paramInt, char paramChar)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt >= 0)
    {
      bool1 = bool2;
      if (paramInt < paramStringBuffer.length() - 1)
      {
        bool1 = bool2;
        if (paramStringBuffer.charAt(paramInt + 1) == paramChar) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private boolean isPreviousChar(StringBuffer paramStringBuffer, int paramInt, char paramChar)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt > 0)
    {
      bool1 = bool2;
      if (paramInt < paramStringBuffer.length())
      {
        bool1 = bool2;
        if (paramStringBuffer.charAt(paramInt - 1) == paramChar) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private boolean isVowel(StringBuffer paramStringBuffer, int paramInt)
  {
    return "AEIOU".indexOf(paramStringBuffer.charAt(paramInt)) >= 0;
  }
  
  private boolean regionMatch(StringBuffer paramStringBuffer, int paramInt, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt >= 0)
    {
      bool1 = bool2;
      if (paramString.length() + paramInt - 1 < paramStringBuffer.length()) {
        bool1 = paramStringBuffer.substring(paramInt, paramString.length() + paramInt).equals(paramString);
      }
    }
    return bool1;
  }
  
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      throw new EncoderException("Parameter supplied to Metaphone encode is not of type java.lang.String");
    }
    return metaphone((String)paramObject);
  }
  
  public String encode(String paramString)
  {
    return metaphone(paramString);
  }
  
  public int getMaxCodeLen()
  {
    return maxCodeLen;
  }
  
  public boolean isMetaphoneEqual(String paramString1, String paramString2)
  {
    return metaphone(paramString1).equals(metaphone(paramString2));
  }
  
  public String metaphone(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return "";
    }
    if (paramString.length() == 1) {
      return paramString.toUpperCase(Locale.ENGLISH);
    }
    paramString = paramString.toUpperCase(Locale.ENGLISH).toCharArray();
    StringBuffer localStringBuffer1 = new StringBuffer(40);
    StringBuffer localStringBuffer2 = new StringBuffer(10);
    int k;
    int i;
    label140:
    char c;
    switch (paramString[0])
    {
    default: 
      localStringBuffer1.append(paramString);
      k = localStringBuffer1.length();
      i = 0;
      if ((localStringBuffer2.length() >= getMaxCodeLen()) || (i >= k)) {
        break label1307;
      }
      c = localStringBuffer1.charAt(i);
      if ((c == 'C') || (!isPreviousChar(localStringBuffer1, i, c))) {
        switch (c)
        {
        }
      }
      break;
    }
    for (;;)
    {
      int j = i + 1;
      i = j;
      if (localStringBuffer2.length() <= getMaxCodeLen()) {
        break label140;
      }
      localStringBuffer2.setLength(getMaxCodeLen());
      i = j;
      break label140;
      if (paramString[1] == 'N')
      {
        localStringBuffer1.append(paramString, 1, paramString.length - 1);
        break;
      }
      localStringBuffer1.append(paramString);
      break;
      if (paramString[1] == 'E')
      {
        localStringBuffer1.append(paramString, 1, paramString.length - 1);
        break;
      }
      localStringBuffer1.append(paramString);
      break;
      if (paramString[1] == 'R')
      {
        localStringBuffer1.append(paramString, 1, paramString.length - 1);
        break;
      }
      if (paramString[1] == 'H')
      {
        localStringBuffer1.append(paramString, 1, paramString.length - 1);
        localStringBuffer1.setCharAt(0, 'W');
        break;
      }
      localStringBuffer1.append(paramString);
      break;
      paramString[0] = 83;
      localStringBuffer1.append(paramString);
      break;
      if (i == 0)
      {
        localStringBuffer2.append(c);
        continue;
        if ((!isPreviousChar(localStringBuffer1, i, 'M')) || (!isLastChar(k, i)))
        {
          localStringBuffer2.append(c);
          continue;
          if ((!isPreviousChar(localStringBuffer1, i, 'S')) || (isLastChar(k, i)) || ("EIY".indexOf(localStringBuffer1.charAt(i + 1)) < 0)) {
            if (regionMatch(localStringBuffer1, i, "CIA"))
            {
              localStringBuffer2.append('X');
            }
            else if ((!isLastChar(k, i)) && ("EIY".indexOf(localStringBuffer1.charAt(i + 1)) >= 0))
            {
              localStringBuffer2.append('S');
            }
            else if ((isPreviousChar(localStringBuffer1, i, 'S')) && (isNextChar(localStringBuffer1, i, 'H')))
            {
              localStringBuffer2.append('K');
            }
            else if (isNextChar(localStringBuffer1, i, 'H'))
            {
              if ((i == 0) && (k >= 3) && (isVowel(localStringBuffer1, 2))) {
                localStringBuffer2.append('K');
              } else {
                localStringBuffer2.append('X');
              }
            }
            else
            {
              localStringBuffer2.append('K');
              continue;
              if ((!isLastChar(k, i + 1)) && (isNextChar(localStringBuffer1, i, 'G')) && ("EIY".indexOf(localStringBuffer1.charAt(i + 2)) >= 0))
              {
                localStringBuffer2.append('J');
                i += 2;
              }
              else
              {
                localStringBuffer2.append('T');
                continue;
                if (((!isLastChar(k, i + 1)) || (!isNextChar(localStringBuffer1, i, 'H'))) && ((isLastChar(k, i + 1)) || (!isNextChar(localStringBuffer1, i, 'H')) || (isVowel(localStringBuffer1, i + 2))) && ((i <= 0) || ((!regionMatch(localStringBuffer1, i, "GN")) && (!regionMatch(localStringBuffer1, i, "GNED")))))
                {
                  if (isPreviousChar(localStringBuffer1, i, 'G')) {}
                  for (j = 1;; j = 0)
                  {
                    if ((isLastChar(k, i)) || ("EIY".indexOf(localStringBuffer1.charAt(i + 1)) < 0) || (j != 0)) {
                      break label941;
                    }
                    localStringBuffer2.append('J');
                    break;
                  }
                  label941:
                  localStringBuffer2.append('K');
                  continue;
                  if ((!isLastChar(k, i)) && ((i <= 0) || ("CSPTG".indexOf(localStringBuffer1.charAt(i - 1)) < 0)) && (isVowel(localStringBuffer1, i + 1)))
                  {
                    localStringBuffer2.append('H');
                    continue;
                    localStringBuffer2.append(c);
                    continue;
                    if (i > 0)
                    {
                      if (!isPreviousChar(localStringBuffer1, i, 'C')) {
                        localStringBuffer2.append(c);
                      }
                    }
                    else
                    {
                      localStringBuffer2.append(c);
                      continue;
                      if (isNextChar(localStringBuffer1, i, 'H'))
                      {
                        localStringBuffer2.append('F');
                      }
                      else
                      {
                        localStringBuffer2.append(c);
                        continue;
                        localStringBuffer2.append('K');
                        continue;
                        if ((regionMatch(localStringBuffer1, i, "SH")) || (regionMatch(localStringBuffer1, i, "SIO")) || (regionMatch(localStringBuffer1, i, "SIA")))
                        {
                          localStringBuffer2.append('X');
                        }
                        else
                        {
                          localStringBuffer2.append('S');
                          continue;
                          if ((regionMatch(localStringBuffer1, i, "TIA")) || (regionMatch(localStringBuffer1, i, "TIO"))) {
                            localStringBuffer2.append('X');
                          } else if (!regionMatch(localStringBuffer1, i, "TCH")) {
                            if (regionMatch(localStringBuffer1, i, "TH"))
                            {
                              localStringBuffer2.append('0');
                            }
                            else
                            {
                              localStringBuffer2.append('T');
                              continue;
                              localStringBuffer2.append('F');
                              continue;
                              if ((!isLastChar(k, i)) && (isVowel(localStringBuffer1, i + 1)))
                              {
                                localStringBuffer2.append(c);
                                continue;
                                localStringBuffer2.append('K');
                                localStringBuffer2.append('S');
                                continue;
                                localStringBuffer2.append('S');
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    label1307:
    return localStringBuffer2.toString();
  }
  
  public void setMaxCodeLen(int paramInt)
  {
    maxCodeLen = paramInt;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.Metaphone
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */