.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 2

    .prologue
    .line 62
    instance-of v0, p1, Lamo;

    if-eqz v0, :cond_1

    .line 63
    check-cast p1, Lamo;

    .line 64
    iget-boolean v0, p1, Lamo;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lamo;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    sget-object v1, Lcom/snapchat/android/model/SuggestedFriendAction;->HIDE:Lcom/snapchat/android/model/SuggestedFriendAction;

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    iget-object v1, p1, Lamo;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    .line 69
    :cond_1
    return-void
.end method
