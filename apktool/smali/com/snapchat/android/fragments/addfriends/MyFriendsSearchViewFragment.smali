.class public Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;
.super Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->G()V

    .line 34
    sget-object v0, Lkf;->BACK_BUTTON:Lkf;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->a(Lkf;)V

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method protected final m()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_FRIENDS_SEARCH_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 22
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->F()V

    .line 24
    return-object v0
.end method
