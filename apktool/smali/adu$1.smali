.class final Ladu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladu;


# direct methods
.method constructor <init>(Ladu;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Ladu$1;->a:Ladu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Ladu$1;->a:Ladu;

    iget-object v0, v0, Ladu;->j:Laeq;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Ladu$1;->a:Ladu;

    iget-object v0, v0, Ladu;->j:Laeq;

    invoke-interface {v0}, Laeq;->b()V

    .line 162
    :cond_0
    iget-object v0, p0, Ladu$1;->a:Ladu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ladu;->a:Z

    .line 163
    return-void
.end method
