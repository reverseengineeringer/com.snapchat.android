.class public final Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;
    }
.end annotation


# instance fields
.field private mError:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field public mUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->mUUID:Ljava/util/UUID;

    .line 33
    if-gtz p2, :cond_1

    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    invoke-virtual {v0}, Lama;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NO_INTERNET_CONNECTION:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->mError:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    .line 34
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->HAS_INTERNET_BUT_CONNECTION_FAIL:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    goto :goto_0

    :cond_1
    const/16 v0, 0x191

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->UNAUTHORIZED:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    goto :goto_0

    :cond_2
    const/16 v0, 0x190

    if-lt p2, v0, :cond_3

    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->SERVER_FAILURE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NONE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->mUUID:Ljava/util/UUID;

    .line 28
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->mError:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    .line 29
    return-void
.end method
