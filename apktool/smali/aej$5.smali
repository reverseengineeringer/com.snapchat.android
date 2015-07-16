.class final Laej$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laej;


# direct methods
.method constructor <init>(Laej;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Laej$5;->a:Laej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Laej$5;->a:Laej;

    invoke-static {v0}, Laej;->a(Laej;)V

    .line 779
    iget-object v0, p0, Laej$5;->a:Laej;

    invoke-static {v0}, Laej;->b(Laej;)V

    .line 780
    return-void
.end method
