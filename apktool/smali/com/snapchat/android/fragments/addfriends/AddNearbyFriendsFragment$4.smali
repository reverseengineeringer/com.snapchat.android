.class final Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 313
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->b(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)Lakr;

    invoke-static {}, Lakr;->aS()V

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->c(Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;)Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a()V

    .line 318
    return-void
.end method
