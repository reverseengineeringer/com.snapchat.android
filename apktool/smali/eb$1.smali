.class final Leb$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    const-string v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public final write(I)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public final write([B)V
    .locals 0

    .prologue
    .line 508
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method

.method public final write([BII)V
    .locals 0

    .prologue
    .line 512
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method
