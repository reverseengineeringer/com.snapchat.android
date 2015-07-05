package org.apache.commons.codec.language.bm;

import java.util.NoSuchElementException;

final class Languages$2
  extends Languages.LanguageSet
{
  public final boolean contains(String paramString)
  {
    return true;
  }
  
  public final String getAny()
  {
    throw new NoSuchElementException("Can't fetch any language from the any language set.");
  }
  
  public final boolean isEmpty()
  {
    return false;
  }
  
  public final boolean isSingleton()
  {
    return false;
  }
  
  public final Languages.LanguageSet restrictTo(Languages.LanguageSet paramLanguageSet)
  {
    return paramLanguageSet;
  }
  
  public final String toString()
  {
    return "ANY_LANGUAGE";
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Languages.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */