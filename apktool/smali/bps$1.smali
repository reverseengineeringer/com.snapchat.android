.class public final Lbps$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbps;


# direct methods
.method public constructor <init>(Lbps;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lbps$1;->a:Lbps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lbps$1;->a:Lbps;

    iget-object v0, v0, Lbps;->n:Lbps$c;

    iget-object v1, v0, Lbps$c;->a:Lbps;

    iget-object v1, v1, Lbps;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method
