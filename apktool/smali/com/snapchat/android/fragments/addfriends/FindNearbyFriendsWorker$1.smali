.class final Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$1;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$1;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;->p()V

    .line 106
    return-void
.end method
