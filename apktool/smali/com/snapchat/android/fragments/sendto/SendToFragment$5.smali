.class final Lcom/snapchat/android/fragments/sendto/SendToFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/sendto/SendToFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/sendto/SendToFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$5;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$5;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$5;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$5;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lno;

    move-result-object v0

    const-string v1, "add_friend"

    invoke-virtual {v0, v1}, Lno;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lno;->c()V

    .line 322
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;-><init>()V

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 323
    return-void
.end method
