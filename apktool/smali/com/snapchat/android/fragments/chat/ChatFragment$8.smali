.class final Lcom/snapchat/android/fragments/chat/ChatFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->G()V
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
    .line 1419
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ChatCameraButton$a;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->setTouchSubscriber(Lcom/snapchat/android/ui/ChatCameraButton$a;)V

    .line 1423
    return-void
.end method
