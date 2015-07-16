.class final Lcom/snapchat/android/fragments/chat/ChatFragment$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$15;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$15;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$15;)V
    .locals 0

    .prologue
    .line 2518
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$15;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2522
    return-void
.end method
