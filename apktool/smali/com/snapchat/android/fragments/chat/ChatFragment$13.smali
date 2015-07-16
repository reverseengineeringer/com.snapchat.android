.class final Lcom/snapchat/android/fragments/chat/ChatFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 2062
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->z(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    .line 2066
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Z

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->c()V

    .line 2068
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->A(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2069
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lze;

    move-result-object v0

    invoke-virtual {v0}, Lze;->a()V

    .line 2071
    :cond_0
    return-void
.end method
