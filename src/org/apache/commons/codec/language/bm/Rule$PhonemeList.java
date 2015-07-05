package org.apache.commons.codec.language.bm;

import java.util.List;

public final class Rule$PhonemeList
  implements Rule.PhonemeExpr
{
  private final List<Rule.Phoneme> phonemes;
  
  public Rule$PhonemeList(List<Rule.Phoneme> paramList)
  {
    phonemes = paramList;
  }
  
  public final List<Rule.Phoneme> getPhonemes()
  {
    return phonemes;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Rule.PhonemeList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */