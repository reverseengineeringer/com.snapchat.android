.class Lcom/flurry/sdk/ei$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ei;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ei;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ei;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ek;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {v0}, Lcom/flurry/sdk/ei;->d(Lcom/flurry/sdk/ei;)V

    .line 89
    return-void
.end method

.method public a(Lcom/flurry/sdk/ek;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/flurry/sdk/ek;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {v0}, Lcom/flurry/sdk/ei;->c(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {v1}, Lcom/flurry/sdk/ei;->c(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/flurry/sdk/eu;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {v0}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {v0}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/flurry/sdk/eu;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method
