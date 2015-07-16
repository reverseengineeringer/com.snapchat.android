.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


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
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanh;)V
    .locals 2

    .prologue
    .line 65
    instance-of v0, p1, Lanl;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Lanl;

    .line 67
    iget-boolean v0, p1, Lanl;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lanl;->a:Lcom/snapchat/android/model/SuggestedFriendAction;

    sget-object v1, Lcom/snapchat/android/model/SuggestedFriendAction;->HIDE:Lcom/snapchat/android/model/SuggestedFriendAction;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    iget-object v1, p1, Lanl;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    .line 72
    :cond_1
    return-void
.end method
