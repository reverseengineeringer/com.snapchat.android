.class public final Lbgo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloseableUtils"


# direct methods
.method public static a(Landroid/database/Cursor;)V
    .locals 0
    .param p0    # Landroid/database/Cursor;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 40
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 4
    .param p0    # Ljava/io/Closeable;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 48
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
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

    .line 50
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/net/Socket;)V
    .locals 1
    .param p0    # Ljava/net/Socket;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Scanner;)V
    .locals 0
    .param p0    # Ljava/util/Scanner;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/util/Scanner;->close()V

    .line 79
    :cond_0
    return-void
.end method
