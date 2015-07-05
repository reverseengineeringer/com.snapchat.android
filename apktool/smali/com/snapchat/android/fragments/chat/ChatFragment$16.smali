.class final Lcom/snapchat/android/fragments/chat/ChatFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

.field final synthetic b:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 0

    .prologue
    .line 2472
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$16;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$16;->a:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2475
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$16$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$16$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$16;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 2483
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->y()Z

    .line 2484
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$16;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    .line 2487
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2488
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$16;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2493
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$16;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->D(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    .line 2494
    return-void
.end method
