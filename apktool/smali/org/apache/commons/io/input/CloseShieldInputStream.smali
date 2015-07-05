.class public Lorg/apache/commons/io/input/CloseShieldInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/CloseShieldInputStream;->in:Ljava/io/InputStream;

    .line 51
    return-void
.end method
