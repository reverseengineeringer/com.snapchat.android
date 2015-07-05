.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 280
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 283
    if-eqz p2, :cond_0

    .line 290
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lavh;->g(Landroid/content/Context;)V

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)I

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lafa;->j:Z

    .line 294
    :cond_0
    return-void
.end method
