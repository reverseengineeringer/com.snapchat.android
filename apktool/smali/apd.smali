.class public final Lapd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lape",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/snapchat/android/model/Friend;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
