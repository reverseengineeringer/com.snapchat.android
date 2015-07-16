.class final Lcom/snapchat/android/fragments/chat/ChatFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$12;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$12;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbhr;

    move-result-object v0

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$12;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->setListener(Lcom/snapchat/android/ui/CashSwiperView$b;)V

    .line 1026
    return-void
.end method
