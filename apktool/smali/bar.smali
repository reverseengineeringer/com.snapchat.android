.class public final Lbar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mShouldDisplayHereTooltip:Z

.field public mShouldReturnToChatFragment:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbar;->mShouldReturnToChatFragment:Z

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbar;->mShouldDisplayHereTooltip:Z

    .line 8
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbar;->mShouldReturnToChatFragment:Z

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbar;->mShouldDisplayHereTooltip:Z

    .line 11
    iput-boolean p1, p0, Lbar;->mShouldReturnToChatFragment:Z

    .line 12
    iput-boolean p2, p0, Lbar;->mShouldDisplayHereTooltip:Z

    .line 13
    return-void
.end method
