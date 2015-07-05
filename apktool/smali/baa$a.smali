.class public final Lbaa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final MAX_TIMES:I = 0xfa

.field private static final SLEEP_DURATION_MS:J = 0x14L


# instance fields
.field final synthetic this$0:Lbaa;


# direct methods
.method protected constructor <init>(Lbaa;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lbaa$a;->this$0:Lbaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 87
    move v0, v1

    .line 89
    :goto_0
    iget-object v2, p0, Lbaa$a;->this$0:Lbaa;

    invoke-static {v2}, Lbaa;->a(Lbaa;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xfa

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lbaa$a;->this$0:Lbaa;

    invoke-static {v2}, Lbaa;->b(Lbaa;)Lbab;

    move-result-object v2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput v1, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "CURRENT_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lbab;->sendMessage(Landroid/os/Message;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Lbgp;->a(J)V

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method
