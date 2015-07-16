.class final Lcom/snapchat/android/fragments/chat/ChatFragment$29$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$29;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$29;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$29;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$29$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$29$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$29;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$29;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(Lcom/snapchat/android/fragments/chat/ChatFragment;F)V

    .line 1206
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$29$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$29;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$29;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lze;

    move-result-object v0

    invoke-virtual {v0}, Lze;->a()V

    .line 1207
    return-void
.end method
