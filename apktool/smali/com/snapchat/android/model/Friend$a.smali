.class public final Lcom/snapchat/android/model/Friend$a;
.super Lcom/snapchat/android/util/FriendSectionizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Friend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/FriendSectionizer",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/snapchat/android/util/FriendSectionizer;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BEST_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 521
    :goto_0
    return-object v0

    .line 514
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsRecent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->RECENT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 515
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mSelectedForNeedsLove:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NEEDS_LOVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 517
    :cond_3
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->STORIES:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 518
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->JUST_ADDED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 519
    :cond_5
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 520
    :cond_6
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BLOCKED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 521
    :cond_7
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1

    .prologue
    .line 510
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-static {p1}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    return-object v0
.end method
