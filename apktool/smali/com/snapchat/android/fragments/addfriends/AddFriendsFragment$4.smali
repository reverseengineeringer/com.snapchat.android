.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 261
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)I

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laga;->k:Z

    .line 268
    return-void
.end method
