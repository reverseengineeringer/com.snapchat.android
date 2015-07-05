.class public final Lbdn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mMediabryo:Laim;

.field public final mShouldGoToSendTo:Z


# direct methods
.method public constructor <init>(Laim;)V
    .locals 1
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbdn;-><init>(Laim;Z)V

    .line 14
    return-void
.end method

.method public constructor <init>(Laim;Z)V
    .locals 1
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lbdn;->mMediabryo:Laim;

    .line 21
    iput-boolean p2, p0, Lbdn;->mShouldGoToSendTo:Z

    .line 22
    return-void
.end method
