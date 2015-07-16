.class public final Lbnb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnb$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lbmv;

.field public final d:Lbnc;

.field final e:Ljava/lang/Object;

.field volatile f:Ljava/net/URL;

.field private volatile g:Ljava/net/URI;

.field private volatile h:Lbmk;


# direct methods
.method private constructor <init>(Lbnb$a;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p1, Lbnb$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lbnb;->a:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lbnb$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lbnb;->b:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lbnb$a;->d:Lbmv$a;

    invoke-virtual {v0}, Lbmv$a;->a()Lbmv;

    move-result-object v0

    iput-object v0, p0, Lbnb;->c:Lbmv;

    .line 47
    iget-object v0, p1, Lbnb$a;->e:Lbnc;

    iput-object v0, p0, Lbnb;->d:Lbnc;

    .line 48
    iget-object v0, p1, Lbnb$a;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbnb$a;->f:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lbnb;->e:Ljava/lang/Object;

    .line 49
    iget-object v0, p1, Lbnb$a;->b:Ljava/net/URL;

    iput-object v0, p0, Lbnb;->f:Ljava/net/URL;

    .line 50
    return-void

    :cond_0
    move-object v0, p0

    .line 48
    goto :goto_0
.end method

.method synthetic constructor <init>(Lbnb$a;B)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lbnb;-><init>(Lbnb$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lbnb;->c:Lbmv;

    invoke-virtual {v0, p1}, Lbmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/net/URL;
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lbnb;->f:Ljava/net/URL;

    .line 55
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lbnb;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbnb;->f:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbnb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Ljava/net/URI;
    .locals 2

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lbnb;->g:Ljava/net/URI;

    .line 64
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lbno;->a()Lbno;

    invoke-virtual {p0}, Lbnb;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lbno;->a(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lbnb;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Lbnb$a;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lbnb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbnb$a;-><init>(Lbnb;B)V

    return-object v0
.end method

.method public final d()Lbmk;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lbnb;->h:Lbmk;

    .line 108
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbnb;->c:Lbmv;

    invoke-static {v0}, Lbmk;->a(Lbmv;)Lbmk;

    move-result-object v0

    iput-object v0, p0, Lbnb;->h:Lbmk;

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lbnb;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbnb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbnb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lbnb;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lbnb;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
