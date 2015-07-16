.class final Lzc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lzc;


# direct methods
.method constructor <init>(Lzc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lzc$1;->b:Lzc;

    iput-object p2, p0, Lzc$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lzc$1;->b:Lzc;

    iget-object v0, v0, Lzc;->b:Lzd;

    iget-object v1, p0, Lzc$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzd;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lzc$1;->b:Lzc;

    iget-object v0, v0, Lzc;->c:Ltt;

    iget-object v1, p0, Lzc$1;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltt;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 568
    :cond_0
    return-void
.end method
