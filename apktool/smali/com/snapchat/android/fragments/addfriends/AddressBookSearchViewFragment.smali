.class public Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->G()V

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method protected final m()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_SEARCH_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 21
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 22
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;->F()V

    .line 23
    return-object v0
.end method
