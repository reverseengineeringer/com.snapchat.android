.class public final Lbvh;
.super Ljavax/net/ssl/SSLContextSpi;


# static fields
.field private static a:[Ljava/lang/reflect/Method;

.field private static b:Z


# instance fields
.field private c:Ljavax/net/ssl/SSLContextSpi;

.field private d:Lbum;

.field private e:Lbtx;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/reflect/Method;

    sput-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    .line 38
    sput-boolean v7, Lbvh;->b:Z

    .line 42
    :try_start_0
    sget-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    const-string v3, "engineCreateSSLEngine"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v0, v1

    .line 43
    sget-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    const-string v3, "engineCreateSSLEngine"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    sget-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    const-string v3, "engineGetClientSessionContext"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    sget-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    const-string v3, "engineGetServerSessionContext"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    sget-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    const-string v3, "engineGetServerSocketFactory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v0, v1

    .line 47
    sget-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    const-string v3, "engineGetSocketFactory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    sget-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    const/4 v1, 0x6

    const-class v2, Ljavax/net/ssl/SSLContextSpi;

    const-string v3, "engineInit"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [Ljavax/net/ssl/KeyManager;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Ljavax/net/ssl/TrustManager;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/security/SecureRandom;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    sget-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    invoke-static {v0}, Lbur;->a([Ljava/lang/reflect/AccessibleObject;)V

    .line 52
    new-instance v0, Lbvh;

    new-instance v1, Lbvh;

    invoke-direct {v1}, Lbvh;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lbvh;-><init>(Ljavax/net/ssl/SSLContextSpi;Lbum;Lbtx;)V

    .line 53
    invoke-virtual {v0}, Lbvh;->engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;

    .line 58
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbvh;->engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    .line 59
    invoke-virtual {v0}, Lbvh;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    .line 60
    invoke-virtual {v0}, Lbvh;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    .line 61
    invoke-virtual {v0}, Lbvh;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    .line 62
    invoke-virtual {v0}, Lbvh;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 63
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lbvh;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lbvh;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    invoke-static {}, Lbue;->c()V

    .line 70
    sput-boolean v7, Lbvh;->b:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 110
    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLContextSpi;Lbum;Lbtx;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 84
    iput-object p1, p0, Lbvh;->c:Ljavax/net/ssl/SSLContextSpi;

    .line 85
    iput-object p2, p0, Lbvh;->d:Lbum;

    .line 86
    iput-object p3, p0, Lbvh;->e:Lbtx;

    .line 87
    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLContextSpi;Lbum;Lbtx;)Lbvh;
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lbvh;->b:Z

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbvh;

    invoke-direct {v0, p0, p1, p2}, Lbvh;-><init>(Ljavax/net/ssl/SSLContextSpi;Lbum;Lbtx;)V

    goto :goto_0
.end method

.method private varargs a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lbvh;->c:Ljavax/net/ssl/SSLContextSpi;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lbvh;->a:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    iget-object v1, p0, Lbvh;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 129
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 130
    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lbsz;

    invoke-direct {v0, v1}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 135
    :cond_1
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 136
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 137
    :cond_2
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_3

    .line 138
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 142
    :cond_3
    new-instance v0, Lbsz;

    invoke-direct {v0, v1}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 144
    :catch_3
    move-exception v0

    .line 145
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x6

    :try_start_0
    invoke-direct {p0, v0, p1}, Lbvh;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 162
    :catch_0
    move-exception v0

    throw v0

    .line 164
    :catch_1
    move-exception v0

    throw v0

    .line 166
    :catch_2
    move-exception v0

    .line 167
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lbvh;->b:Z

    return v0
.end method

.method private varargs b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 151
    :try_start_0
    invoke-direct {p0, p1, p2}, Lbvh;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 152
    :catch_0
    move-exception v0

    throw v0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lbvh;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method protected final engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v2, v0}, Lbvh;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method protected final engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbvh;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSessionContext;

    return-object v0
.end method

.method protected final engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbvh;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSessionContext;

    return-object v0
.end method

.method protected final engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbvh;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocketFactory;

    return-object v0
.end method

.method protected final engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 198
    const/4 v0, 0x5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbvh;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    new-instance v1, Lbrc;

    iget-object v2, p0, Lbvh;->d:Lbum;

    iget-object v3, p0, Lbvh;->e:Lbtx;

    invoke-direct {v1, v0, v2, v3}, Lbrc;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lbum;Lbtx;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 210
    :cond_0
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v0

    throw v0

    .line 206
    :catch_1
    move-exception v1

    invoke-static {v1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lbvh;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lbvh;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lbvh;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lbvh;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
