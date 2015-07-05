package org.apache.commons.codec.language.bm;

import java.util.Iterator;
import java.util.List;

final class PhoneticEngine$RulesApplication
{
  private final List<Rule> finalRules;
  private boolean found;
  private int i;
  private final CharSequence input;
  private PhoneticEngine.PhonemeBuilder phonemeBuilder;
  
  public PhoneticEngine$RulesApplication(List<Rule> paramList, CharSequence paramCharSequence, PhoneticEngine.PhonemeBuilder paramPhonemeBuilder, int paramInt)
  {
    if (paramList == null) {
      throw new NullPointerException("The finalRules argument must not be null");
    }
    finalRules = paramList;
    phonemeBuilder = paramPhonemeBuilder;
    input = paramCharSequence;
    i = paramInt;
  }
  
  public final int getI()
  {
    return i;
  }
  
  public final PhoneticEngine.PhonemeBuilder getPhonemeBuilder()
  {
    return phonemeBuilder;
  }
  
  public final RulesApplication invoke()
  {
    int j = 0;
    found = false;
    Iterator localIterator = finalRules.iterator();
    if (localIterator.hasNext())
    {
      Rule localRule = (Rule)localIterator.next();
      j = localRule.getPattern().length();
      if (localRule.patternAndContextMatches(input, i))
      {
        phonemeBuilder = phonemeBuilder.apply(localRule.getPhoneme());
        found = true;
      }
    }
    for (;;)
    {
      if (!found) {
        j = 1;
      }
      i += j;
      return this;
      break;
    }
  }
  
  public final boolean isFound()
  {
    return found;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.PhoneticEngine.RulesApplication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */