.class final Lcom/snapchat/android/service/SnapchatService$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/service/SnapchatService$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/RuntimeException;

.field final synthetic b:Lcom/snapchat/android/service/SnapchatService$b;


# direct methods
.method constructor <init>(Lcom/snapchat/android/service/SnapchatService$b;Ljava/lang/RuntimeException;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/snapchat/android/service/SnapchatService$b$1;->b:Lcom/snapchat/android/service/SnapchatService$b;

    iput-object p2, p0, Lcom/snapchat/android/service/SnapchatService$b$1;->a:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$b$1;->a:Ljava/lang/RuntimeException;

    throw v0
.end method
