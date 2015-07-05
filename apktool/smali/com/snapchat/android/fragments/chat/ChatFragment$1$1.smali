.class final Lcom/snapchat/android/fragments/chat/ChatFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$1;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    .line 619
    return-void
.end method
