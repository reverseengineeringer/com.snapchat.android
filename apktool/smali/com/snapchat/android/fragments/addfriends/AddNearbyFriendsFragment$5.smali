.class final Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;->k()Lamt;
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
    .line 395
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment$5;->a:Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamu$a;)Z
    .locals 2

    .prologue
    .line 407
    sget-object v0, Lamu;->g:Ljava/util/Set;

    iget-object v1, p1, Lamu$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lamu$a;)Z
    .locals 2

    .prologue
    .line 398
    iget-object v0, p1, Lamu$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ADDFRIEND:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v0, v1, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dropping non-silent add friend notification for user: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lamu$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
