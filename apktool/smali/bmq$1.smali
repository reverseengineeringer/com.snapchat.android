.class final Lbmq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmq;


# direct methods
.method constructor <init>(Lbmq;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lbmq$1;->a:Lbmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lbmq$1;->a:Lbmq;

    invoke-static {v0}, Lbmq;->a(Lbmq;)V

    .line 98
    return-void
.end method
