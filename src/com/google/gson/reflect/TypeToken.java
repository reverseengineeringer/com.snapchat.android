package com.google.gson.reflect;

import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.internal..Gson.Types;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;

public class TypeToken<T>
{
  final int hashCode;
  final Class<? super T> rawType;
  final Type type;
  
  public TypeToken()
  {
    Type localType = getClass().getGenericSuperclass();
    if ((localType instanceof Class)) {
      throw new RuntimeException("Missing type parameter.");
    }
    type = .Gson.Types.canonicalize(((ParameterizedType)localType).getActualTypeArguments()[0]);
    rawType = .Gson.Types.getRawType(type);
    hashCode = type.hashCode();
  }
  
  private TypeToken(Type paramType)
  {
    type = .Gson.Types.canonicalize((Type).Gson.Preconditions.checkNotNull(paramType));
    rawType = .Gson.Types.getRawType(type);
    hashCode = type.hashCode();
  }
  
  private static AssertionError a(Type paramType, Class<?>... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder("Unexpected type. Expected one of: ");
    int i = 0;
    while (i < 3)
    {
      localStringBuilder.append(paramVarArgs[i].getName()).append(", ");
      i += 1;
    }
    localStringBuilder.append("but got: ").append(paramType.getClass().getName()).append(", for type token: ").append(paramType.toString()).append('.');
    return new AssertionError(localStringBuilder.toString());
  }
  
  private static boolean a(Type paramType, GenericArrayType paramGenericArrayType)
  {
    Type localType = paramGenericArrayType.getGenericComponentType();
    if ((localType instanceof ParameterizedType))
    {
      if ((paramType instanceof GenericArrayType)) {
        paramGenericArrayType = ((GenericArrayType)paramType).getGenericComponentType();
      }
      do
      {
        return a(paramGenericArrayType, (ParameterizedType)localType, new HashMap());
        paramGenericArrayType = paramType;
      } while (!(paramType instanceof Class));
      for (paramType = (Class)paramType;; paramType = paramType.getComponentType())
      {
        paramGenericArrayType = paramType;
        if (!paramType.isArray()) {
          break;
        }
      }
    }
    return true;
  }
  
  private static boolean a(Type paramType, ParameterizedType paramParameterizedType, Map<String, Type> paramMap)
  {
    if (paramType == null) {
      return false;
    }
    if (paramParameterizedType.equals(paramType)) {
      return true;
    }
    Class localClass = .Gson.Types.getRawType(paramType);
    if ((paramType instanceof ParameterizedType)) {}
    for (paramType = (ParameterizedType)paramType;; paramType = null)
    {
      if (paramType != null)
      {
        Type[] arrayOfType = paramType.getActualTypeArguments();
        TypeVariable[] arrayOfTypeVariable = localClass.getTypeParameters();
        i = 0;
        Object localObject;
        while (i < arrayOfType.length)
        {
          localObject = arrayOfType[i];
          TypeVariable localTypeVariable = arrayOfTypeVariable[i];
          while ((localObject instanceof TypeVariable)) {
            localObject = (Type)paramMap.get(((TypeVariable)localObject).getName());
          }
          paramMap.put(localTypeVariable.getName(), localObject);
          i += 1;
        }
        if (paramType.getRawType().equals(paramParameterizedType.getRawType()))
        {
          paramType = paramType.getActualTypeArguments();
          localObject = paramParameterizedType.getActualTypeArguments();
          i = 0;
          if (i < paramType.length)
          {
            arrayOfType = paramType[i];
            arrayOfTypeVariable = localObject[i];
            if ((arrayOfTypeVariable.equals(arrayOfType)) || (((arrayOfType instanceof TypeVariable)) && (arrayOfTypeVariable.equals(paramMap.get(((TypeVariable)arrayOfType).getName()))))) {}
            for (j = 1;; j = 0)
            {
              if (j == 0) {
                break label252;
              }
              i += 1;
              break;
            }
          }
        }
        label252:
        for (i = 1; i != 0; i = 0) {
          return true;
        }
      }
      paramType = localClass.getGenericInterfaces();
      int j = paramType.length;
      int i = 0;
      while (i < j)
      {
        if (a(paramType[i], paramParameterizedType, new HashMap(paramMap))) {
          return true;
        }
        i += 1;
      }
      paramType = localClass.getGenericSuperclass();
      paramMap = new HashMap(paramMap);
      break;
    }
  }
  
  public static <T> TypeToken<T> get(Class<T> paramClass)
  {
    return new TypeToken(paramClass);
  }
  
  public static TypeToken<?> get(Type paramType)
  {
    return new TypeToken(paramType);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof TypeToken)) && (.Gson.Types.equals(type, type));
  }
  
  public final Class<? super T> getRawType()
  {
    return rawType;
  }
  
  public final Type getType()
  {
    return type;
  }
  
  public final int hashCode()
  {
    return hashCode;
  }
  
  @Deprecated
  public boolean isAssignableFrom(TypeToken<?> paramTypeToken)
  {
    return isAssignableFrom(paramTypeToken.getType());
  }
  
  @Deprecated
  public boolean isAssignableFrom(Class<?> paramClass)
  {
    return isAssignableFrom(paramClass);
  }
  
  @Deprecated
  public boolean isAssignableFrom(Type paramType)
  {
    if (paramType == null) {
      return false;
    }
    if (type.equals(paramType)) {
      return true;
    }
    if ((type instanceof Class)) {
      return rawType.isAssignableFrom(.Gson.Types.getRawType(paramType));
    }
    if ((type instanceof ParameterizedType)) {
      return a(paramType, (ParameterizedType)type, new HashMap());
    }
    if ((type instanceof GenericArrayType)) {
      return (rawType.isAssignableFrom(.Gson.Types.getRawType(paramType))) && (a(paramType, (GenericArrayType)type));
    }
    throw a(type, new Class[] { Class.class, ParameterizedType.class, GenericArrayType.class });
  }
  
  public final String toString()
  {
    return .Gson.Types.typeToString(type);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.reflect.TypeToken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */