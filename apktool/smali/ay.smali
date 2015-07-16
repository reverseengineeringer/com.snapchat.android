.class public final Lay;
.super Lfd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "udta"

    invoke-direct {p0, v0}, Lfd;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lfd;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 49
    return-void
.end method

.method public final parse(Lfg;Ljava/nio/ByteBuffer;JLal;)V
    .locals 1

    .prologue
    .line 43
    invoke-super/range {p0 .. p5}, Lfd;->parse(Lfg;Ljava/nio/ByteBuffer;JLal;)V

    .line 44
    return-void
.end method
