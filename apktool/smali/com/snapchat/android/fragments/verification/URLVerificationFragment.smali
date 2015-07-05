.class public Lcom/snapchat/android/fragments/verification/URLVerificationFragment;
.super Lcom/snapchat/android/fragments/settings/WebFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/verification/URLVerificationFragment$a;,
        Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$a;

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>()V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)V
    .locals 2

    .prologue
    const v0, 0x7f0a03c3

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;)V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->e:Z

    return p1
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->f:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$a;

    if-eqz v0, :cond_0

    .line 77
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->e:Z

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->T()V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$a;->a()V

    .line 89
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$a;

    .line 90
    return-void

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d:Z

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->U()V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$a;->b()V

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->V()V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 34
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 35
    const-string v1, "success_url"

    const-string v2, "https://support.snapchat.com/success"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    const-string v1, "failure_url"

    const-string v2, "https://support.snapchat.com/failure"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    const-string v1, "client"

    const-string v2, "chartreuse"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 38
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->f:Ljava/lang/String;

    const-string v2, "CASH-LOG: Setting the URL to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-super {p0, v0}, Lcom/snapchat/android/fragments/settings/WebFragment;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->n()V

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->n()V

    .line 66
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const v0, 0x7f0400af

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->mFragmentLayout:Landroid/view/View;

    .line 46
    invoke-virtual {p0, p3}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;-><init>(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method
