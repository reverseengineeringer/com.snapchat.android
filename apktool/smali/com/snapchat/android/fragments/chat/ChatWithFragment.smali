.class public Lcom/snapchat/android/fragments/chat/ChatWithFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lafy$a;


# instance fields
.field protected final a:Landroid/widget/AdapterView$OnItemClickListener;

.field protected final b:Landroid/widget/AbsListView$OnScrollListener;

.field protected final c:Landroid/text/TextWatcher;

.field private d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private e:Lafy;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;-><init>(Ljavax/inject/Provider;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 124
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$3;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 138
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$4;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 152
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c:Landroid/text/TextWatcher;

    .line 52
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->i:Ljavax/inject/Provider;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Lafy;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->e:Lafy;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 68
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lavh;->g(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 57
    const v0, 0x7f040034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->mFragmentLayout:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lajv;->k()Ljava/util/List;

    move-result-object v0

    :goto_0
    new-instance v1, Lafy;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/model/Friend$a;

    invoke-direct {v3}, Lcom/snapchat/android/model/Friend$a;-><init>()V

    invoke-direct {v1, v2, v0, v3, p0}, Lafy;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/model/Friend$a;Lafy$a;)V

    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->e:Lafy;

    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->e:Lafy;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->b:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->g:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatWithFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->h:Landroid/view/View;

    const v0, 0x7f0a014c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatWithFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$2;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
