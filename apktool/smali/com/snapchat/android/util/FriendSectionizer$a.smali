.class public final Lcom/snapchat/android/util/FriendSectionizer$a;
.super Lcom/snapchat/android/util/FriendSectionizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/FriendSectionizer;
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
    .line 144
    invoke-direct {p0}, Lcom/snapchat/android/util/FriendSectionizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 2

    .prologue
    .line 144
    check-cast p1, Lcom/snapchat/android/model/Friend;

    if-nez p2, :cond_0

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->INCOMING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->FRIENDS_WHO_ADDED_ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v1, :cond_4

    :cond_3
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_FRIENDS:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0
.end method
