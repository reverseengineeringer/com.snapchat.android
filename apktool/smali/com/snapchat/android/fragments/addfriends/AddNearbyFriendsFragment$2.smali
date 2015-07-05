.class final Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)Lajx;

    invoke-static {}, Lajx;->aV()V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
