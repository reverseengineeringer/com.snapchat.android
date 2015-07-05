.class final Lalx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalx;


# direct methods
.method constructor <init>(Lalx;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lalx$1;->a:Lalx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lalx$1;->a:Lalx;

    invoke-virtual {v0}, Lalx;->b()V

    .line 277
    iget-object v0, p0, Lalx$1;->a:Lalx;

    invoke-static {v0}, Lalx;->a(Lalx;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcb;

    invoke-direct {v1}, Lbcb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 278
    return-void
.end method
