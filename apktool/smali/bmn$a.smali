.class final Lbmn$a;
.super Lbmn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lbmm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbmm",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lbmm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbmm",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Lbmm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbmm",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lbmm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbmm",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbmm;Lbmm;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lbmm;Lbmm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmm",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lbmm",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lbmm",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lbmm",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Lbmn;-><init>()V

    .line 186
    iput-object p1, p0, Lbmn$a;->a:Lbmm;

    .line 187
    iput-object p2, p0, Lbmn$a;->b:Lbmm;

    .line 188
    iput-object p3, p0, Lbmn$a;->c:Ljava/lang/reflect/Method;

    .line 189
    iput-object p4, p0, Lbmn$a;->d:Ljava/lang/reflect/Method;

    .line 190
    iput-object p5, p0, Lbmn$a;->e:Lbmm;

    .line 191
    iput-object p6, p0, Lbmn$a;->f:Lbmm;

    .line 192
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/Socket;)V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lbmn$a;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbmn$a;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 237
    :catch_1
    move-exception v0

    .line 238
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v1
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lblz;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 210
    if-eqz p2, :cond_0

    .line 211
    iget-object v0, p0, Lbmn$a;->a:Lbmm;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lbmm;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lbmn$a;->b:Lbmm;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lbmm;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    iget-object v0, p0, Lbmn$a;->f:Lbmm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbmn$a;->f:Lbmm;

    invoke-virtual {v0, p1}, Lbmm;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Lbzu;

    invoke-direct {v4}, Lbzu;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblz;

    sget-object v6, Lblz;->a:Lblz;

    if-eq v0, v6, :cond_1

    invoke-virtual {v0}, Lblz;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Lbzu;->a(I)Lbzu;

    invoke-virtual {v0}, Lblz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lbzu;->a(Ljava/lang/String;)Lbzu;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lbzu;->o()[B

    move-result-object v0

    aput-object v0, v3, v2

    .line 218
    iget-object v0, p0, Lbmn$a;->f:Lbmm;

    invoke-virtual {v0, p1, v3}, Lbmm;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_3
    return-void
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lbmn$a;->e:Lbmm;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 227
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lbmn$a;->e:Lbmm;

    invoke-virtual {v0, p1}, Lbmm;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lbmn$a;->e:Lbmm;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lbmm;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 227
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lbmp;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/net/Socket;)V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lbmn$a;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbmn$a;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 249
    :catch_1
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
