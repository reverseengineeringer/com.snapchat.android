.class final Laoz$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoz$a;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnErrorListener;

.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Laoz$a;


# direct methods
.method constructor <init>(Laoz$a;Landroid/media/MediaPlayer$OnErrorListener;Landroid/media/MediaPlayer;II)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Laoz$a$3;->e:Laoz$a;

    iput-object p2, p0, Laoz$a$3;->a:Landroid/media/MediaPlayer$OnErrorListener;

    iput-object p3, p0, Laoz$a$3;->b:Landroid/media/MediaPlayer;

    iput p4, p0, Laoz$a$3;->c:I

    iput p5, p0, Laoz$a$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Laoz$a$3;->a:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Laoz$a$3;->b:Landroid/media/MediaPlayer;

    iget v2, p0, Laoz$a$3;->c:I

    iget v3, p0, Laoz$a$3;->d:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 373
    return-void
.end method
