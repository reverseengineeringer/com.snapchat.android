.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;
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
    .line 313
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 316
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m()V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    const-string v1, "contextIsAdressBook"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbev;

    sget-object v3, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v2, v3, v0}, Lbev;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 324
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "ADD_FRIENDS_FRAGMENT_SEARCH"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_0
.end method
