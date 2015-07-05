.class public Lcom/snapchat/android/ui/LinkTextViewUtils$CustomURLSpan;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/LinkTextViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomURLSpan"
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/ui/LinkTextViewUtils$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/ui/LinkTextViewUtils$a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Lcom/snapchat/android/ui/LinkTextViewUtils$CustomURLSpan;->a:Lcom/snapchat/android/ui/LinkTextViewUtils$a;

    .line 57
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/ui/LinkTextViewUtils$CustomURLSpan;->a:Lcom/snapchat/android/ui/LinkTextViewUtils$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/LinkTextViewUtils$a;->a()V

    .line 68
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 63
    return-void
.end method
