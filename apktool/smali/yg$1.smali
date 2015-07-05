.class final Lyg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lyg;


# direct methods
.method constructor <init>(Lyg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lyg$1;->b:Lyg;

    iput-object p2, p0, Lyg$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lyg$1;->b:Lyg;

    iget-object v0, v0, Lyg;->b:Lyh;

    iget-object v1, p0, Lyg$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyh;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lyg$1;->b:Lyg;

    iget-object v0, v0, Lyg;->d:Ltd;

    iget-object v1, p0, Lyg$1;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltd;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 542
    :cond_0
    return-void
.end method
