.class final Lapv$a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapv$a;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lapv$a;


# direct methods
.method constructor <init>(Lapv$a;Landroid/media/MediaPlayer$OnVideoSizeChangedListener;Landroid/media/MediaPlayer;II)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lapv$a$8;->e:Lapv$a;

    iput-object p2, p0, Lapv$a$8;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    iput-object p3, p0, Lapv$a$8;->b:Landroid/media/MediaPlayer;

    iput p4, p0, Lapv$a$8;->c:I

    iput p5, p0, Lapv$a$8;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 439
    iget-object v0, p0, Lapv$a$8;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    iget-object v1, p0, Lapv$a$8;->b:Landroid/media/MediaPlayer;

    iget v2, p0, Lapv$a$8;->c:I

    iget v3, p0, Lapv$a$8;->d:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 440
    return-void
.end method
