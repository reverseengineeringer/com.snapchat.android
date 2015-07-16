.class final Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/verification/URLVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;B)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;-><init>(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)V

    .line 126
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)V

    .line 106
    invoke-static {}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->m()Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)Z

    .line 108
    const-string v0, "https://support.snapchat.com/success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)Z

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->c(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)Z

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;)Z

    move-result v0

    return v0

    .line 111
    :cond_2
    const-string v0, "https://support.snapchat.com/failure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)Z

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->c(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)Z

    goto :goto_0
.end method
