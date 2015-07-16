.class public final Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$a;
.super Lcom/snapchat/android/util/FriendSectionizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;
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


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/snapchat/android/util/FriendSectionizer;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$a;->a:Ljavax/inject/Provider;

    .line 48
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/snapchat/android/model/Friend;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BEST_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lakp;->mBests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_1
.end method
