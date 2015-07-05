.class public Lorg/apache/commons/io/output/BrokenOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final exception:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken output stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/BrokenOutputStream;-><init>(Ljava/io/IOException;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exception:Ljava/io/IOException;

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method
