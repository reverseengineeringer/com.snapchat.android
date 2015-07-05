package org.apache.commons.codec.language.bm;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class PhoneticEngine$PhonemeBuilder
{
  private final Set<Rule.Phoneme> phonemes;
  
  private PhoneticEngine$PhonemeBuilder(Set<Rule.Phoneme> paramSet)
  {
    phonemes = paramSet;
  }
  
  public static PhonemeBuilder empty(Languages.LanguageSet paramLanguageSet)
  {
    return new PhonemeBuilder(Collections.singleton(new Rule.Phoneme("", paramLanguageSet)));
  }
  
  public final PhonemeBuilder append(CharSequence paramCharSequence)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = phonemes.iterator();
    while (localIterator.hasNext()) {
      localHashSet.add(((Rule.Phoneme)localIterator.next()).append(paramCharSequence));
    }
    return new PhonemeBuilder(localHashSet);
  }
  
  public final PhonemeBuilder apply(Rule.PhonemeExpr paramPhonemeExpr)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator1 = phonemes.iterator();
    while (localIterator1.hasNext())
    {
      Rule.Phoneme localPhoneme1 = (Rule.Phoneme)localIterator1.next();
      Iterator localIterator2 = paramPhonemeExpr.getPhonemes().iterator();
      while (localIterator2.hasNext())
      {
        Rule.Phoneme localPhoneme2 = localPhoneme1.join((Rule.Phoneme)localIterator2.next());
        if (!localPhoneme2.getLanguages().isEmpty()) {
          localHashSet.add(localPhoneme2);
        }
      }
    }
    return new PhonemeBuilder(localHashSet);
  }
  
  public final Set<Rule.Phoneme> getPhonemes()
  {
    return phonemes;
  }
  
  public final String makeString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = phonemes.iterator();
    while (localIterator.hasNext())
    {
      Rule.Phoneme localPhoneme = (Rule.Phoneme)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("|");
      }
      localStringBuilder.append(localPhoneme.getPhonemeText());
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.PhoneticEngine.PhonemeBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */