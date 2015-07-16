.class public Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->G()V

    .line 47
    sget-object v0, Lkf;->BACK_BUTTON:Lkf;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->a(Lkf;)V

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected final m()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    const-string v1, "contextIsAdressBook"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 30
    :cond_0
    return-void

    .line 26
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_SEARCH_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->F()V

    .line 37
    return-object v0
.end method
