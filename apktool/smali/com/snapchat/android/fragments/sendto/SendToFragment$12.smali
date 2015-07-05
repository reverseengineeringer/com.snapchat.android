.class final Lcom/snapchat/android/fragments/sendto/SendToFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laqa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/sendto/SendToFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lajc;

.field final synthetic b:Lcom/snapchat/android/fragments/sendto/SendToFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;Lajc;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;->b:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;->a:Lajc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 486
    if-nez p1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;->b:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;->a:Lajc;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;->b:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lagg;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 489
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$12;->b:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i()V

    .line 491
    :cond_0
    return-void
.end method
