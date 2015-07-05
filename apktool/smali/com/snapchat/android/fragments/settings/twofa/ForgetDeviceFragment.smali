.class public Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lagq$a;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Lagq$a;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lagq;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Laol;

.field private j:Laok;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;-><init>(Laol;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Laol;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Lcf;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->h:Ljava/util/Set;

    .line 52
    new-instance v0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->j:Laok;

    .line 73
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->i:Laol;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->h:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;Lanc$c;)V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-boolean v0, p1, Lanc$c;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "twoFAForgetDevice"

    iget-object v1, p1, Lanc$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$4;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c02b5

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lapz;->show()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->i()V

    return-void

    :cond_1
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v3, p1, Lanc$c;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;)Laol;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->i:Laol;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->g:Lagq;

    invoke-virtual {v0}, Lagq;->getCount()I

    move-result v0

    .line 135
    packed-switch v0, :pswitch_data_0

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->c:Landroid/widget/TextView;

    const v1, 0x7f0c02b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->c:Landroid/widget/TextView;

    const v1, 0x7f0c02b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->c:Landroid/widget/TextView;

    const v1, 0x7f0c02af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 182
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->h:Ljava/util/Set;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->i:Laol;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "twoFAForgetOneDevice"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Laol;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 188
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 196
    :goto_0
    return-object v0

    .line 190
    :pswitch_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/content/SnapchatProvider;->d:Landroid/net/Uri;

    sget-object v4, Labf;->b:[Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x514
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const v0, 0x7f0400c1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->mFragmentLayout:Landroid/view/View;

    .line 80
    const v0, 0x7f0a03ff

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0400c3

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->e:Landroid/view/View;

    .line 88
    const v0, 0x7f0400c2

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->f:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->f:Landroid/view/View;

    const v1, 0x7f0a0403

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->a:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->f:Landroid/view/View;

    const v1, 0x7f0a0404

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->b:Landroid/widget/ProgressBar;

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->e:Landroid/view/View;

    const v1, 0x7f0a0405

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->c:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0a0402

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->d:Landroid/widget/ListView;

    .line 111
    new-instance v0, Lagq;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lagq;-><init>(Landroid/content/Context;Lagq$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->g:Lagq;

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->g:Lagq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x514

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader$71be8de6(ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->g:Lagq;

    invoke-virtual {v0, p2}, Lagq;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->i()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x514
        :pswitch_0
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->i:Laol;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->j:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->i:Laol;

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->j:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 124
    return-void
.end method
