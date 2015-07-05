.class public final Lcom/snapchat/android/util/FriendSectionizer$f;
.super Lcom/snapchat/android/util/FriendSectionizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/FriendSectionizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
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
    .line 210
    invoke-direct {p0}, Lcom/snapchat/android/util/FriendSectionizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 2

    .prologue
    .line 210
    check-cast p1, Lcom/snapchat/android/model/Friend;

    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0
.end method
