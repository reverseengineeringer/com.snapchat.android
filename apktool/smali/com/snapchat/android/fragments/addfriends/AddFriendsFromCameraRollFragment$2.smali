.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 61
    return-void
.end method
