.class final Lcom/snapchat/android/fragments/cash/CardLinkFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a()V
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
    .line 298
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$3;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$3;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z

    .line 302
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$3;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$3;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 306
    :cond_0
    return-void
.end method
