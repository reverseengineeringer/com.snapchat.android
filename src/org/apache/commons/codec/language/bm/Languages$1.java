package org.apache.commons.codec.language.bm;

import java.util.NoSuchElementException;

final class Languages$1
  extends Languages.LanguageSet
{
  public final boolean contains(String paramString)
  {
    return false;
  }
  
  public final String getAny()
  {
    throw new NoSuchElementException("Can't fetch any language from the empty language set.");
  }
  
  public final boolean isEmpty()
  {
    return true;
  }
  
  public final boolean isSingleton()
  {
    return false;
  }
  
  public final Languages.LanguageSet restrictTo(Languages.LanguageSet paramLanguageSet)
  {
    return this;
  }
  
  public final String toString()
  {
    return "NO_LANGUAGES";
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Languages.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */