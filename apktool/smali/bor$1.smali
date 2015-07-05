.class public final Lbor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbor;


# direct methods
.method public constructor <init>(Lbor;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lbor$1;->a:Lbor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lbor$1;->a:Lbor;

    iget-object v0, v0, Lbor;->n:Lbor$c;

    iget-object v1, v0, Lbor$c;->a:Lbor;

    iget-object v1, v1, Lbor;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method
