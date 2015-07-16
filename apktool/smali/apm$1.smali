.class final Lapm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapm;


# direct methods
.method constructor <init>(Lapm;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lapm$1;->a:Lapm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Lorg/lucasr/twowayview/TwoWayView;III)V
    .locals 3

    .prologue
    .line 161
    add-int v0, p2, p3

    .line 162
    iget-object v1, p0, Lapm$1;->a:Lapm;

    iget v1, v1, Lapm;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lapm$1;->a:Lapm;

    iget v1, v1, Lapm;->f:I

    if-ne v1, v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lapm$1;->a:Lapm;

    iput v0, v1, Lapm;->f:I

    .line 169
    iget-object v0, p0, Lapm$1;->a:Lapm;

    invoke-virtual {v0}, Lapm;->m()V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Lorg/lucasr/twowayview/TwoWayView;I)V
    .locals 1

    .prologue
    .line 154
    if-eqz p2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lapm$1;->a:Lapm;

    invoke-virtual {v0}, Lapm;->d()V

    goto :goto_0
.end method
