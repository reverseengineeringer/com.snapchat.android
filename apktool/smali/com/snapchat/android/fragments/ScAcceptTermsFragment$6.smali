.class final Lcom/snapchat/android/fragments/ScAcceptTermsFragment$6;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/ScAcceptTermsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$6;->b:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 109
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/WebFragment;

    const-string v3, "https://www.snapchat.com/privacy"

    iget-object v4, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$6;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 116
    return-void
.end method
