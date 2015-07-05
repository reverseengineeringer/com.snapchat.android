.class public final Lbcw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAction:Lcom/snapchat/android/model/FriendAction;
    .annotation build Lcgb;
    .end annotation
.end field

.field public mFriend:Lcom/snapchat/android/model/Friend;
    .annotation build Lcgc;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    iput-object v0, p0, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/FriendAction;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    iput-object v0, p0, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    .line 15
    iput-object p1, p0, Lbcw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 16
    iput-object p2, p0, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    .line 17
    return-void
.end method
