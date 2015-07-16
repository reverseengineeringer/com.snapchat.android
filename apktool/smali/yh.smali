.class public final Lyh;
.super Lyi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lyi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/CamcorderProfile;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    return v0
.end method

.method public final a()J
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, -0x1

    return-wide v0
.end method
