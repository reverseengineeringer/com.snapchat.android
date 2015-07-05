package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;

public final class $Gson$Types
{
  static final Type[] a = new Type[0];
  
  private static Type a(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    Object localObject = paramClass1;
    paramClass1 = paramType;
    paramType = (Type)localObject;
    if (paramClass2 == paramType) {}
    label13:
    label89:
    do
    {
      return paramClass1;
      if (paramClass2.isInterface())
      {
        localObject = paramType.getInterfaces();
        int i = 0;
        int j = localObject.length;
        for (;;)
        {
          if (i >= j) {
            break label89;
          }
          if (localObject[i] == paramClass2) {
            return paramType.getGenericInterfaces()[i];
          }
          if (paramClass2.isAssignableFrom(localObject[i]))
          {
            paramClass1 = paramType.getGenericInterfaces()[i];
            paramType = localObject[i];
            break;
          }
          i += 1;
        }
      }
      paramClass1 = paramClass2;
    } while (paramType.isInterface());
    for (;;)
    {
      paramClass1 = paramClass2;
      if (paramType == Object.class) {
        break label13;
      }
      paramClass1 = paramType.getSuperclass();
      if (paramClass1 == paramClass2) {
        return paramType.getGenericSuperclass();
      }
      if (paramClass2.isAssignableFrom(paramClass1))
      {
        localObject = paramType.getGenericSuperclass();
        paramType = paramClass1;
        paramClass1 = (Class<?>)localObject;
        break;
      }
      paramType = paramClass1;
    }
  }
  
  public static GenericArrayType arrayOf(Type paramType)
  {
    return new a(paramType);
  }
  
  private static Type b(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    .Gson.Preconditions.checkArgument(paramClass2.isAssignableFrom(paramClass1));
    return resolve(paramType, paramClass1, a(paramType, paramClass1, paramClass2));
  }
  
  public static Type canonicalize(Type paramType)
  {
    if ((paramType instanceof Class))
    {
      paramType = (Class)paramType;
      if (paramType.isArray()) {
        paramType = new a(canonicalize(paramType.getComponentType()));
      }
      for (;;)
      {
        return (Type)paramType;
      }
    }
    if ((paramType instanceof ParameterizedType))
    {
      paramType = (ParameterizedType)paramType;
      return new b(paramType.getOwnerType(), paramType.getRawType(), paramType.getActualTypeArguments());
    }
    if ((paramType instanceof GenericArrayType)) {
      return new a(((GenericArrayType)paramType).getGenericComponentType());
    }
    if ((paramType instanceof WildcardType))
    {
      paramType = (WildcardType)paramType;
      return new c(paramType.getUpperBounds(), paramType.getLowerBounds());
    }
    return paramType;
  }
  
  public static boolean equals(Type paramType1, Type paramType2)
  {
    Type localType1 = paramType1;
    for (paramType1 = paramType2;; paramType1 = paramType1.getGenericComponentType())
    {
      if (localType1 == paramType1) {
        return true;
      }
      if ((localType1 instanceof Class)) {
        return localType1.equals(paramType1);
      }
      if ((localType1 instanceof ParameterizedType))
      {
        if (!(paramType1 instanceof ParameterizedType)) {
          return false;
        }
        paramType2 = (ParameterizedType)localType1;
        paramType1 = (ParameterizedType)paramType1;
        localType1 = paramType2.getOwnerType();
        Type localType2 = paramType1.getOwnerType();
        if ((localType1 == localType2) || ((localType1 != null) && (localType1.equals(localType2)))) {}
        for (int i = 1; (i != 0) && (paramType2.getRawType().equals(paramType1.getRawType())) && (Arrays.equals(paramType2.getActualTypeArguments(), paramType1.getActualTypeArguments())); i = 0) {
          return true;
        }
        return false;
      }
      if (!(localType1 instanceof GenericArrayType)) {
        break;
      }
      if (!(paramType1 instanceof GenericArrayType)) {
        return false;
      }
      paramType2 = (GenericArrayType)localType1;
      paramType1 = (GenericArrayType)paramType1;
      localType1 = paramType2.getGenericComponentType();
    }
    if ((localType1 instanceof WildcardType))
    {
      if (!(paramType1 instanceof WildcardType)) {
        return false;
      }
      paramType2 = (WildcardType)localType1;
      paramType1 = (WildcardType)paramType1;
      return (Arrays.equals(paramType2.getUpperBounds(), paramType1.getUpperBounds())) && (Arrays.equals(paramType2.getLowerBounds(), paramType1.getLowerBounds()));
    }
    if ((localType1 instanceof TypeVariable))
    {
      if (!(paramType1 instanceof TypeVariable)) {
        return false;
      }
      paramType2 = (TypeVariable)localType1;
      paramType1 = (TypeVariable)paramType1;
      return (paramType2.getGenericDeclaration() == paramType1.getGenericDeclaration()) && (paramType2.getName().equals(paramType1.getName()));
    }
    return false;
  }
  
