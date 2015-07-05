.class final Lcom/snapchat/android/fragments/sendto/SendToFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/sendto/SendToFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/sendto/SendToFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$10;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$10;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lno;

    move-result-object v0

    invoke-virtual {v0}, Lno;->d()V

    .line 376
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$10;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 377
    return-void
.end method
