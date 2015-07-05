package org.apache.commons.codec.language.bm;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class Languages$SomeLanguages
  extends Languages.LanguageSet
{
  private final Set<String> languages;
  
  private Languages$SomeLanguages(Set<String> paramSet)
  {
    languages = Collections.unmodifiableSet(paramSet);
  }
  
  public final boolean contains(String paramString)
  {
    return languages.contains(paramString);
  }
  
  public final String getAny()
  {
    return (String)languages.iterator().next();
  }
  
  public final Set<String> getLanguages()
  {
    return languages;
  }
  
  public final boolean isEmpty()
  {
    return languages.isEmpty();
  }
  
  public final boolean isSingleton()
  {
    return languages.size() == 1;
  }
  
  public final Languages.LanguageSet restrictTo(Languages.LanguageSet paramLanguageSet)
  {
    if (paramLanguageSet == Languages.NO_LANGUAGES) {
      localObject = paramLanguageSet;
    }
    do
    {
      do
      {
        return (Languages.LanguageSet)localObject;
        localObject = this;
      } while (paramLanguageSet == Languages.ANY_LANGUAGE);
      paramLanguageSet = (SomeLanguages)paramLanguageSet;
      localObject = this;
    } while (languages.containsAll(languages));
    Object localObject = new HashSet(languages);
    ((Set)localObject).retainAll(languages);
    return from((Set)localObject);
  }
  
  public final String toString()
  {
    return "Languages(" + languages.toString() + ")";
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Languages.SomeLanguages
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */