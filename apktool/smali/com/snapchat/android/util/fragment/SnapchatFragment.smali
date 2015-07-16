.class public abstract Lcom/snapchat/android/util/fragment/SnapchatFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lbga;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/fragment/SnapchatFragment$a;
    }
.end annotation


# static fields
.field public static final ARG_KEY_HIDE_ACTION_BAR:Ljava/lang/String; = "hide_action_bar"

.field public static final ARG_KEY_PAGE_INDEX:Ljava/lang/String; = "page_index"

.field private static final TAG:Ljava/lang/String; = "SnapchatFragment"


# instance fields
.field public mAreLargeUiUpdatesEnabled:Z

.field private final mDownloadManager:Lalw;

.field public mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

.field public mFragmentLayout:Landroid/view/View;

.field public mIsVisible:Z

.field private final mLifecycleAnalytics:Lnw;

.field protected mPageIndex:I

.field private final mSetFragmentVisibleHandler:Landroid/os/Handler;

.field public final mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v1

    invoke-static {}, Lnw;->a()Lnw;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v3}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>(Landroid/os/Handler;Lalw;Lnw;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 69
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lalw;Lnw;Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mPageIndex:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mAreLargeUiUpdatesEnabled:Z

    .line 90
    iput-object p1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mSetFragmentVisibleHandler:Landroid/os/Handler;

    .line 91
    iput-object p2, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mDownloadManager:Lalw;

    .line 92
    iput-object p3, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mLifecycleAnalytics:Lnw;

    .line 93
    iput-object p4, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v1

    invoke-static {}, Lnw;->a()Lnw;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>(Landroid/os/Handler;Lalw;Lnw;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/fragment/SnapchatFragment;)Lnw;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mLifecycleAnalytics:Lnw;

    return-object v0
.end method


# virtual methods
.method public final I()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mIsVisible:Z

    return v0
.end method

.method public final J()Landroid/view/Window;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public final K()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->J()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 134
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/window/WindowConfiguration;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 333
    return-void
.end method

.method public b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mAreLargeUiUpdatesEnabled:Z

    .line 302
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 235
    invoke-virtual {v3, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 236
    instance-of v4, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    if-eqz v4, :cond_0

    .line 237
    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 238
    invoke-virtual {v3, p1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 243
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/window/WindowConfiguration;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 387
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->k()Lamt;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdb;

    invoke-direct {v1}, Lbdb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 391
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public e_()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 183
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public final f(Z)V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->h_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->setUserVisibleHint(Z)V

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mSetFragmentVisibleHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mIsVisible:Z

    if-eq v0, p1, :cond_2

    .line 203
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 225
    :cond_2
    :goto_0
    return-void

    .line 209
    :cond_3
    iput-boolean p1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mIsVisible:Z

    .line 211
    if-eqz p1, :cond_4

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mDownloadManager:Lalw;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->h()Lalv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalw;->a(Lalv;)V

    .line 217
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->c()V

    .line 219
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    goto :goto_0
.end method

.method public f_()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public h()Lalv;
    .locals 4

    .prologue
    .line 275
    new-instance v0, Lalv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lalv;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public h_()Z
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public j_()Z
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public k()Lamt;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    instance-of v0, p1, Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    iput-object p1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    .line 102
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const-string v1, "page_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mPageIndex:I

    .line 117
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 401
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 280
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 281
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->J()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/window/WindowConfiguration;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v1, v0, Lcom/snapchat/android/ui/window/WindowConfiguration;->a:Landroid/view/Window;

    iput-object v2, v0, Lcom/snapchat/android/ui/window/WindowConfiguration;->b:Landroid/view/View;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/window/WindowConfiguration;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 285
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    iget v1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mPageIndex:I

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/LandingPageActivity;->a(ILcom/snapchat/android/util/fragment/SnapchatFragment;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mSetFragmentVisibleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    :cond_1
    return-void

    .line 285
    :cond_2
    instance-of v0, v0, Lcom/snapchat/android/SnapkidzHomeActivity;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y_()J
    .locals 2

    .prologue
    .line 438
    const-wide/16 v0, -0x1

    return-wide v0
.end method
