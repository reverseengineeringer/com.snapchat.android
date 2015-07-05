.class final Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;
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
.field final synthetic a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->e(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    .line 157
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 162
    return-void
.end method
