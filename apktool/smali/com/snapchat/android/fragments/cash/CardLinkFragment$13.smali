.class final Lcom/snapchat/android/fragments/cash/CardLinkFragment$13;
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
    .line 232
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$13;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$13;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    .line 236
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$13;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z

    .line 241
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$13;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->requestFocus()Z

    .line 246
    return-void
.end method
