package org.apache.commons.codec.language.bm;

import java.io.InputStream;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;

public class Languages
{
  public static final String ANY = "any";
  public static final LanguageSet ANY_LANGUAGE = new LanguageSet()
  {
    public final boolean contains(String paramAnonymousString)
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
    
    public final Languages.LanguageSet restrictTo(Languages.LanguageSet paramAnonymousLanguageSet)
    {
      return paramAnonymousLanguageSet;
    }
    
    public final String toString()
    {
      return "ANY_LANGUAGE";
    }
  };
  private static final Map<NameType, Languages> LANGUAGES = new EnumMap(NameType.class);
  public static final LanguageSet NO_LANGUAGES;
  private final Set<String> languages;
  
  static
  {
    NameType[] arrayOfNameType = NameType.values();
    int j = arrayOfNameType.length;
    int i = 0;
    while (i < j)
    {
      NameType localNameType = arrayOfNameType[i];
      LANGUAGES.put(localNameType, getInstance(langResourceName(localNameType)));
      i += 1;
    }
    NO_LANGUAGES = new LanguageSet()
    {
      public final boolean contains(String paramAnonymousString)
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
      
      public final Languages.LanguageSet restrictTo(Languages.LanguageSet paramAnonymousLanguageSet)
      {
        return this;
      }
      
      public final String toString()
      {
        return "NO_LANGUAGES";
      }
    };
  }
  
  private Languages(Set<String> paramSet)
  {
    languages = paramSet;
  }
  
  public static Languages getInstance(String paramString)
  {
    HashSet localHashSet = new HashSet();
    Object localObject = Languages.class.getClassLoader().getResourceAsStream(paramString);
    if (localObject == null) {
      throw new IllegalArgumentException("Unable to resolve required resource: " + paramString);
    }
    paramString = new Scanner((InputStream)localObject, "UTF-8");
    int i = 0;
    while (paramString.hasNextLine())
    {
      localObject = paramString.nextLine().trim();
      if (i != 0)
      {
        if (((String)localObject).endsWith("*/")) {
          i = 0;
        }
      }
      else if (((String)localObject).startsWith("/*")) {
        i = 1;
      } else if (((String)localObject).length() > 0) {
        localHashSet.add(localObject);
      }
    }
    return new Languages(Collections.unmodifiableSet(localHashSet));
  }
  
  public static Languages getInstance(NameType paramNameType)
  {
    return (Languages)LANGUAGES.get(paramNameType);
  }
  
  private static String langResourceName(NameType paramNameType)
  {
    return String.format("org/apache/commons/codec/language/bm/%s_languages.txt", new Object[] { paramNameType.getName() });
  }
  
  public Set<String> getLanguages()
  {
    return languages;
  }
  
  public static abstract class LanguageSet
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
  
  public static final class SomeLanguages
    extends Languages.LanguageSet
  {
    private final Set<String> languages;
    
    private SomeLanguages(Set<String> paramSet)
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
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Languages
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */