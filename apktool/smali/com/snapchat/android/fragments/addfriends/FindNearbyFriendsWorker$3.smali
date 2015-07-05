.class final Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

.field final synthetic b:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$3;->b:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$3;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$3;->b:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$3;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V

    .line 139
    return-void
.end method
