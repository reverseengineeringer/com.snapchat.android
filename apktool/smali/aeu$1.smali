.class final Laeu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laww;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeu;


# direct methods
.method constructor <init>(Laeu;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Laeu$1;->a:Laeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lawm;Lawv;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Laeu$1;->a:Laeu;

    iget-object v0, v0, Laeu;->j:Lafq;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Laeu$1;->a:Laeu;

    iget-object v0, v0, Laeu;->j:Lafq;

    invoke-interface {v0}, Lafq;->b()V

    .line 162
    :cond_0
    iget-object v0, p0, Laeu$1;->a:Laeu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laeu;->a:Z

    .line 163
    return-void
.end method
