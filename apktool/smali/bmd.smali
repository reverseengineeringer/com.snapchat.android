.class final Lbmd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/io/Closeable;)V
    .locals 4
    .param p0    # Ljava/io/Closeable;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 43
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    invoke-static {v0}, Lbmf;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caused by attempting to close "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
