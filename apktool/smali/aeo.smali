.class public final Laeo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laeo$a;
    }
.end annotation


# instance fields
.field private final a:Laeo$a;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Laeo$a;)V
    .locals 1
    .param p1    # Laeo$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Laeo;->c:I

    .line 38
    iput-object p1, p0, Laeo;->a:Laeo$a;

    .line 39
    return-void
.end method


# virtual methods
.method public final processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 43
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 52
    iget v1, p0, Laeo;->b:I

    if-ne v1, v0, :cond_2

    .line 53
    iget v0, p0, Laeo;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laeo;->c:I

    .line 54
    iget v0, p0, Laeo;->c:I

    if-ne v0, v2, :cond_0

    .line 56
    iget-object v0, p0, Laeo;->a:Laeo$a;

    invoke-interface {v0}, Laeo$a;->a()V

    goto :goto_0

    .line 59
    :cond_2
    iget v1, p0, Laeo;->c:I

    if-lt v1, v2, :cond_3

    .line 60
    iget-object v1, p0, Laeo;->a:Laeo$a;

    invoke-interface {v1}, Laeo$a;->b()V

    .line 62
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Laeo;->c:I

    .line 63
    iput v0, p0, Laeo;->b:I

    goto :goto_0
.end method
