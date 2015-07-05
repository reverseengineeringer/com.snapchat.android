.class public Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lagn$a;


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lagn;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->h:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Lagn;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lagn;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->f:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/Friend;)Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lagn;

    invoke-virtual {v0}, Lagn;->notifyDataSetChanged()V

    .line 152
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lagn;

    invoke-virtual {v0}, Lagn;->notifyDataSetChanged()V

    .line 157
    return-void
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->h:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    .line 163
    const/4 v0, 0x1

    .line 165
    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    const v0, 0x7f040043

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->mFragmentLayout:Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->h:Landroid/view/inputmethod/InputMethodManager;

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    iget-object v1, v1, Lajv;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 54
    new-instance v0, Lagn;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v2

    invoke-virtual {v2}, Lajv;->j()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/model/Friend$a;

    invoke-direct {v3}, Lcom/snapchat/android/model/Friend$a;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Lagn;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/snapchat/android/model/Friend$a;Lagn$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lagn;

    .line 58
    const v0, 0x7f0a0193

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lagn;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    new-instance v1, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setTextFilterEnabled(Z)V

    const v1, 0x7f0a018f

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0191

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0066

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d:Landroid/view/View;

    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->f:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0190

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    iput-object v0, v1, Lajv;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    .line 141
    new-instance v0, Lpa;

    const-string v1, "updateStoryPrivacy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CUSTOM"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lpa;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpa;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    return-void
.end method
