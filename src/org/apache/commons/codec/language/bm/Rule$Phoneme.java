package org.apache.commons.codec.language.bm;

import java.util.Collections;
import java.util.Comparator;

public final class Rule$Phoneme
  implements Rule.PhonemeExpr
{
  public static final Comparator<Phoneme> COMPARATOR = new Comparator()
  {
    public final int compare(Rule.Phoneme paramAnonymousPhoneme1, Rule.Phoneme paramAnonymousPhoneme2)
    {
      int j = 0;
      int i = 0;
      if (i < phonemeText.length()) {
        if (i >= phonemeText.length()) {
          i = 1;
        }
      }
      do
      {
        return i;
        int k = phonemeText.charAt(i) - phonemeText.charAt(i);
        if (k != 0) {
          return k;
        }
        i += 1;
        break;
        i = j;
      } while (phonemeText.length() >= phonemeText.length());
      return -1;
    }
  };
  private final Languages.LanguageSet languages;
  private final CharSequence phonemeText;
  
  public Rule$Phoneme(CharSequence paramCharSequence, Languages.LanguageSet paramLanguageSet)
  {
    phonemeText = paramCharSequence;
    languages = paramLanguageSet;
  }
  
  public final Phoneme append(CharSequence paramCharSequence)
  {
    return new Phoneme(phonemeText.toString() + paramCharSequence.toString(), languages);
  }
  
  public final Languages.LanguageSet getLanguages()
  {
    return languages;
  }
  
  public final CharSequence getPhonemeText()
  {
    return phonemeText;
  }
  
  public final Iterable<Phoneme> getPhonemes()
  {
    return Collections.singleton(this);
  }
  
  public final Phoneme join(Phoneme paramPhoneme)
  {
    return new Phoneme(phonemeText.toString() + phonemeText.toString(), languages.restrictTo(languages));
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Rule.Phoneme
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */