package org.apache.commons.codec.language.bm;

import java.util.Comparator;

final class Rule$Phoneme$1
  implements Comparator<Rule.Phoneme>
{
  public final int compare(Rule.Phoneme paramPhoneme1, Rule.Phoneme paramPhoneme2)
  {
    int j = 0;
    int i = 0;
    if (i < Rule.Phoneme.access$000(paramPhoneme1).length()) {
      if (i >= Rule.Phoneme.access$000(paramPhoneme2).length()) {
        i = 1;
      }
    }
    do
    {
      return i;
      int k = Rule.Phoneme.access$000(paramPhoneme1).charAt(i) - Rule.Phoneme.access$000(paramPhoneme2).charAt(i);
      if (k != 0) {
        return k;
      }
      i += 1;
      break;
      i = j;
    } while (Rule.Phoneme.access$000(paramPhoneme1).length() >= Rule.Phoneme.access$000(paramPhoneme2).length());
    return -1;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Rule.Phoneme.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */