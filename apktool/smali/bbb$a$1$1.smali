.class final Lbbb$a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbb$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbbb$a$1;

.field final synthetic val$enqueueTime:J


# direct methods
.method constructor <init>(Lbbb$a$1;J)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lbbb$a$1$1;->this$1:Lbbb$a$1;

    iput-wide p2, p0, Lbbb$a$1$1;->val$enqueueTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    iget-object v2, p0, Lbbb$a$1$1;->this$1:Lbbb$a$1;

    iget-object v2, v2, Lbbb$a$1;->val$uiLatencyAggregator:Lbba;

    iget-wide v4, p0, Lbbb$a$1$1;->val$enqueueTime:J

    sub-long/2addr v0, v4

    invoke-interface {v2, v0, v1}, Lbba;->a(J)V

    .line 120
    return-void
.end method