  public static Type getArrayComponentType(Type paramType)
  {
    if ((paramType instanceof GenericArrayType)) {
      return ((GenericArrayType)paramType).getGenericComponentType();
    }
    return ((Class)paramType).getComponentType();
  }
  
  public static Type getCollectionElementType(Type paramType, Class<?> paramClass)
  {
    paramClass = b(paramType, paramClass, Collection.class);
    paramType = paramClass;
    if ((paramClass instanceof WildcardType)) {
      paramType = ((WildcardType)paramClass).getUpperBounds()[0];
    }
    if ((paramType instanceof ParameterizedType)) {
      return ((ParameterizedType)paramType).getActualTypeArguments()[0];
    }
    return Object.class;
  }
  
  public static Type[] getMapKeyAndValueTypes(Type paramType, Class<?> paramClass)
  {
    if (paramType == Properties.class) {
      return new Type[] { String.class, String.class };
    }
    paramType = b(paramType, paramClass, Map.class);
    if ((paramType instanceof ParameterizedType)) {
      return ((ParameterizedType)paramType).getActualTypeArguments();
    }
    return new Type[] { Object.class, Object.class };
  }
  
  public static Class<?> getRawType(Type paramType)
  {
    for (;;)
    {
      if ((paramType instanceof Class)) {
        return (Class)paramType;
      }
      if ((paramType instanceof ParameterizedType))
      {
        paramType = ((ParameterizedType)paramType).getRawType();
        .Gson.Preconditions.checkArgument(paramType instanceof Class);
        return (Class)paramType;
      }
      if ((paramType instanceof GenericArrayType)) {
        return Array.newInstance(getRawType(((GenericArrayType)paramType).getGenericComponentType()), 0).getClass();
      }
      if ((paramType instanceof TypeVariable)) {
        return Object.class;
      }
      if (!(paramType instanceof WildcardType)) {
        break;
      }
      paramType = ((WildcardType)paramType).getUpperBounds()[0];
    }
    if (paramType == null) {}
    for (String str = "null";; str = paramType.getClass().getName()) {
      throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + paramType + "> is of type " + str);
    }
  }
  
  public static ParameterizedType newParameterizedTypeWithOwner(Type paramType1, Type paramType2, Type... paramVarArgs)
  {
    return new b(paramType1, paramType2, paramVarArgs);
  }
  
  public static Type resolve(Type paramType1, Class<?> paramClass, Type paramType2)
  {
    int k = 0;
    Object localObject1 = paramType2;
    Object localObject2;
    int i;
    label68:
    label98:
    do
    {
      if (!(localObject1 instanceof TypeVariable)) {
        break label135;
      }
      localObject2 = (TypeVariable)localObject1;
      paramType2 = ((TypeVariable)localObject2).getGenericDeclaration();
      if (!(paramType2 instanceof Class)) {
        break;
      }
      paramType2 = (Class)paramType2;
      if (paramType2 == null) {
        break label129;
      }
      localObject1 = a(paramType1, paramClass, paramType2);
      if (!(localObject1 instanceof ParameterizedType)) {
        break label129;
      }
      paramType2 = paramType2.getTypeParameters();
      i = 0;
      if (i >= paramType2.length) {
        break label121;
      }
      if (!localObject2.equals(paramType2[i])) {
        break label114;
      }
      paramType2 = ((ParameterizedType)localObject1).getActualTypeArguments()[i];
      localObject1 = paramType2;
    } while (paramType2 != localObject2);
    label114:
    label121:
    label129:
    label135:
    label185:
    label226:
    Object localObject3;
    label384:
    label453:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return paramType2;
                  paramType2 = null;
                  break;
                  i += 1;
                  break label68;
                  throw new NoSuchElementException();
                  paramType2 = (Type)localObject2;
                  break label98;
                  if ((!(localObject1 instanceof Class)) || (!((Class)localObject1).isArray())) {
                    break label185;
                  }
                  paramType2 = (Class)localObject1;
                  localObject1 = paramType2.getComponentType();
                  paramType1 = resolve(paramType1, paramClass, (Type)localObject1);
                } while (localObject1 == paramType1);
                return arrayOf(paramType1);
                if (!(localObject1 instanceof GenericArrayType)) {
                  break label226;
                }
                paramType2 = (GenericArrayType)localObject1;
                localObject1 = paramType2.getGenericComponentType();
                paramType1 = resolve(paramType1, paramClass, (Type)localObject1);
              } while (localObject1 == paramType1);
              return arrayOf(paramType1);
              if (!(localObject1 instanceof ParameterizedType)) {
                break label384;
              }
              localObject2 = (ParameterizedType)localObject1;
              paramType2 = ((ParameterizedType)localObject2).getOwnerType();
              localObject3 = resolve(paramType1, paramClass, paramType2);
              if (localObject3 != paramType2) {}
              for (i = 1;; i = 0)
              {
                localObject1 = ((ParameterizedType)localObject2).getActualTypeArguments();
                int m = localObject1.length;
                while (k < m)
                {
                  Type localType = resolve(paramType1, paramClass, localObject1[k]);
                  int j = i;
                  paramType2 = (Type)localObject1;
                  if (localType != localObject1[k])
                  {
                    j = i;
                    paramType2 = (Type)localObject1;
                    if (i == 0)
                    {
                      paramType2 = (Type[])((Type[])localObject1).clone();
                      j = 1;
                    }
                    paramType2[k] = localType;
                  }
                  k += 1;
                  i = j;
                  localObject1 = paramType2;
                }
              }
              paramType2 = (Type)localObject2;
            } while (i == 0);
            return newParameterizedTypeWithOwner((Type)localObject3, ((ParameterizedType)localObject2).getRawType(), (Type[])localObject1);
            paramType2 = (Type)localObject1;
          } while (!(localObject1 instanceof WildcardType));
          localObject1 = (WildcardType)localObject1;
          localObject2 = ((WildcardType)localObject1).getLowerBounds();
          localObject3 = ((WildcardType)localObject1).getUpperBounds();
          if (localObject2.length != 1) {
            break label453;
          }
          paramType1 = resolve(paramType1, paramClass, localObject2[0]);
          paramType2 = (Type)localObject1;
        } while (paramType1 == localObject2[0]);
        return supertypeOf(paramType1);
        paramType2 = (Type)localObject1;
      } while (localObject3.length != 1);
      paramType1 = resolve(paramType1, paramClass, localObject3[0]);
      paramType2 = (Type)localObject1;
    } while (paramType1 == localObject3[0]);
    return subtypeOf(paramType1);
  }
  
  public static WildcardType subtypeOf(Type paramType)
  {
    Type[] arrayOfType = a;
    return new c(new Type[] { paramType }, arrayOfType);
  }
  
  public static WildcardType supertypeOf(Type paramType)
  {
    return new c(new Type[] { Object.class }, new Type[] { paramType });
  }
  
  public static String typeToString(Type paramType)
  {
    if ((paramType instanceof Class)) {
      return ((Class)paramType).getName();
    }
    return paramType.toString();
  }
  
  static final class a
    implements Serializable, GenericArrayType
  {
    private final Type a;
    
    public a(Type paramType)
    {
      a = .Gson.Types.canonicalize(paramType);
    }
    
    public final boolean equals(Object paramObject)
    {
      return ((paramObject instanceof GenericArrayType)) && (.Gson.Types.equals(this, (GenericArrayType)paramObject));
    }
    
    public final Type getGenericComponentType()
    {
      return a;
    }
    
    public final int hashCode()
    {
      return a.hashCode();
    }
    
    public final String toString()
    {
      return .Gson.Types.typeToString(a) + "[]";
    }
  }
  
  static final class b
    implements Serializable, ParameterizedType
  {
    private final Type a;
    private final Type b;
    private final Type[] c;
    
    public b(Type paramType1, Type paramType2, Type... paramVarArgs)
    {
      boolean bool1;
      if ((paramType2 instanceof Class))
      {
        Class localClass = (Class)paramType2;
        if ((paramType1 != null) || (localClass.getEnclosingClass() == null))
        {
          bool1 = true;
          .Gson.Preconditions.checkArgument(bool1);
          bool1 = bool2;
          if (paramType1 != null)
          {
            if (localClass.getEnclosingClass() == null) {
              break label161;
            }
            bool1 = bool2;
          }
          label63:
          .Gson.Preconditions.checkArgument(bool1);
        }
      }
      else
      {
        if (paramType1 != null) {
          break label167;
        }
      }
      label161:
      label167:
      for (paramType1 = null;; paramType1 = .Gson.Types.canonicalize(paramType1))
      {
        a = paramType1;
        b = .Gson.Types.canonicalize(paramType2);
        c = ((Type[])paramVarArgs.clone());
        while (i < c.length)
        {
          .Gson.Preconditions.checkNotNull(c[i]);
          .Gson.Types.a(c[i]);
          c[i] = .Gson.Types.canonicalize(c[i]);
          i += 1;
        }
        bool1 = false;
        break;
        bool1 = false;
        break label63;
      }
    }
    
    public final boolean equals(Object paramObject)
    {
      return ((paramObject instanceof ParameterizedType)) && (.Gson.Types.equals(this, (ParameterizedType)paramObject));
    }
    
    public final Type[] getActualTypeArguments()
    {
      return (Type[])c.clone();
    }
    
    public final Type getOwnerType()
    {
      return a;
    }
    
    public final Type getRawType()
    {
      return b;
    }
    
    public final int hashCode()
    {
      return Arrays.hashCode(c) ^ b.hashCode() ^ .Gson.Types.a(a);
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder((c.length + 1) * 30);
      localStringBuilder.append(.Gson.Types.typeToString(b));
      if (c.length == 0) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append("<").append(.Gson.Types.typeToString(c[0]));
      int i = 1;
      while (i < c.length)
      {
        localStringBuilder.append(", ").append(.Gson.Types.typeToString(c[i]));
        i += 1;
      }
      return ">";
    }
  }
  
  static final class c
    implements Serializable, WildcardType
  {
    private final Type a;
    private final Type b;
    
    public c(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
    {
      if (paramArrayOfType2.length <= 1)
      {
        bool1 = true;
        .Gson.Preconditions.checkArgument(bool1);
        if (paramArrayOfType1.length != 1) {
          break label87;
        }
        bool1 = true;
        label27:
        .Gson.Preconditions.checkArgument(bool1);
        if (paramArrayOfType2.length != 1) {
          break label97;
        }
        .Gson.Preconditions.checkNotNull(paramArrayOfType2[0]);
        .Gson.Types.a(paramArrayOfType2[0]);
        if (paramArrayOfType1[0] != Object.class) {
          break label92;
        }
      }
      label87:
      label92:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        .Gson.Preconditions.checkArgument(bool1);
        b = .Gson.Types.canonicalize(paramArrayOfType2[0]);
        a = Object.class;
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label27;
      }
      label97:
      .Gson.Preconditions.checkNotNull(paramArrayOfType1[0]);
      .Gson.Types.a(paramArrayOfType1[0]);
      b = null;
      a = .Gson.Types.canonicalize(paramArrayOfType1[0]);
    }
    
    public final boolean equals(Object paramObject)
    {
      return ((paramObject instanceof WildcardType)) && (.Gson.Types.equals(this, (WildcardType)paramObject));
    }
    
    public final Type[] getLowerBounds()
    {
      if (b != null) {
        return new Type[] { b };
      }
      return .Gson.Types.a;
    }
    
    public final Type[] getUpperBounds()
    {
      return new Type[] { a };
    }
    
    public final int hashCode()
    {
      if (b != null) {}
      for (int i = b.hashCode() + 31;; i = 1) {
        return i ^ a.hashCode() + 31;
      }
    }
    
    public final String toString()
    {
      if (b != null) {
        return "? super " + .Gson.Types.typeToString(b);
      }
      if (a == Object.class) {
        return "?";
      }
      return "? extends " + .Gson.Types.typeToString(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal..Gson.Types
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */