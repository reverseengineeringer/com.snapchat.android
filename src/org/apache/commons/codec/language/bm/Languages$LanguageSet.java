package org.apache.commons.codec.language.bm;

import java.util.Set;

public abstract class Languages$LanguageSet
{
  public static LanguageSet from(Set<String> paramSet)
  {
    if (paramSet.isEmpty()) {
      return Languages.NO_LANGUAGES;
    }
    return new Languages.SomeLanguages(paramSet, null);
  }
  
  public abstract boolean contains(String paramString);
  
  public abstract String getAny();
  
  public abstract boolean isEmpty();
  
  public abstract boolean isSingleton();
  
  public abstract LanguageSet restrictTo(LanguageSet paramLanguageSet);
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Languages.LanguageSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */