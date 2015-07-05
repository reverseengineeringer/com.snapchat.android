.class final Lcom/snapchat/android/fragments/chat/ChatFragment$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$18;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$18;)V
    .locals 0

    .prologue
    .line 2610
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$18$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$18$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$18;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->I(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2614
    return-void
.end method
