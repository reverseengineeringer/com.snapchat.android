.class public Lorg/apache/commons/io/input/AutoCloseInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 79
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    new-instance v0, Lorg/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    .line 65
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 91
    return-void
.end method
