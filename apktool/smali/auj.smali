.class public final Lauj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mFriendExistsTaskInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lqh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lauj;->mFriendExistsTaskInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 32
    sget-object v0, Lauj;->mFriendExistsTaskInstanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh;

    if-nez v0, :cond_0

    new-instance v0, Lqh;

    invoke-direct {v0, p0}, Lqh;-><init>(Lcom/snapchat/android/model/Friend;)V

    sget-object v1, Lauj;->mFriendExistsTaskInstanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lqh;->execute()V

    .line 35
    :goto_0
    return-object p0

    .line 32
    :cond_0
    iget-object p0, v0, Lqh;->mFriend:Lcom/snapchat/android/model/Friend;

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->DOES_NOT_EXIST:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    goto :goto_0
.end method
