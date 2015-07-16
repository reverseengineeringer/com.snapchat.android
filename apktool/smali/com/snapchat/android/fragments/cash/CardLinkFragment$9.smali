.class final Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CardLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    .line 169
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->requestFocus()Z

    .line 176
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->requestFocus()Z

    .line 181
    return-void
.end method
