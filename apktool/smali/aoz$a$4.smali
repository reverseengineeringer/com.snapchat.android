.class final Laoz$a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoz$a;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnInfoListener;

.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Laoz$a;


# direct methods
.method constructor <init>(Laoz$a;Landroid/media/MediaPlayer$OnInfoListener;Landroid/media/MediaPlayer;II)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Laoz$a$4;->e:Laoz$a;

    iput-object p2, p0, Laoz$a$4;->a:Landroid/media/MediaPlayer$OnInfoListener;

    iput-object p3, p0, Laoz$a$4;->b:Landroid/media/MediaPlayer;

    iput p4, p0, Laoz$a$4;->c:I

    iput p5, p0, Laoz$a$4;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 386
    iget-object v0, p0, Laoz$a$4;->a:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object v1, p0, Laoz$a$4;->b:Landroid/media/MediaPlayer;

    iget v2, p0, Laoz$a$4;->c:I

    iget v3, p0, Laoz$a$4;->d:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 387
    return-void
.end method
