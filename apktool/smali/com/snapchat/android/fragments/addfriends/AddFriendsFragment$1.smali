.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 3

    .prologue
    .line 142
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 151
    :cond_0
    return-void
.end method
