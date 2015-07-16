.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->d()V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SNAPCODE_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    sget-object v1, Lkf;->OTHER:Lkf;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a(Lkf;)V

    .line 161
    return-void
.end method
