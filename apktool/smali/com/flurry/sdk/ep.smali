.class public Lcom/flurry/sdk/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/eq;


# instance fields
.field private final a:Lcom/flurry/sdk/eq;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/eq;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/dj;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dj;)V

    .line 56
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dj;Landroid/content/Context;)V

    .line 35
    :cond_0
    return-void
.end method

.method public b(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->b(Lcom/flurry/sdk/dj;Landroid/content/Context;)V

    .line 42
    :cond_0
    return-void
.end method

.method public c(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->c(Lcom/flurry/sdk/dj;Landroid/content/Context;)V

    .line 49
    :cond_0
    return-void
.end method
