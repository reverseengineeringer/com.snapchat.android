.class final Laxq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laxq;


# direct methods
.method constructor <init>(Laxq;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Laxq$1;->this$0:Laxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Laxq$1;->this$0:Laxq;

    invoke-virtual {v0}, Laxq;->a()V

    .line 76
    return-void
.end method
