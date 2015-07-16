.class final Lvi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvi;


# direct methods
.method constructor <init>(Lvi;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lvi$3;->a:Lvi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lvi$3;->a:Lvi;

    iget-object v0, v0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 429
    return-void
.end method
