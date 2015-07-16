.class public final Lani;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lanh;


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lani;->a:Landroid/content/Intent;

    .line 21
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lani;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lani;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lani;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32
    :catch_0
    move-exception v0

    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
